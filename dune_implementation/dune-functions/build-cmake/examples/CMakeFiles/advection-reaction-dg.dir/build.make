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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-functions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-functions/build-cmake

# Include any dependencies generated for this target.
include examples/CMakeFiles/advection-reaction-dg.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/advection-reaction-dg.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/advection-reaction-dg.dir/flags.make

examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o: examples/CMakeFiles/advection-reaction-dg.dir/flags.make
examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o: ../examples/advection-reaction-dg.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o -c /home/paddy/pkg/dune_2d/dune-functions/examples/advection-reaction-dg.cc

examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-functions/examples/advection-reaction-dg.cc > CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.i

examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-functions/examples/advection-reaction-dg.cc -o CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.s

examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.requires:

.PHONY : examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.requires

examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.provides: examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.requires
	$(MAKE) -f examples/CMakeFiles/advection-reaction-dg.dir/build.make examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.provides.build
.PHONY : examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.provides

examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.provides.build: examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o


# Object files for target advection-reaction-dg
advection__reaction__dg_OBJECTS = \
"CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o"

# External object files for target advection-reaction-dg
advection__reaction__dg_EXTERNAL_OBJECTS =

examples/advection-reaction-dg: examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o
examples/advection-reaction-dg: examples/CMakeFiles/advection-reaction-dg.dir/build.make
examples/advection-reaction-dg: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
examples/advection-reaction-dg: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
examples/advection-reaction-dg: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
examples/advection-reaction-dg: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
examples/advection-reaction-dg: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
examples/advection-reaction-dg: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
examples/advection-reaction-dg: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
examples/advection-reaction-dg: /usr/lib/x86_64-linux-gnu/liblapack.so
examples/advection-reaction-dg: /usr/lib/x86_64-linux-gnu/libf77blas.so
examples/advection-reaction-dg: /usr/lib/x86_64-linux-gnu/libatlas.so
examples/advection-reaction-dg: examples/CMakeFiles/advection-reaction-dg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable advection-reaction-dg"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/advection-reaction-dg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/advection-reaction-dg.dir/build: examples/advection-reaction-dg

.PHONY : examples/CMakeFiles/advection-reaction-dg.dir/build

examples/CMakeFiles/advection-reaction-dg.dir/requires: examples/CMakeFiles/advection-reaction-dg.dir/advection-reaction-dg.cc.o.requires

.PHONY : examples/CMakeFiles/advection-reaction-dg.dir/requires

examples/CMakeFiles/advection-reaction-dg.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && $(CMAKE_COMMAND) -P CMakeFiles/advection-reaction-dg.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/advection-reaction-dg.dir/clean

examples/CMakeFiles/advection-reaction-dg.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-functions /home/paddy/pkg/dune_2d/dune-functions/examples /home/paddy/pkg/dune_2d/dune-functions/build-cmake /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples/CMakeFiles/advection-reaction-dg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/advection-reaction-dg.dir/depend

