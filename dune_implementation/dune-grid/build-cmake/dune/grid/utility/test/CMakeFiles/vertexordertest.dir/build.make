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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-grid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-grid/build-cmake

# Include any dependencies generated for this target.
include dune/grid/utility/test/CMakeFiles/vertexordertest.dir/depend.make

# Include the progress variables for this target.
include dune/grid/utility/test/CMakeFiles/vertexordertest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/grid/utility/test/CMakeFiles/vertexordertest.dir/flags.make

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o: dune/grid/utility/test/CMakeFiles/vertexordertest.dir/flags.make
dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o: ../dune/grid/utility/test/vertexordertest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-grid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vertexordertest.dir/vertexordertest.cc.o -c /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test/vertexordertest.cc

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vertexordertest.dir/vertexordertest.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test/vertexordertest.cc > CMakeFiles/vertexordertest.dir/vertexordertest.cc.i

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vertexordertest.dir/vertexordertest.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test/vertexordertest.cc -o CMakeFiles/vertexordertest.dir/vertexordertest.cc.s

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.requires:

.PHONY : dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.requires

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.provides: dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.requires
	$(MAKE) -f dune/grid/utility/test/CMakeFiles/vertexordertest.dir/build.make dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.provides.build
.PHONY : dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.provides

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.provides.build: dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o


# Object files for target vertexordertest
vertexordertest_OBJECTS = \
"CMakeFiles/vertexordertest.dir/vertexordertest.cc.o"

# External object files for target vertexordertest
vertexordertest_EXTERNAL_OBJECTS =

dune/grid/utility/test/vertexordertest: dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o
dune/grid/utility/test/vertexordertest: dune/grid/utility/test/CMakeFiles/vertexordertest.dir/build.make
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/grid/utility/test/vertexordertest: lib/libdunegrid.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/grid/utility/test/vertexordertest: lib/libdunegrid.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/grid/utility/test/vertexordertest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/grid/utility/test/vertexordertest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/grid/utility/test/vertexordertest: dune/grid/utility/test/CMakeFiles/vertexordertest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-grid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vertexordertest"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vertexordertest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/grid/utility/test/CMakeFiles/vertexordertest.dir/build: dune/grid/utility/test/vertexordertest

.PHONY : dune/grid/utility/test/CMakeFiles/vertexordertest.dir/build

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/requires: dune/grid/utility/test/CMakeFiles/vertexordertest.dir/vertexordertest.cc.o.requires

.PHONY : dune/grid/utility/test/CMakeFiles/vertexordertest.dir/requires

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && $(CMAKE_COMMAND) -P CMakeFiles/vertexordertest.dir/cmake_clean.cmake
.PHONY : dune/grid/utility/test/CMakeFiles/vertexordertest.dir/clean

dune/grid/utility/test/CMakeFiles/vertexordertest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-grid /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test /home/paddy/pkg/dune_2d/dune-grid/build-cmake /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test/CMakeFiles/vertexordertest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/grid/utility/test/CMakeFiles/vertexordertest.dir/depend

