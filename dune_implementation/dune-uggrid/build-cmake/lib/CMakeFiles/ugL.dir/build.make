# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-uggrid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake

# Include any dependencies generated for this target.
include lib/CMakeFiles/ugL.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/ugL.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/ugL.dir/flags.make

# Object files for target ugL
ugL_OBJECTS =

# External object files for target ugL
ugL_EXTERNAL_OBJECTS = \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dev/CMakeFiles/devices.dir/ugdevices.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/ugenv.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/heaps.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/fifo.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/misc.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/defaults.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/initlow.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/fileopen.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/ugstruct.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/debug.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/bio.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/scan.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/CMakeFiles/low.dir/ugtimer.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ppif/MPI/CMakeFiles/ppifmpi.dir/ppif.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/util/CMakeFiles/parutil.dir/xbc.cc.o"

lib/libugL.a: dev/CMakeFiles/devices.dir/ugdevices.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/ugenv.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/heaps.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/fifo.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/misc.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/defaults.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/initlow.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/fileopen.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/ugstruct.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/debug.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/bio.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/scan.cc.o
lib/libugL.a: low/CMakeFiles/low.dir/ugtimer.cc.o
lib/libugL.a: parallel/ppif/MPI/CMakeFiles/ppifmpi.dir/ppif.cc.o
lib/libugL.a: parallel/util/CMakeFiles/parutil.dir/xbc.cc.o
lib/libugL.a: lib/CMakeFiles/ugL.dir/build.make
lib/libugL.a: lib/CMakeFiles/ugL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libugL.a"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && $(CMAKE_COMMAND) -P CMakeFiles/ugL.dir/cmake_clean_target.cmake
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ugL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/ugL.dir/build: lib/libugL.a

.PHONY : lib/CMakeFiles/ugL.dir/build

lib/CMakeFiles/ugL.dir/requires:

.PHONY : lib/CMakeFiles/ugL.dir/requires

lib/CMakeFiles/ugL.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && $(CMAKE_COMMAND) -P CMakeFiles/ugL.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/ugL.dir/clean

lib/CMakeFiles/ugL.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/lib /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/CMakeFiles/ugL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/ugL.dir/depend

