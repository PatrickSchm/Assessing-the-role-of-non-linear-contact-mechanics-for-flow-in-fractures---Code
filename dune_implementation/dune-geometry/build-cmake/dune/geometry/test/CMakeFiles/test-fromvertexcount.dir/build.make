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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-geometry

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-geometry/build-cmake

# Include any dependencies generated for this target.
include dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/depend.make

# Include the progress variables for this target.
include dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/progress.make

# Include the compile flags for this target's objects.
include dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/flags.make

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o: dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/flags.make
dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o: ../dune/geometry/test/test-fromvertexcount.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o -c /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test/test-fromvertexcount.cc

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test/test-fromvertexcount.cc > CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.i

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test/test-fromvertexcount.cc -o CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.s

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.requires:

.PHONY : dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.requires

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.provides: dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.requires
	$(MAKE) -f dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/build.make dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.provides.build
.PHONY : dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.provides

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.provides.build: dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o


# Object files for target test-fromvertexcount
test__fromvertexcount_OBJECTS = \
"CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o"

# External object files for target test-fromvertexcount
test__fromvertexcount_EXTERNAL_OBJECTS =

dune/geometry/test/test-fromvertexcount: dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o
dune/geometry/test/test-fromvertexcount: dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/build.make
dune/geometry/test/test-fromvertexcount: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/geometry/test/test-fromvertexcount: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/geometry/test/test-fromvertexcount: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/geometry/test/test-fromvertexcount: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/geometry/test/test-fromvertexcount: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/geometry/test/test-fromvertexcount: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/geometry/test/test-fromvertexcount: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/geometry/test/test-fromvertexcount: dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-fromvertexcount"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-fromvertexcount.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/build: dune/geometry/test/test-fromvertexcount

.PHONY : dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/build

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/requires: dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/test-fromvertexcount.cc.o.requires

.PHONY : dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/requires

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && $(CMAKE_COMMAND) -P CMakeFiles/test-fromvertexcount.dir/cmake_clean.cmake
.PHONY : dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/clean

dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-geometry /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test /home/paddy/pkg/dune_2d/dune-geometry/build-cmake /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/geometry/test/CMakeFiles/test-fromvertexcount.dir/depend
