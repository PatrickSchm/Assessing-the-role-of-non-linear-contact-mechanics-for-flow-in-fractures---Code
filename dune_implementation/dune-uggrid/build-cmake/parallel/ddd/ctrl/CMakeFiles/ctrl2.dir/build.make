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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-uggrid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake

# Include any dependencies generated for this target.
include parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/depend.make

# Include the progress variables for this target.
include parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/progress.make

# Include the compile flags for this target's objects.
include parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/flags.make

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/flags.make
parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o: ../parallel/ddd/ctrl/cons.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ctrl2.dir/cons.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/cons.cc

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ctrl2.dir/cons.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/cons.cc > CMakeFiles/ctrl2.dir/cons.cc.i

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ctrl2.dir/cons.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/cons.cc -o CMakeFiles/ctrl2.dir/cons.cc.s

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.requires:

.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.requires

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.provides: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.requires
	$(MAKE) -f parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/build.make parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.provides.build
.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.provides

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.provides.build: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o


parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/flags.make
parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o: ../parallel/ddd/ctrl/debug.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ctrl2.dir/debug.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/debug.cc

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ctrl2.dir/debug.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/debug.cc > CMakeFiles/ctrl2.dir/debug.cc.i

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ctrl2.dir/debug.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/debug.cc -o CMakeFiles/ctrl2.dir/debug.cc.s

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.requires:

.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.requires

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.provides: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.requires
	$(MAKE) -f parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/build.make parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.provides.build
.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.provides

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.provides.build: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o


parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/flags.make
parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o: ../parallel/ddd/ctrl/stat.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ctrl2.dir/stat.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/stat.cc

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ctrl2.dir/stat.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/stat.cc > CMakeFiles/ctrl2.dir/stat.cc.i

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ctrl2.dir/stat.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl/stat.cc -o CMakeFiles/ctrl2.dir/stat.cc.s

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.requires:

.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.requires

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.provides: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.requires
	$(MAKE) -f parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/build.make parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.provides.build
.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.provides

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.provides.build: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o


ctrl2: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o
ctrl2: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o
ctrl2: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o
ctrl2: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/build.make

.PHONY : ctrl2

# Rule to build all files generated by this target.
parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/build: ctrl2

.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/build

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/requires: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o.requires
parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/requires: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o.requires
parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/requires: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o.requires

.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/requires

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl && $(CMAKE_COMMAND) -P CMakeFiles/ctrl2.dir/cmake_clean.cmake
.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/clean

parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/ctrl /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/depend
