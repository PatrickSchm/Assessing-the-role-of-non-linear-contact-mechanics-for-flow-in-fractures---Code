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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-localfunctions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake

# Include any dependencies generated for this target.
include dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/depend.make

# Include the progress variables for this target.
include dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/flags.make

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o: dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/flags.make
dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o: ../dune/localfunctions/test/hierarchicalelementtest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o -c /home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/test/hierarchicalelementtest.cc

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/test/hierarchicalelementtest.cc > CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.i

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/test/hierarchicalelementtest.cc -o CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.s

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.requires:

.PHONY : dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.requires

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.provides: dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.requires
	$(MAKE) -f dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/build.make dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.provides.build
.PHONY : dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.provides

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.provides.build: dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o


# Object files for target hierarchicalelementtest
hierarchicalelementtest_OBJECTS = \
"CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o"

# External object files for target hierarchicalelementtest
hierarchicalelementtest_EXTERNAL_OBJECTS =

dune/localfunctions/test/hierarchicalelementtest: dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o
dune/localfunctions/test/hierarchicalelementtest: dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/build.make
dune/localfunctions/test/hierarchicalelementtest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/localfunctions/test/hierarchicalelementtest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/localfunctions/test/hierarchicalelementtest: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/localfunctions/test/hierarchicalelementtest: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/localfunctions/test/hierarchicalelementtest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/localfunctions/test/hierarchicalelementtest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/localfunctions/test/hierarchicalelementtest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/localfunctions/test/hierarchicalelementtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/localfunctions/test/hierarchicalelementtest: dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hierarchicalelementtest"
	cd /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hierarchicalelementtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/build: dune/localfunctions/test/hierarchicalelementtest

.PHONY : dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/build

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/requires: dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/hierarchicalelementtest.cc.o.requires

.PHONY : dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/requires

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/test && $(CMAKE_COMMAND) -P CMakeFiles/hierarchicalelementtest.dir/cmake_clean.cmake
.PHONY : dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/clean

dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-localfunctions /home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/test /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/test /home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/localfunctions/test/CMakeFiles/hierarchicalelementtest.dir/depend

