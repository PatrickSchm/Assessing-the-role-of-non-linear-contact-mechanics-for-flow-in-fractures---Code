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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-functions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-functions/build-cmake

# Utility rule file for dune-functions-manual_safepdf.

# Include the progress variables for this target.
include doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/progress.make

doc/manual/CMakeFiles/dune-functions-manual_safepdf:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /usr/bin/ps2pdf14 -dMaxSubsetPct=100 -dCompatibilityLevel=1.3 -dSubsetFonts=true -dEmbedAllFonts=true -dAutoFilterColorImages=false -dAutoFilterGrayImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dMonoImageFilter=/FlateEncode dune-functions-manual.ps dune-functions-manual.pdf

dune-functions-manual_safepdf: doc/manual/CMakeFiles/dune-functions-manual_safepdf
dune-functions-manual_safepdf: doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/build.make

.PHONY : dune-functions-manual_safepdf

# Rule to build all files generated by this target.
doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/build: dune-functions-manual_safepdf

.PHONY : doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/build

doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && $(CMAKE_COMMAND) -P CMakeFiles/dune-functions-manual_safepdf.dir/cmake_clean.cmake
.PHONY : doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/clean

doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-functions /home/paddy/pkg/dune_2d/dune-functions/doc/manual /home/paddy/pkg/dune_2d/dune-functions/build-cmake /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/manual/CMakeFiles/dune-functions-manual_safepdf.dir/depend

