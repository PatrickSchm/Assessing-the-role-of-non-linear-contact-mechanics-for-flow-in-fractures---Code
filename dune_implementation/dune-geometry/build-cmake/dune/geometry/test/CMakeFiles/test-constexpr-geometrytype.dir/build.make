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
include dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/depend.make

# Include the progress variables for this target.
include dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/progress.make

# Include the compile flags for this target's objects.
include dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/flags.make

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o: dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/flags.make
dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o: ../dune/geometry/test/test-constexpr-geometrytype.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o -c /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test/test-constexpr-geometrytype.cc

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test/test-constexpr-geometrytype.cc > CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.i

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test/test-constexpr-geometrytype.cc -o CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.s

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.requires:

.PHONY : dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.requires

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.provides: dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.requires
	$(MAKE) -f dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/build.make dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.provides.build
.PHONY : dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.provides

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.provides.build: dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o


# Object files for target test-constexpr-geometrytype
test__constexpr__geometrytype_OBJECTS = \
"CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o"

# External object files for target test-constexpr-geometrytype
test__constexpr__geometrytype_EXTERNAL_OBJECTS =

dune/geometry/test/test-constexpr-geometrytype: dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o
dune/geometry/test/test-constexpr-geometrytype: dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/build.make
dune/geometry/test/test-constexpr-geometrytype: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/geometry/test/test-constexpr-geometrytype: lib/libdunegeometry.a
dune/geometry/test/test-constexpr-geometrytype: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/geometry/test/test-constexpr-geometrytype: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/geometry/test/test-constexpr-geometrytype: dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-constexpr-geometrytype"
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-constexpr-geometrytype.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/build: dune/geometry/test/test-constexpr-geometrytype

.PHONY : dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/build

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/requires: dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/test-constexpr-geometrytype.cc.o.requires

.PHONY : dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/requires

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test && $(CMAKE_COMMAND) -P CMakeFiles/test-constexpr-geometrytype.dir/cmake_clean.cmake
.PHONY : dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/clean

dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-geometry /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test /home/paddy/pkg/dune_2d/dune-geometry/build-cmake /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/geometry/test/CMakeFiles/test-constexpr-geometrytype.dir/depend
