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
CMAKE_BINARY_DIR = /root/accel-ppp-1.9.0/accel-pppd/extra

# Include any dependencies generated for this target.
include accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/depend.make

# Include the progress variables for this target.
include accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/progress.make

# Include the compile flags for this target's objects.
include accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/flags.make

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o: accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/flags.make
accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o: ../ipv6/nd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ipv6 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ipv6_nd.dir/nd.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ipv6/nd.c

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ipv6_nd.dir/nd.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ipv6 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ipv6/nd.c > CMakeFiles/ipv6_nd.dir/nd.c.i

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ipv6_nd.dir/nd.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ipv6 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ipv6/nd.c -o CMakeFiles/ipv6_nd.dir/nd.c.s

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.requires:

.PHONY : accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.requires

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.provides: accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.requires
	$(MAKE) -f accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/build.make accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.provides.build
.PHONY : accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.provides

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.provides.build: accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o


# Object files for target ipv6_nd
ipv6_nd_OBJECTS = \
"CMakeFiles/ipv6_nd.dir/nd.c.o"

# External object files for target ipv6_nd
ipv6_nd_EXTERNAL_OBJECTS =

accel-pppd/ipv6/libipv6_nd.so: accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o
accel-pppd/ipv6/libipv6_nd.so: accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/build.make
accel-pppd/ipv6/libipv6_nd.so: accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libipv6_nd.so"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ipv6 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ipv6_nd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/build: accel-pppd/ipv6/libipv6_nd.so

.PHONY : accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/build

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/requires: accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/nd.c.o.requires

.PHONY : accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/requires

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/clean:
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ipv6 && $(CMAKE_COMMAND) -P CMakeFiles/ipv6_nd.dir/cmake_clean.cmake
.PHONY : accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/clean

accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/depend:
	cd /root/accel-ppp-1.9.0/accel-pppd/extra && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/accel-ppp-1.9.0 /root/accel-ppp-1.9.0/accel-pppd/ipv6 /root/accel-ppp-1.9.0/accel-pppd/extra /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ipv6 /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : accel-pppd/ipv6/CMakeFiles/ipv6_nd.dir/depend

