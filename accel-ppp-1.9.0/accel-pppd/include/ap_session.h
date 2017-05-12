#ifndef __AP_SESSION_H__
#define __AP_SESSION_H__

//#define AP_SESSIONID_LEN 16
#define AP_IFNAME_LEN 16

#define AP_STATE_STARTING  1
#define AP_STATE_ACTIVE    2
#define AP_STATE_FINISHING 3
#define AP_STATE_RESTORE   4

#define TERM_USER_REQUEST 1
#define TERM_SESSION_TIMEOUT 2
#define TERM_ADMIN_RESET 3
#define TERM_USER_ERROR 4
#define TERM_NAS_ERROR 5
#define TERM_NAS_REQUEST 6
#define TERM_NAS_REBOOT 7
#define TERM_AUTH_ERROR 8
#define TERM_LOST_CARRIER 9
#define TERM_IDLE_TIMEOUT 10

#define CTRL_TYPE_PPTP     1
#define CTRL_TYPE_L2TP     2
#define CTRL_TYPE_PPPOE    3
#define CTRL_TYPE_IPOE     4
#define CTRL_TYPE_OPENVPN  5
#define CTRL_TYPE_SSTP     6

#define MPPE_UNSET   -2
#define MPPE_ALLOW   -1
#define MPPE_DENY    0
#define MPPE_PREFER  1
#define MPPE_REQUIRE 2

struct ap_session;
struct backup_data;
struct rtnl_link_stats;

struct ap_ctrl
{
	struct triton_context_t *ctx;
	int type;
	const char *name;
	int max_mtu;
	int mppe;
	char *calling_station_id;
	char *called_station_id;
	int dont_ifcfg:1;
	int ppp:1;
	void (*started)(struct ap_session*);
	void (*finished)(struct ap_session *);
	void (*terminate)(struct ap_session *, int hard);
};

struct ap_private
{
	struct list_head entry;
	void *key;
};

struct ap_session
{
	struct list_head entry;

	int state;
	char *chan_name;
	char ifname[AP_IFNAME_LEN];
	char *ifname_rename;
	int unit_idx;
	int ifindex;
	char sessionid[AP_SESSIONID_LEN+1];
	time_t start_time;
	time_t stop_time;
	time_t idle_time;
	char *username;
	struct ipv4db_item_t *ipv4;
	struct ipv6db_item_t *ipv6;
	struct ipv6db_prefix_t *ipv6_dp;
	char *ipv4_pool_name;
	char *ipv6_pool_name;

	const struct ap_ctrl *ctrl;

	const char *comp;

#ifdef USE_BACKUP
	struct backup_data *backup;
#endif

	struct triton_context_t *wakeup;

	int terminating:1;
	int terminated:1;
	int terminate_cause;

	struct list_head pd_list;

	uint32_t acct_rx_bytes;
	uint32_t acct_tx_bytes;
	uint32_t acct_input_gigawords;
	uint32_t acct_output_gigawords;
	uint32_t acct_rx_packets_i;
	uint32_t acct_tx_packets_i;
	uint32_t acct_rx_bytes_i;
	uint32_t acct_tx_bytes_i;
	int acct_start;
};

struct ap_session_stat
{
	unsigned int active;
	unsigned int starting;
	unsigned int finishing;
};


extern pthread_rwlock_t ses_lock;
extern struct list_head ses_list;
extern int ap_shutdown;
extern int sock_fd; // internet socket for ioctls
extern int sock6_fd; // internet socket for ioctls
extern int urandom_fd;
extern struct ap_session_stat ap_session_stat;

void ap_session_init(struct ap_session *ses);
void ap_session_set_ifindex(struct ap_session *ses);
int ap_session_starting(struct ap_session *ses);
void ap_session_finished(struct ap_session *ses);
void ap_session_terminate(struct ap_session *ses, int cause, int hard);
void ap_session_activate(struct ap_session *ses);
void ap_session_accounting_started(struct ap_session *ses);
int ap_session_set_username(struct ap_session *ses, char *username);

void ap_session_ifup(struct ap_session *ses);
void ap_session_ifdown(struct ap_session *ses);
int ap_session_rename(struct ap_session *ses, const char *ifname, int len);

int ap_session_read_stats(struct ap_session *ses, struct rtnl_link_stats *stats);

void ap_shutdown_soft(void (*cb)(void));

#endif
