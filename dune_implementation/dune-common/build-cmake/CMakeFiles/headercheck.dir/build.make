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

# Utility rule file for headercheck.

# Include the progress variables for this target.
include CMakeFiles/headercheck.dir/progress.make

CMakeFiles/headercheck:
	/usr/bin/cmake -DENABLE_HEADERCHECK= -P /home/paddy/pkg/dune_2d/dune-common/cmake/scripts/FinalizeHeadercheck.cmake

headercheck: CMakeFiles/headercheck
headercheck: CMakeFiles/headercheck.dir/build.make

.PHONY : headercheck

# Rule to build all files generated by this target.
CMakeFiles/headercheck.dir/build: headercheck

.PHONY : CMakeFiles/headercheck.dir/build

CMakeFiles/headercheck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/headercheck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/headercheck.dir/clean

CMakeFiles/headercheck.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-common /home/paddy/pkg/dune_2d/dune-common /home/paddy/pkg/dune_2d/dune-common/build-cmake /home/paddy/pkg/dune_2d/dune-common/build-cmake /home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles/headercheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/headercheck.dir/depend

