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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-typetree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-typetree/build-cmake

# Include any dependencies generated for this target.
include test/CMakeFiles/testproxynode.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testproxynode.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testproxynode.dir/flags.make

test/CMakeFiles/testproxynode.dir/testproxynode.cc.o: test/CMakeFiles/testproxynode.dir/flags.make
test/CMakeFiles/testproxynode.dir/testproxynode.cc.o: ../test/testproxynode.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-typetree/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/testproxynode.dir/testproxynode.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testproxynode.dir/testproxynode.cc.o -c /home/paddy/pkg/dune_2d/dune-typetree/test/testproxynode.cc

test/CMakeFiles/testproxynode.dir/testproxynode.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testproxynode.dir/testproxynode.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-typetree/test/testproxynode.cc > CMakeFiles/testproxynode.dir/testproxynode.cc.i

test/CMakeFiles/testproxynode.dir/testproxynode.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testproxynode.dir/testproxynode.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-typetree/test/testproxynode.cc -o CMakeFiles/testproxynode.dir/testproxynode.cc.s

test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.requires:

.PHONY : test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.requires

test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.provides: test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.requires
	$(MAKE) -f test/CMakeFiles/testproxynode.dir/build.make test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.provides.build
.PHONY : test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.provides

test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.provides.build: test/CMakeFiles/testproxynode.dir/testproxynode.cc.o


# Object files for target testproxynode
testproxynode_OBJECTS = \
"CMakeFiles/testproxynode.dir/testproxynode.cc.o"

# External object files for target testproxynode
testproxynode_EXTERNAL_OBJECTS =

test/testproxynode: test/CMakeFiles/testproxynode.dir/testproxynode.cc.o
test/testproxynode: test/CMakeFiles/testproxynode.dir/build.make
test/testproxynode: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
test/testproxynode: /usr/lib/x86_64-linux-gnu/libgmp.so
test/testproxynode: /usr/lib/x86_64-linux-gnu/libgmpxx.so
test/testproxynode: /usr/lib/x86_64-linux-gnu/liblapack.so
test/testproxynode: /usr/lib/x86_64-linux-gnu/libf77blas.so
test/testproxynode: /usr/lib/x86_64-linux-gnu/libatlas.so
test/testproxynode: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
test/testproxynode: test/CMakeFiles/testproxynode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-typetree/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testproxynode"
	cd /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testproxynode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testproxynode.dir/build: test/testproxynode

.PHONY : test/CMakeFiles/testproxynode.dir/build

test/CMakeFiles/testproxynode.dir/requires: test/CMakeFiles/testproxynode.dir/testproxynode.cc.o.requires

.PHONY : test/CMakeFiles/testproxynode.dir/requires

test/CMakeFiles/testproxynode.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test && $(CMAKE_COMMAND) -P CMakeFiles/testproxynode.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/testproxynode.dir/clean

test/CMakeFiles/testproxynode.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-typetree/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-typetree /home/paddy/pkg/dune_2d/dune-typetree/test /home/paddy/pkg/dune_2d/dune-typetree/build-cmake /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test/CMakeFiles/testproxynode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/testproxynode.dir/depend
