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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-common

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-common/build-cmake

# Include any dependencies generated for this target.
include dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/depend.make

# Include the progress variables for this target.
include dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/progress.make

# Include the compile flags for this target's objects.
include dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/flags.make

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o: dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/flags.make
dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o: ../dune/common/test/testdebugallocator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o -c /home/paddy/pkg/dune_2d/dune-common/dune/common/test/testdebugallocator.cc

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-common/dune/common/test/testdebugallocator.cc > CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.i

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-common/dune/common/test/testdebugallocator.cc -o CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.s

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.requires:

.PHONY : dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.requires

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.provides: dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.requires
	$(MAKE) -f dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/build.make dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.provides.build
.PHONY : dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.provides

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.provides.build: dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o


# Object files for target testdebugallocator_fail5
testdebugallocator_fail5_OBJECTS = \
"CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o"

# External object files for target testdebugallocator_fail5
testdebugallocator_fail5_EXTERNAL_OBJECTS =

dune/common/test/testdebugallocator_fail5: dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o
dune/common/test/testdebugallocator_fail5: dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/build.make
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/common/test/testdebugallocator_fail5: lib/libdunecommon.a
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/common/test/testdebugallocator_fail5: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/common/test/testdebugallocator_fail5: dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testdebugallocator_fail5"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testdebugallocator_fail5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/build: dune/common/test/testdebugallocator_fail5

.PHONY : dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/build

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/requires: dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/testdebugallocator.cc.o.requires

.PHONY : dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/requires

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test && $(CMAKE_COMMAND) -P CMakeFiles/testdebugallocator_fail5.dir/cmake_clean.cmake
.PHONY : dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/clean

dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-common /home/paddy/pkg/dune_2d/dune-common/dune/common/test /home/paddy/pkg/dune_2d/dune-common/build-cmake /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/common/test/CMakeFiles/testdebugallocator_fail5.dir/depend

