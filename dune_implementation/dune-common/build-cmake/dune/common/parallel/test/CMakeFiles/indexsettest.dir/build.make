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
include dune/common/parallel/test/CMakeFiles/indexsettest.dir/depend.make

# Include the progress variables for this target.
include dune/common/parallel/test/CMakeFiles/indexsettest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/common/parallel/test/CMakeFiles/indexsettest.dir/flags.make

dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o: dune/common/parallel/test/CMakeFiles/indexsettest.dir/flags.make
dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o: ../dune/common/parallel/test/indexsettest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/indexsettest.dir/indexsettest.cc.o -c /home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/test/indexsettest.cc

dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indexsettest.dir/indexsettest.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/test/indexsettest.cc > CMakeFiles/indexsettest.dir/indexsettest.cc.i

dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indexsettest.dir/indexsettest.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/test/indexsettest.cc -o CMakeFiles/indexsettest.dir/indexsettest.cc.s

dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.requires:

.PHONY : dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.requires

dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.provides: dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.requires
	$(MAKE) -f dune/common/parallel/test/CMakeFiles/indexsettest.dir/build.make dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.provides.build
.PHONY : dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.provides

dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.provides.build: dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o


# Object files for target indexsettest
indexsettest_OBJECTS = \
"CMakeFiles/indexsettest.dir/indexsettest.cc.o"

# External object files for target indexsettest
indexsettest_EXTERNAL_OBJECTS =

dune/common/parallel/test/indexsettest: dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o
dune/common/parallel/test/indexsettest: dune/common/parallel/test/CMakeFiles/indexsettest.dir/build.make
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/common/parallel/test/indexsettest: lib/libdunecommon.a
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/common/parallel/test/indexsettest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/common/parallel/test/indexsettest: dune/common/parallel/test/CMakeFiles/indexsettest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable indexsettest"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/indexsettest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/common/parallel/test/CMakeFiles/indexsettest.dir/build: dune/common/parallel/test/indexsettest

.PHONY : dune/common/parallel/test/CMakeFiles/indexsettest.dir/build

dune/common/parallel/test/CMakeFiles/indexsettest.dir/requires: dune/common/parallel/test/CMakeFiles/indexsettest.dir/indexsettest.cc.o.requires

.PHONY : dune/common/parallel/test/CMakeFiles/indexsettest.dir/requires

dune/common/parallel/test/CMakeFiles/indexsettest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test && $(CMAKE_COMMAND) -P CMakeFiles/indexsettest.dir/cmake_clean.cmake
.PHONY : dune/common/parallel/test/CMakeFiles/indexsettest.dir/clean

dune/common/parallel/test/CMakeFiles/indexsettest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-common /home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/test /home/paddy/pkg/dune_2d/dune-common/build-cmake /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/CMakeFiles/indexsettest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/common/parallel/test/CMakeFiles/indexsettest.dir/depend
