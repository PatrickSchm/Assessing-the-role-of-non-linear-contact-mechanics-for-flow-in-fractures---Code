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
include np/CMakeFiles/np3.dir/depend.make

# Include the progress variables for this target.
include np/CMakeFiles/np3.dir/progress.make

# Include the compile flags for this target's objects.
include np/CMakeFiles/np3.dir/flags.make

np/CMakeFiles/np3.dir/initnp.cc.o: np/CMakeFiles/np3.dir/flags.make
np/CMakeFiles/np3.dir/initnp.cc.o: ../np/initnp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object np/CMakeFiles/np3.dir/initnp.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/np3.dir/initnp.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/np/initnp.cc

np/CMakeFiles/np3.dir/initnp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/np3.dir/initnp.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/np/initnp.cc > CMakeFiles/np3.dir/initnp.cc.i

np/CMakeFiles/np3.dir/initnp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/np3.dir/initnp.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/np/initnp.cc -o CMakeFiles/np3.dir/initnp.cc.s

np/CMakeFiles/np3.dir/initnp.cc.o.requires:

.PHONY : np/CMakeFiles/np3.dir/initnp.cc.o.requires

np/CMakeFiles/np3.dir/initnp.cc.o.provides: np/CMakeFiles/np3.dir/initnp.cc.o.requires
	$(MAKE) -f np/CMakeFiles/np3.dir/build.make np/CMakeFiles/np3.dir/initnp.cc.o.provides.build
.PHONY : np/CMakeFiles/np3.dir/initnp.cc.o.provides

np/CMakeFiles/np3.dir/initnp.cc.o.provides.build: np/CMakeFiles/np3.dir/initnp.cc.o


np3: np/CMakeFiles/np3.dir/initnp.cc.o
np3: np/CMakeFiles/np3.dir/build.make

.PHONY : np3

# Rule to build all files generated by this target.
np/CMakeFiles/np3.dir/build: np3

.PHONY : np/CMakeFiles/np3.dir/build

np/CMakeFiles/np3.dir/requires: np/CMakeFiles/np3.dir/initnp.cc.o.requires

.PHONY : np/CMakeFiles/np3.dir/requires

np/CMakeFiles/np3.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np && $(CMAKE_COMMAND) -P CMakeFiles/np3.dir/cmake_clean.cmake
.PHONY : np/CMakeFiles/np3.dir/clean

np/CMakeFiles/np3.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/np /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/CMakeFiles/np3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : np/CMakeFiles/np3.dir/depend

