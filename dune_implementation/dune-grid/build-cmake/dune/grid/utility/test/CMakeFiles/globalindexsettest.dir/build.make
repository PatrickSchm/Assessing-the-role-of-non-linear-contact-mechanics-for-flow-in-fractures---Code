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
include dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/depend.make

# Include the progress variables for this target.
include dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/flags.make

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o: dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/flags.make
dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o: ../dune/grid/utility/test/globalindexsettest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-grid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o -c /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test/globalindexsettest.cc

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test/globalindexsettest.cc > CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.i

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test/globalindexsettest.cc -o CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.s

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.requires:

.PHONY : dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.requires

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.provides: dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.requires
	$(MAKE) -f dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/build.make dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.provides.build
.PHONY : dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.provides

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.provides.build: dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o


# Object files for target globalindexsettest
globalindexsettest_OBJECTS = \
"CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o"

# External object files for target globalindexsettest
globalindexsettest_EXTERNAL_OBJECTS =

dune/grid/utility/test/globalindexsettest: dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o
dune/grid/utility/test/globalindexsettest: dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/build.make
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/grid/utility/test/globalindexsettest: lib/libdunegrid.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/grid/utility/test/globalindexsettest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/grid/utility/test/globalindexsettest: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/grid/utility/test/globalindexsettest: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/grid/utility/test/globalindexsettest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/grid/utility/test/globalindexsettest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/grid/utility/test/globalindexsettest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/grid/utility/test/globalindexsettest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/grid/utility/test/globalindexsettest: dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-grid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable globalindexsettest"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/globalindexsettest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/build: dune/grid/utility/test/globalindexsettest

.PHONY : dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/build

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/requires: dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/globalindexsettest.cc.o.requires

.PHONY : dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/requires

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test && $(CMAKE_COMMAND) -P CMakeFiles/globalindexsettest.dir/cmake_clean.cmake
.PHONY : dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/clean

dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-grid /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/test /home/paddy/pkg/dune_2d/dune-grid/build-cmake /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/grid/utility/test/CMakeFiles/globalindexsettest.dir/depend

