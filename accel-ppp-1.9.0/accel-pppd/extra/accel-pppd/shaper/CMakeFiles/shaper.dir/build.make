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
include accel-pppd/shaper/CMakeFiles/shaper.dir/depend.make

# Include the progress variables for this target.
include accel-pppd/shaper/CMakeFiles/shaper.dir/progress.make

# Include the compile flags for this target's objects.
include accel-pppd/shaper/CMakeFiles/shaper.dir/flags.make

accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o: accel-pppd/shaper/CMakeFiles/shaper.dir/flags.make
accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o: ../shaper/shaper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shaper.dir/shaper.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/shaper/shaper.c

accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shaper.dir/shaper.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/shaper/shaper.c > CMakeFiles/shaper.dir/shaper.c.i

accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shaper.dir/shaper.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/shaper/shaper.c -o CMakeFiles/shaper.dir/shaper.c.s

accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.requires:

.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.requires

accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.provides: accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.requires
	$(MAKE) -f accel-pppd/shaper/CMakeFiles/shaper.dir/build.make accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.provides.build
.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.provides

accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.provides.build: accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o


accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o: accel-pppd/shaper/CMakeFiles/shaper.dir/flags.make
accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o: ../shaper/limiter.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shaper.dir/limiter.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/shaper/limiter.c

accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shaper.dir/limiter.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/shaper/limiter.c > CMakeFiles/shaper.dir/limiter.c.i

accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shaper.dir/limiter.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/shaper/limiter.c -o CMakeFiles/shaper.dir/limiter.c.s

accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.requires:

.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.requires

accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.provides: accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.requires
	$(MAKE) -f accel-pppd/shaper/CMakeFiles/shaper.dir/build.make accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.provides.build
.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.provides

accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.provides.build: accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o


accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o: accel-pppd/shaper/CMakeFiles/shaper.dir/flags.make
accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o: ../shaper/leaf_qdisc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shaper.dir/leaf_qdisc.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/shaper/leaf_qdisc.c

accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shaper.dir/leaf_qdisc.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/shaper/leaf_qdisc.c > CMakeFiles/shaper.dir/leaf_qdisc.c.i

accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shaper.dir/leaf_qdisc.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/shaper/leaf_qdisc.c -o CMakeFiles/shaper.dir/leaf_qdisc.c.s

accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.requires:

.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.requires

accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.provides: accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.requires
	$(MAKE) -f accel-pppd/shaper/CMakeFiles/shaper.dir/build.make accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.provides.build
.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.provides

accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.provides.build: accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o


accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o: accel-pppd/shaper/CMakeFiles/shaper.dir/flags.make
accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o: ../shaper/tc_core.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shaper.dir/tc_core.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/shaper/tc_core.c

accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shaper.dir/tc_core.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/shaper/tc_core.c > CMakeFiles/shaper.dir/tc_core.c.i

accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shaper.dir/tc_core.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/shaper/tc_core.c -o CMakeFiles/shaper.dir/tc_core.c.s

accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.requires:

.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.requires

accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.provides: accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.requires
	$(MAKE) -f accel-pppd/shaper/CMakeFiles/shaper.dir/build.make accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.provides.build
.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.provides

accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.provides.build: accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o


# Object files for target shaper
shaper_OBJECTS = \
"CMakeFiles/shaper.dir/shaper.c.o" \
"CMakeFiles/shaper.dir/limiter.c.o" \
"CMakeFiles/shaper.dir/leaf_qdisc.c.o" \
"CMakeFiles/shaper.dir/tc_core.c.o"

# External object files for target shaper
shaper_EXTERNAL_OBJECTS =

accel-pppd/shaper/libshaper.so: accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o
accel-pppd/shaper/libshaper.so: accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o
accel-pppd/shaper/libshaper.so: accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o
accel-pppd/shaper/libshaper.so: accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o
accel-pppd/shaper/libshaper.so: accel-pppd/shaper/CMakeFiles/shaper.dir/build.make
accel-pppd/shaper/libshaper.so: accel-pppd/shaper/CMakeFiles/shaper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C shared library libshaper.so"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shaper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
accel-pppd/shaper/CMakeFiles/shaper.dir/build: accel-pppd/shaper/libshaper.so

.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/build

accel-pppd/shaper/CMakeFiles/shaper.dir/requires: accel-pppd/shaper/CMakeFiles/shaper.dir/shaper.c.o.requires
accel-pppd/shaper/CMakeFiles/shaper.dir/requires: accel-pppd/shaper/CMakeFiles/shaper.dir/limiter.c.o.requires
accel-pppd/shaper/CMakeFiles/shaper.dir/requires: accel-pppd/shaper/CMakeFiles/shaper.dir/leaf_qdisc.c.o.requires
accel-pppd/shaper/CMakeFiles/shaper.dir/requires: accel-pppd/shaper/CMakeFiles/shaper.dir/tc_core.c.o.requires

.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/requires

accel-pppd/shaper/CMakeFiles/shaper.dir/clean:
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper && $(CMAKE_COMMAND) -P CMakeFiles/shaper.dir/cmake_clean.cmake
.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/clean

accel-pppd/shaper/CMakeFiles/shaper.dir/depend:
	cd /root/accel-ppp-1.9.0/accel-pppd/extra && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/accel-ppp-1.9.0 /root/accel-ppp-1.9.0/accel-pppd/shaper /root/accel-ppp-1.9.0/accel-pppd/extra /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/shaper/CMakeFiles/shaper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : accel-pppd/shaper/CMakeFiles/shaper.dir/depend

