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

# Utility rule file for refinement.

# Include the progress variables for this target.
include doc/refinement/CMakeFiles/refinement.dir/progress.make

doc/refinement/CMakeFiles/refinement:


refinement: doc/refinement/CMakeFiles/refinement
refinement: doc/refinement/CMakeFiles/refinement.dir/build.make

.PHONY : refinement

# Rule to build all files generated by this target.
doc/refinement/CMakeFiles/refinement.dir/build: refinement

.PHONY : doc/refinement/CMakeFiles/refinement.dir/build

doc/refinement/CMakeFiles/refinement.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/doc/refinement && $(CMAKE_COMMAND) -P CMakeFiles/refinement.dir/cmake_clean.cmake
.PHONY : doc/refinement/CMakeFiles/refinement.dir/clean

doc/refinement/CMakeFiles/refinement.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-geometry/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-geometry /home/paddy/pkg/dune_2d/dune-geometry/doc/refinement /home/paddy/pkg/dune_2d/dune-geometry/build-cmake /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/doc/refinement /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/doc/refinement/CMakeFiles/refinement.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/refinement/CMakeFiles/refinement.dir/depend
