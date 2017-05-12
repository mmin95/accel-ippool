#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <syslog.h>
#include <fcntl.h>
#include <pthread.h>
#include <net/if_arp.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <errno.h>
#include <time.h>
#include <sys/uio.h>
//#include <linux/if_link.h>
//#include <linux/if_addr.h>
//#include <linux/rtnetlink.h>
#include <linux/fib_rules.h>

#include "triton.h"
#include "log.h"

#include "libnetlink.h"
#include "iputils.h"

#include "memdebug.h"

struct arg
{
	iplink_list_func func;
	void *arg;
};

static pthread_key_t rth_key;
static __thread struct rtnl_handle *rth;

static void open_rth(void)
{
	rth = _malloc(sizeof(*rth));

	if (!rth)
		return;

	memset(rth, 0, sizeof(*rth));

	if (rtnl_open(rth, 0)) {
		log_ppp_error("radius: cannot open rtnetlink\n");
		_free(rth);
		rth = NULL;
		return;
	}

	pthread_setspecific(rth_key, rth);
}

static void free_rth(void *arg)
{
	struct rtnl_handle *rth = arg;

	rtnl_close(rth);

	_free(rth);
}

static int store_nlmsg(const struct sockaddr_nl *who, struct nlmsghdr *n, void *arg)
{
	struct ifinfomsg *ifi = NLMSG_DATA(n);
	struct rtattr *tb[IFLA_MAX + 1];
	struct arg *a = arg;

	if (n->nlmsg_type != RTM_NEWLINK)
		return 0;

	if (n->nlmsg_len < NLMSG_LENGTH(sizeof(*ifi)))
		return -1;

	memset(tb, 0, sizeof(tb));
	parse_rtattr(tb, IFLA_MAX, IFLA_RTA(ifi), IFLA_PAYLOAD(n));

	if (tb[IFLA_IFNAME] == NULL)
		return 0;

	//printf("%i %s\n", ifi->ifi_index, RTA_DATA(tb[IFLA_IFNAME]));

	return a->func(ifi->ifi_index, ifi->ifi_flags, RTA_DATA(tb[IFLA_IFNAME]), a->arg);
}

int __export iplink_list(iplink_list_func func, void *arg)
{
	struct rtnl_handle rth;
	struct arg a = { .func = func, .arg = arg };

	if (rtnl_open(&rth, 0)) {
		log_emerg("iplink: cannot open rtnetlink\n");
		return -1;
	}

	if (rtnl_wilddump_request(&rth, AF_PACKET, RTM_GETLINK) < 0) {
		log_emerg("iplink: cannot send dump request\n");
		goto out_err;
	}

	if (rtnl_dump_filter(&rth, store_nlmsg, &a, NULL, NULL) < 0) {
		log_emerg("iplink: dump terminated\n");
		goto out_err;
	}

	rtnl_close(&rth);

	return 0;

out_err:
	rtnl_close(&rth);

	return -1;
}

int __export iplink_get_stats(int ifindex, struct rtnl_link_stats *stats)
{
	struct iplink_req {
		struct nlmsghdr n;
		struct ifinfomsg i;
		char buf[4096];
	} req;
	struct ifinfomsg *ifi;
	int len;
	struct rtattr *tb[IFLA_MAX + 1];

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifinfomsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK;
	req.n.nlmsg_type = RTM_GETLINK;
	req.i.ifi_family = AF_PACKET;
	req.i.ifi_index = ifindex;

	if (rtnl_talk(rth, &req.n, 0, 0, &req.n, NULL, NULL, 0) < 0)
		return -1;

	if (req.n.nlmsg_type != RTM_NEWLINK)
		return -1;

	ifi = NLMSG_DATA(&req.n);

	len = req.n.nlmsg_len;

	len -= NLMSG_LENGTH(sizeof(*ifi));
	if (len < 0)
		return -1;

	parse_rtattr(tb, IFLA_MAX, IFLA_RTA(ifi), len);
	if (tb[IFLA_STATS])
		memcpy(stats, RTA_DATA(tb[IFLA_STATS]), sizeof(*stats));
	else
		return -1;

	return 0;
}

int __export iplink_vlan_add(const char *ifname, int ifindex, int vid)
{
	struct iplink_req {
		struct nlmsghdr n;
		struct ifinfomsg i;
		char buf[4096];
	} req;
	struct rtattr *linkinfo, *data;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifinfomsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK | NLM_F_CREATE | NLM_F_EXCL;
	req.n.nlmsg_type = RTM_NEWLINK;
	req.i.ifi_family = AF_UNSPEC;

	addattr_l(&req.n, 4096, IFLA_LINK, &ifindex, 4);
	addattr_l(&req.n, 4096, IFLA_IFNAME, ifname, strlen(ifname));

	linkinfo = NLMSG_TAIL(&req.n);
	addattr_l(&req.n, 4096, IFLA_LINKINFO, NULL, 0);
	addattr_l(&req.n, 4096, IFLA_INFO_KIND, "vlan", 4);

	data = NLMSG_TAIL(&req.n);
	addattr_l(&req.n, 4096, IFLA_INFO_DATA, NULL, 0);
	addattr_l(&req.n, 4096, IFLA_VLAN_ID, &vid, 2);
	data->rta_len = (void *)NLMSG_TAIL(&req.n) - (void *)data;

	linkinfo->rta_len = (void *)NLMSG_TAIL(&req.n) - (void *)linkinfo;

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

int __export iplink_vlan_del(int ifindex)
{
	struct iplink_req {
		struct nlmsghdr n;
		struct ifinfomsg i;
		char buf[4096];
	} req;
	struct rtattr *linkinfo;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifinfomsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK;
	req.n.nlmsg_type = RTM_DELLINK;
	req.i.ifi_family = AF_UNSPEC;
	req.i.ifi_index = ifindex;

	linkinfo = NLMSG_TAIL(&req.n);
	addattr_l(&req.n, 4096, IFLA_LINKINFO, NULL, 0);
	addattr_l(&req.n, 4096, IFLA_INFO_KIND, "vlan", 4);

	/*data = NLMSG_TAIL(&req.n);
	addattr_l(&req.n, 4096, IFLA_VLAN_ID, &vid, 2);
	data->rta_len = (void *)NLMSG_TAIL(&req.n) - (void *)data;*/

	linkinfo->rta_len = (void *)NLMSG_TAIL(&req.n) - (void *)linkinfo;

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

int __export ipaddr_add(int ifindex, in_addr_t addr, int mask)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct ifaddrmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifaddrmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_CREATE;
	req.n.nlmsg_type = RTM_NEWADDR;
	req.i.ifa_family = AF_INET;
	req.i.ifa_index = ifindex;
	req.i.ifa_prefixlen = mask;

	addattr32(&req.n, sizeof(req), IFA_LOCAL, addr);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

int __export ipaddr_del(int ifindex, in_addr_t addr, int mask)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct ifaddrmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifaddrmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST;
	req.n.nlmsg_type = RTM_DELADDR;
	req.i.ifa_family = AF_INET;
	req.i.ifa_index = ifindex;
	req.i.ifa_prefixlen = mask;

	addattr32(&req.n, sizeof(req), IFA_LOCAL, addr);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

int __export iproute_add(int ifindex, in_addr_t src, in_addr_t dst, in_addr_t gw, int proto)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct rtmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct rtmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_CREATE;
	req.n.nlmsg_type = RTM_NEWROUTE;
	req.i.rtm_family = AF_INET;
	req.i.rtm_table = RT_TABLE_MAIN;
	req.i.rtm_scope = ifindex ? RT_SCOPE_LINK : RT_SCOPE_UNIVERSE;
	req.i.rtm_protocol = proto;
	req.i.rtm_type = RTN_UNICAST;
	req.i.rtm_dst_len = 32;

	if (ifindex)
		addattr32(&req.n, sizeof(req), RTA_OIF, ifindex);
	if (src)
		addattr32(&req.n, sizeof(req), RTA_PREFSRC, src);
	if (gw)
		addattr32(&req.n, sizeof(req), RTA_GATEWAY, gw);
	addattr32(&req.n, sizeof(req), RTA_DST, dst);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

int __export iproute_del(int ifindex, in_addr_t dst, int proto)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct rtmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct rtmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK;
	req.n.nlmsg_type = RTM_DELROUTE;
	req.i.rtm_family = AF_INET;
	req.i.rtm_table = RT_TABLE_MAIN;
	req.i.rtm_scope = RT_SCOPE_LINK;
	req.i.rtm_protocol = proto;
	req.i.rtm_type = RTN_UNICAST;
	req.i.rtm_dst_len = 32;

	addattr32(&req.n, sizeof(req), RTA_DST, dst);
	addattr32(&req.n, sizeof(req), RTA_OIF, ifindex);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

int __export ip6route_add(int ifindex, struct in6_addr *dst, int pref_len, int proto)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct rtmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct rtmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_CREATE;
	req.n.nlmsg_type = RTM_NEWROUTE;
	req.i.rtm_family = AF_INET6;
	req.i.rtm_table = RT_TABLE_MAIN;
	req.i.rtm_scope = RT_SCOPE_LINK;
	req.i.rtm_protocol = proto;
	req.i.rtm_type = RTN_UNICAST;
	req.i.rtm_dst_len = pref_len;

	addattr_l(&req.n, sizeof(req), RTA_DST, dst, sizeof(*dst));
	addattr32(&req.n, sizeof(req), RTA_OIF, ifindex);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;

}

int __export ip6addr_add(int ifindex, struct in6_addr *addr, int prefix_len)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct ifaddrmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifaddrmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST | NLM_F_CREATE;
	req.n.nlmsg_type = RTM_NEWADDR;
	req.i.ifa_family = AF_INET6;
	req.i.ifa_index = ifindex;
	req.i.ifa_prefixlen = prefix_len;
	req.i.ifa_flags = IFA_F_NODAD;

	addattr_l(&req.n, sizeof(req), IFA_ADDRESS, addr, 16);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

in_addr_t __export iproute_get(in_addr_t dst, in_addr_t *gw)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct rtmsg r;
		char buf[4096];
	} req;
	struct rtmsg *r;
	struct rtattr *tb[RTA_MAX+1];
	int len;
	in_addr_t res = 0;

	if (gw)
		*gw = 0;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct rtmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST;
	req.n.nlmsg_type = RTM_GETROUTE;
	req.r.rtm_family = AF_INET;
	req.r.rtm_table = 0;
	req.r.rtm_protocol = 0;
	req.r.rtm_scope = 0;
	req.r.rtm_type = 0;
	req.r.rtm_tos = 0;
	req.r.rtm_src_len = 0;
	req.r.rtm_dst_len = 32;

	addattr32(&req.n, 4096, RTA_DST, dst);

	if (rtnl_talk(rth, &req.n, 0, 0, &req.n, NULL, NULL, 0) < 0) {
		log_error("failed to detect route to server\n");
		goto out;
	}

	r = NLMSG_DATA(&req.n);
	len = req.n.nlmsg_len;

	if (req.n.nlmsg_type != RTM_NEWROUTE) {
		log_error("failed to detect route to server (wrong netlink message type)");
		goto out;
	}

	len -= NLMSG_LENGTH(sizeof(*r));
	if (len < 0) {
		log_error("failed to detect route to server (wrong netlink message length)");
		goto out;
	}

	parse_rtattr(tb, RTA_MAX, RTM_RTA(r), len);

	if (tb[RTA_PREFSRC])
		res = *(uint32_t *)RTA_DATA(tb[RTA_PREFSRC]);

	if (gw && tb[RTA_GATEWAY])
		*gw = *(uint32_t *)RTA_DATA(tb[RTA_GATEWAY]);

out:
	return res;
}

int __export iprule_add(uint32_t addr, int table)
{
	struct {
		struct nlmsghdr n;
		struct rtmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct rtmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST;
	req.n.nlmsg_type = RTM_NEWRULE;
	req.i.rtm_family = AF_INET;
	req.i.rtm_table = table < 256 ? table : RT_TABLE_UNSPEC;
	req.i.rtm_scope = RT_SCOPE_UNIVERSE;
	req.i.rtm_protocol = RTPROT_BOOT;
	req.i.rtm_type = RTN_UNICAST;
	req.i.rtm_src_len = 32;

	addattr32(&req.n, sizeof(req), FRA_SRC, addr);
	if (table >= 256)
		addattr32(&req.n, sizeof(req), FRA_TABLE, table);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}

int __export iprule_del(uint32_t addr, int table)
{
	struct ipaddr_req {
		struct nlmsghdr n;
		struct rtmsg i;
		char buf[4096];
	} req;

	if (!rth)
		open_rth();

	if (!rth)
		return -1;

	memset(&req, 0, sizeof(req) - 4096);

	req.n.nlmsg_len = NLMSG_LENGTH(sizeof(struct rtmsg));
	req.n.nlmsg_flags = NLM_F_REQUEST;
	req.n.nlmsg_type = RTM_DELRULE;
	req.i.rtm_family = AF_INET;
	req.i.rtm_table = table < 256 ? table : RT_TABLE_UNSPEC;
	req.i.rtm_scope = RT_SCOPE_UNIVERSE;
	req.i.rtm_protocol = RTPROT_BOOT;
	req.i.rtm_type = RTN_UNICAST;
	req.i.rtm_src_len = 32;

	addattr32(&req.n, sizeof(req), FRA_SRC, addr);
	if (table >= 256)
		addattr32(&req.n, sizeof(req), FRA_TABLE, table);

	if (rtnl_talk(rth, &req.n, 0, 0, NULL, NULL, NULL, 0) < 0)
		return -1;

	return 0;
}


static void init(void)
{
	pthread_key_create(&rth_key, free_rth);
}

DEFINE_INIT(100, init);
