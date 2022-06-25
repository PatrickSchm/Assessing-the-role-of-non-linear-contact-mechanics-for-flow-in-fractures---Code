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
include examples/CMakeFiles/stokes-taylorhood.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/stokes-taylorhood.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/stokes-taylorhood.dir/flags.make

examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o: examples/CMakeFiles/stokes-taylorhood.dir/flags.make
examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o: ../examples/stokes-taylorhood.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o -c /home/paddy/pkg/dune_2d/dune-functions/examples/stokes-taylorhood.cc

examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-functions/examples/stokes-taylorhood.cc > CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.i

examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-functions/examples/stokes-taylorhood.cc -o CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.s

examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.requires:

.PHONY : examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.requires

examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.provides: examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.requires
	$(MAKE) -f examples/CMakeFiles/stokes-taylorhood.dir/build.make examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.provides.build
.PHONY : examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.provides

examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.provides.build: examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o


# Object files for target stokes-taylorhood
stokes__taylorhood_OBJECTS = \
"CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o"

# External object files for target stokes-taylorhood
stokes__taylorhood_EXTERNAL_OBJECTS =

examples/stokes-taylorhood: examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o
examples/stokes-taylorhood: examples/CMakeFiles/stokes-taylorhood.dir/build.make
examples/stokes-taylorhood: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
examples/stokes-taylorhood: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
examples/stokes-taylorhood: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
examples/stokes-taylorhood: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
examples/stokes-taylorhood: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
examples/stokes-taylorhood: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
examples/stokes-taylorhood: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
examples/stokes-taylorhood: /usr/lib/x86_64-linux-gnu/liblapack.so
examples/stokes-taylorhood: /usr/lib/x86_64-linux-gnu/libf77blas.so
examples/stokes-taylorhood: /usr/lib/x86_64-linux-gnu/libatlas.so
examples/stokes-taylorhood: examples/CMakeFiles/stokes-taylorhood.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stokes-taylorhood"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stokes-taylorhood.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/stokes-taylorhood.dir/build: examples/stokes-taylorhood

.PHONY : examples/CMakeFiles/stokes-taylorhood.dir/build

examples/CMakeFiles/stokes-taylorhood.dir/requires: examples/CMakeFiles/stokes-taylorhood.dir/stokes-taylorhood.cc.o.requires

.PHONY : examples/CMakeFiles/stokes-taylorhood.dir/requires

examples/CMakeFiles/stokes-taylorhood.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples && $(CMAKE_COMMAND) -P CMakeFiles/stokes-taylorhood.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/stokes-taylorhood.dir/clean

examples/CMakeFiles/stokes-taylorhood.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-functions /home/paddy/pkg/dune_2d/dune-functions/examples /home/paddy/pkg/dune_2d/dune-functions/build-cmake /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples /home/paddy/pkg/dune_2d/dune-functions/build-cmake/examples/CMakeFiles/stokes-taylorhood.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/stokes-taylorhood.dir/depend
