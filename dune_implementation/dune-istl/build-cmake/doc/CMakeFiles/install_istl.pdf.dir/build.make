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

# Utility rule file for install_istl.pdf.

# Include the progress variables for this target.
include doc/CMakeFiles/install_istl.pdf.dir/progress.make

doc/CMakeFiles/install_istl.pdf:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-istl/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Installing istl.pdf to share/doc/dune-istl"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/doc && /usr/bin/cmake -D FILES=istl.pdf -D DIR=/usr/local/share/doc/dune-istl -P /home/paddy/pkg/dune_2d/dune-common/cmake/scripts/InstallFile.cmake

install_istl.pdf: doc/CMakeFiles/install_istl.pdf
install_istl.pdf: doc/CMakeFiles/install_istl.pdf.dir/build.make

.PHONY : install_istl.pdf

# Rule to build all files generated by this target.
doc/CMakeFiles/install_istl.pdf.dir/build: install_istl.pdf

.PHONY : doc/CMakeFiles/install_istl.pdf.dir/build

doc/CMakeFiles/install_istl.pdf.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/doc && $(CMAKE_COMMAND) -P CMakeFiles/install_istl.pdf.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/install_istl.pdf.dir/clean

doc/CMakeFiles/install_istl.pdf.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-istl /home/paddy/pkg/dune_2d/dune-istl/doc /home/paddy/pkg/dune_2d/dune-istl/build-cmake /home/paddy/pkg/dune_2d/dune-istl/build-cmake/doc /home/paddy/pkg/dune_2d/dune-istl/build-cmake/doc/CMakeFiles/install_istl.pdf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/install_istl.pdf.dir/depend

