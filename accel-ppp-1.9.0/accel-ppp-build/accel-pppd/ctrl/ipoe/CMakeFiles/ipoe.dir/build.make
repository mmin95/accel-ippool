# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/accel-ppp-1.9.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/accel-ppp-1.9.0/accel-ppp-build

# Include any dependencies generated for this target.
include accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/depend.make

# Include the progress variables for this target.
include accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/progress.make

# Include the compile flags for this target's objects.
include accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/flags.make

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/flags.make
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o: ../accel-pppd/ctrl/ipoe/ipoe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-ppp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ipoe.dir/ipoe.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/ipoe.c

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ipoe.dir/ipoe.c.i"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/ipoe.c > CMakeFiles/ipoe.dir/ipoe.c.i

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ipoe.dir/ipoe.c.s"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/ipoe.c -o CMakeFiles/ipoe.dir/ipoe.c.s

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.requires:

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.requires

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.provides: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build.make accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.provides.build
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.provides

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.provides.build: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o


accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/flags.make
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o: ../accel-pppd/ctrl/ipoe/dhcpv4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-ppp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ipoe.dir/dhcpv4.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/dhcpv4.c

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ipoe.dir/dhcpv4.c.i"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/dhcpv4.c > CMakeFiles/ipoe.dir/dhcpv4.c.i

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ipoe.dir/dhcpv4.c.s"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/dhcpv4.c -o CMakeFiles/ipoe.dir/dhcpv4.c.s

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.requires:

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.requires

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.provides: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build.make accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.provides.build
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.provides

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.provides.build: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o


accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/flags.make
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o: ../accel-pppd/ctrl/ipoe/dhcpv4_options.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-ppp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ipoe.dir/dhcpv4_options.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/dhcpv4_options.c

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ipoe.dir/dhcpv4_options.c.i"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/dhcpv4_options.c > CMakeFiles/ipoe.dir/dhcpv4_options.c.i

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ipoe.dir/dhcpv4_options.c.s"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/dhcpv4_options.c -o CMakeFiles/ipoe.dir/dhcpv4_options.c.s

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.requires:

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.requires

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.provides: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build.make accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.provides.build
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.provides

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.provides.build: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o


accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/flags.make
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o: ../accel-pppd/ctrl/ipoe/ipoe_netlink.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-ppp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ipoe.dir/ipoe_netlink.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/ipoe_netlink.c

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ipoe.dir/ipoe_netlink.c.i"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/ipoe_netlink.c > CMakeFiles/ipoe.dir/ipoe_netlink.c.i

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ipoe.dir/ipoe_netlink.c.s"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/ipoe_netlink.c -o CMakeFiles/ipoe.dir/ipoe_netlink.c.s

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.requires:

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.requires

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.provides: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build.make accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.provides.build
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.provides

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.provides.build: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o


accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/flags.make
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o: ../accel-pppd/ctrl/ipoe/backup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-ppp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ipoe.dir/backup.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/backup.c

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ipoe.dir/backup.c.i"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/backup.c > CMakeFiles/ipoe.dir/backup.c.i

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ipoe.dir/backup.c.s"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/backup.c -o CMakeFiles/ipoe.dir/backup.c.s

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.requires:

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.requires

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.provides: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build.make accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.provides.build
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.provides

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.provides.build: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o


accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/flags.make
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o: ../accel-pppd/ctrl/ipoe/arp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-ppp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ipoe.dir/arp.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/arp.c

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ipoe.dir/arp.c.i"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/arp.c > CMakeFiles/ipoe.dir/arp.c.i

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ipoe.dir/arp.c.s"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe/arp.c -o CMakeFiles/ipoe.dir/arp.c.s

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.requires:

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.requires

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.provides: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build.make accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.provides.build
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.provides

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.provides.build: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o


# Object files for target ipoe
ipoe_OBJECTS = \
"CMakeFiles/ipoe.dir/ipoe.c.o" \
"CMakeFiles/ipoe.dir/dhcpv4.c.o" \
"CMakeFiles/ipoe.dir/dhcpv4_options.c.o" \
"CMakeFiles/ipoe.dir/ipoe_netlink.c.o" \
"CMakeFiles/ipoe.dir/backup.c.o" \
"CMakeFiles/ipoe.dir/arp.c.o"

# External object files for target ipoe
ipoe_EXTERNAL_OBJECTS =

accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o
accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o
accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o
accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o
accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o
accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o
accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build.make
accel-pppd/ctrl/ipoe/libipoe.so: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/accel-ppp-1.9.0/accel-ppp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C shared library libipoe.so"
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ipoe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build: accel-pppd/ctrl/ipoe/libipoe.so

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/build

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/requires: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe.c.o.requires
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/requires: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4.c.o.requires
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/requires: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/dhcpv4_options.c.o.requires
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/requires: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/ipoe_netlink.c.o.requires
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/requires: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/backup.c.o.requires
accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/requires: accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/arp.c.o.requires

.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/requires

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/clean:
	cd /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe && $(CMAKE_COMMAND) -P CMakeFiles/ipoe.dir/cmake_clean.cmake
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/clean

accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/depend:
	cd /root/accel-ppp-1.9.0/accel-ppp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/accel-ppp-1.9.0 /root/accel-ppp-1.9.0/accel-pppd/ctrl/ipoe /root/accel-ppp-1.9.0/accel-ppp-build /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe /root/accel-ppp-1.9.0/accel-ppp-build/accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : accel-pppd/ctrl/ipoe/CMakeFiles/ipoe.dir/depend

