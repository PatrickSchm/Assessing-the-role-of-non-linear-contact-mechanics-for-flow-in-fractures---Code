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
include parallel/ddd/join/CMakeFiles/join2.dir/depend.make

# Include the progress variables for this target.
include parallel/ddd/join/CMakeFiles/join2.dir/progress.make

# Include the compile flags for this target's objects.
include parallel/ddd/join/CMakeFiles/join2.dir/flags.make

parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o: parallel/ddd/join/CMakeFiles/join2.dir/flags.make
parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o: ../parallel/ddd/join/jcmds.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/join2.dir/jcmds.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/join/jcmds.cc

parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/join2.dir/jcmds.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/join/jcmds.cc > CMakeFiles/join2.dir/jcmds.cc.i

parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/join2.dir/jcmds.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/join/jcmds.cc -o CMakeFiles/join2.dir/jcmds.cc.s

parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.requires:

.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.requires

parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.provides: parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.requires
	$(MAKE) -f parallel/ddd/join/CMakeFiles/join2.dir/build.make parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.provides.build
.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.provides

parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.provides.build: parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o


parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o: parallel/ddd/join/CMakeFiles/join2.dir/flags.make
parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o: ../parallel/ddd/join/join.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/join2.dir/join.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/join/join.cc

parallel/ddd/join/CMakeFiles/join2.dir/join.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/join2.dir/join.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/join/join.cc > CMakeFiles/join2.dir/join.cc.i

parallel/ddd/join/CMakeFiles/join2.dir/join.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/join2.dir/join.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/join/join.cc -o CMakeFiles/join2.dir/join.cc.s

parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.requires:

.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.requires

parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.provides: parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.requires
	$(MAKE) -f parallel/ddd/join/CMakeFiles/join2.dir/build.make parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.provides.build
.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.provides

parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.provides.build: parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o


join2: parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o
join2: parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o
join2: parallel/ddd/join/CMakeFiles/join2.dir/build.make

.PHONY : join2

# Rule to build all files generated by this target.
parallel/ddd/join/CMakeFiles/join2.dir/build: join2

.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/build

parallel/ddd/join/CMakeFiles/join2.dir/requires: parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o.requires
parallel/ddd/join/CMakeFiles/join2.dir/requires: parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o.requires

.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/requires

parallel/ddd/join/CMakeFiles/join2.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join && $(CMAKE_COMMAND) -P CMakeFiles/join2.dir/cmake_clean.cmake
.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/clean

parallel/ddd/join/CMakeFiles/join2.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/join /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join/CMakeFiles/join2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : parallel/ddd/join/CMakeFiles/join2.dir/depend

