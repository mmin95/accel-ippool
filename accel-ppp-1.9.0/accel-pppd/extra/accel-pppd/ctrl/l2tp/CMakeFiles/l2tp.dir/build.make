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
include accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/depend.make

# Include the progress variables for this target.
include accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/progress.make

# Include the compile flags for this target's objects.
include accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/flags.make

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/flags.make
accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o: ../ctrl/l2tp/l2tp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/l2tp.dir/l2tp.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/l2tp.c

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/l2tp.dir/l2tp.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/l2tp.c > CMakeFiles/l2tp.dir/l2tp.c.i

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/l2tp.dir/l2tp.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/l2tp.c -o CMakeFiles/l2tp.dir/l2tp.c.s

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.requires:

.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.requires

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.provides: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/build.make accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.provides.build
.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.provides

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.provides.build: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o


accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/flags.make
accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o: ../ctrl/l2tp/dict.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/l2tp.dir/dict.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/dict.c

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/l2tp.dir/dict.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/dict.c > CMakeFiles/l2tp.dir/dict.c.i

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/l2tp.dir/dict.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/dict.c -o CMakeFiles/l2tp.dir/dict.c.s

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.requires:

.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.requires

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.provides: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/build.make accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.provides.build
.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.provides

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.provides.build: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o


accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/flags.make
accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o: ../ctrl/l2tp/packet.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/l2tp.dir/packet.c.o   -c /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/packet.c

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/l2tp.dir/packet.c.i"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/packet.c > CMakeFiles/l2tp.dir/packet.c.i

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/l2tp.dir/packet.c.s"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp/packet.c -o CMakeFiles/l2tp.dir/packet.c.s

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.requires:

.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.requires

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.provides: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.requires
	$(MAKE) -f accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/build.make accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.provides.build
.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.provides

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.provides.build: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o


# Object files for target l2tp
l2tp_OBJECTS = \
"CMakeFiles/l2tp.dir/l2tp.c.o" \
"CMakeFiles/l2tp.dir/dict.c.o" \
"CMakeFiles/l2tp.dir/packet.c.o"

# External object files for target l2tp
l2tp_EXTERNAL_OBJECTS =

accel-pppd/ctrl/l2tp/libl2tp.so: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o
accel-pppd/ctrl/l2tp/libl2tp.so: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o
accel-pppd/ctrl/l2tp/libl2tp.so: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o
accel-pppd/ctrl/l2tp/libl2tp.so: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/build.make
accel-pppd/ctrl/l2tp/libl2tp.so: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/accel-ppp-1.9.0/accel-pppd/extra/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C shared library libl2tp.so"
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/l2tp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/build: accel-pppd/ctrl/l2tp/libl2tp.so

.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/build

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/requires: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/l2tp.c.o.requires
accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/requires: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/dict.c.o.requires
accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/requires: accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/packet.c.o.requires

.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/requires

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/clean:
	cd /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp && $(CMAKE_COMMAND) -P CMakeFiles/l2tp.dir/cmake_clean.cmake
.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/clean

accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/depend:
	cd /root/accel-ppp-1.9.0/accel-pppd/extra && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/accel-ppp-1.9.0 /root/accel-ppp-1.9.0/accel-pppd/ctrl/l2tp /root/accel-ppp-1.9.0/accel-pppd/extra /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp /root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : accel-pppd/ctrl/l2tp/CMakeFiles/l2tp.dir/depend

