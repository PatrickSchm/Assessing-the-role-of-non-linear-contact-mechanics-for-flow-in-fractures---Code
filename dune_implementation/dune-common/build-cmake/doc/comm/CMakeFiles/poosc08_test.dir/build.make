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
include doc/comm/CMakeFiles/poosc08_test.dir/depend.make

# Include the progress variables for this target.
include doc/comm/CMakeFiles/poosc08_test.dir/progress.make

# Include the compile flags for this target's objects.
include doc/comm/CMakeFiles/poosc08_test.dir/flags.make

doc/comm/poosc08_test.cc: ../doc/comm/poosc08_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating poosc08_test.cc"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E copy /home/paddy/pkg/dune_2d/dune-common/doc/comm/poosc08_test.cc /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/poosc08_test.cc

doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o: doc/comm/CMakeFiles/poosc08_test.dir/flags.make
doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o: doc/comm/poosc08_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/poosc08_test.dir/poosc08_test.cc.o -c /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/poosc08_test.cc

doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/poosc08_test.dir/poosc08_test.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/poosc08_test.cc > CMakeFiles/poosc08_test.dir/poosc08_test.cc.i

doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/poosc08_test.dir/poosc08_test.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/poosc08_test.cc -o CMakeFiles/poosc08_test.dir/poosc08_test.cc.s

doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.requires:

.PHONY : doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.requires

doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.provides: doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.requires
	$(MAKE) -f doc/comm/CMakeFiles/poosc08_test.dir/build.make doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.provides.build
.PHONY : doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.provides

doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.provides.build: doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o


# Object files for target poosc08_test
poosc08_test_OBJECTS = \
"CMakeFiles/poosc08_test.dir/poosc08_test.cc.o"

# External object files for target poosc08_test
poosc08_test_EXTERNAL_OBJECTS =

doc/comm/poosc08_test: doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o
doc/comm/poosc08_test: doc/comm/CMakeFiles/poosc08_test.dir/build.make
doc/comm/poosc08_test: lib/libdunecommon.a
doc/comm/poosc08_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
doc/comm/poosc08_test: /usr/lib/x86_64-linux-gnu/liblapack.so
doc/comm/poosc08_test: /usr/lib/x86_64-linux-gnu/libf77blas.so
doc/comm/poosc08_test: /usr/lib/x86_64-linux-gnu/libatlas.so
doc/comm/poosc08_test: doc/comm/CMakeFiles/poosc08_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable poosc08_test"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/poosc08_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
doc/comm/CMakeFiles/poosc08_test.dir/build: doc/comm/poosc08_test

.PHONY : doc/comm/CMakeFiles/poosc08_test.dir/build

doc/comm/CMakeFiles/poosc08_test.dir/requires: doc/comm/CMakeFiles/poosc08_test.dir/poosc08_test.cc.o.requires

.PHONY : doc/comm/CMakeFiles/poosc08_test.dir/requires

doc/comm/CMakeFiles/poosc08_test.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && $(CMAKE_COMMAND) -P CMakeFiles/poosc08_test.dir/cmake_clean.cmake
.PHONY : doc/comm/CMakeFiles/poosc08_test.dir/clean

doc/comm/CMakeFiles/poosc08_test.dir/depend: doc/comm/poosc08_test.cc
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-common /home/paddy/pkg/dune_2d/dune-common/doc/comm /home/paddy/pkg/dune_2d/dune-common/build-cmake /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/CMakeFiles/poosc08_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/comm/CMakeFiles/poosc08_test.dir/depend
