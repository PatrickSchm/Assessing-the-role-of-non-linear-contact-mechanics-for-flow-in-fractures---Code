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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-istl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-istl/build-cmake

# Include any dependencies generated for this target.
include dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/depend.make

# Include the progress variables for this target.
include dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/flags.make

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o: dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/flags.make
dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o: ../dune/istl/paamg/test/pthreadamgtest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-istl/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o -c /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test/pthreadamgtest.cc

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test/pthreadamgtest.cc > CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.i

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test/pthreadamgtest.cc -o CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.s

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.requires:

.PHONY : dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.requires

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.provides: dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.requires
	$(MAKE) -f dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/build.make dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.provides.build
.PHONY : dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.provides

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.provides.build: dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o


# Object files for target pthreadfastamgtest
pthreadfastamgtest_OBJECTS = \
"CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o"

# External object files for target pthreadfastamgtest
pthreadfastamgtest_EXTERNAL_OBJECTS =

dune/istl/paamg/test/pthreadfastamgtest: dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o
dune/istl/paamg/test/pthreadfastamgtest: dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/build.make
dune/istl/paamg/test/pthreadfastamgtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/istl/paamg/test/pthreadfastamgtest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/istl/paamg/test/pthreadfastamgtest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/istl/paamg/test/pthreadfastamgtest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/istl/paamg/test/pthreadfastamgtest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/istl/paamg/test/pthreadfastamgtest: dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-istl/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pthreadfastamgtest"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pthreadfastamgtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/build: dune/istl/paamg/test/pthreadfastamgtest

.PHONY : dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/build

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/requires: dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/pthreadamgtest.cc.o.requires

.PHONY : dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/requires

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && $(CMAKE_COMMAND) -P CMakeFiles/pthreadfastamgtest.dir/cmake_clean.cmake
.PHONY : dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/clean

dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-istl /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test /home/paddy/pkg/dune_2d/dune-istl/build-cmake /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/istl/paamg/test/CMakeFiles/pthreadfastamgtest.dir/depend

