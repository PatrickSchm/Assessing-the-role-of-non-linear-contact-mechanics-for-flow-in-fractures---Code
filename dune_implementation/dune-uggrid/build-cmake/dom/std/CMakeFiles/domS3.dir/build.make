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
include dom/std/CMakeFiles/domS3.dir/depend.make

# Include the progress variables for this target.
include dom/std/CMakeFiles/domS3.dir/progress.make

# Include the compile flags for this target's objects.
include dom/std/CMakeFiles/domS3.dir/flags.make

dom/std/CMakeFiles/domS3.dir/std_domain.cc.o: dom/std/CMakeFiles/domS3.dir/flags.make
dom/std/CMakeFiles/domS3.dir/std_domain.cc.o: ../dom/std/std_domain.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dom/std/CMakeFiles/domS3.dir/std_domain.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/domS3.dir/std_domain.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/dom/std/std_domain.cc

dom/std/CMakeFiles/domS3.dir/std_domain.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/domS3.dir/std_domain.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/dom/std/std_domain.cc > CMakeFiles/domS3.dir/std_domain.cc.i

dom/std/CMakeFiles/domS3.dir/std_domain.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/domS3.dir/std_domain.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/dom/std/std_domain.cc -o CMakeFiles/domS3.dir/std_domain.cc.s

dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.requires:

.PHONY : dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.requires

dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.provides: dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.requires
	$(MAKE) -f dom/std/CMakeFiles/domS3.dir/build.make dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.provides.build
.PHONY : dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.provides

dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.provides.build: dom/std/CMakeFiles/domS3.dir/std_domain.cc.o


dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o: dom/std/CMakeFiles/domS3.dir/flags.make
dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o: ../dom/std/std_parallel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/domS3.dir/std_parallel.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/dom/std/std_parallel.cc

dom/std/CMakeFiles/domS3.dir/std_parallel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/domS3.dir/std_parallel.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/dom/std/std_parallel.cc > CMakeFiles/domS3.dir/std_parallel.cc.i

dom/std/CMakeFiles/domS3.dir/std_parallel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/domS3.dir/std_parallel.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/dom/std/std_parallel.cc -o CMakeFiles/domS3.dir/std_parallel.cc.s

dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.requires:

.PHONY : dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.requires

dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.provides: dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.requires
	$(MAKE) -f dom/std/CMakeFiles/domS3.dir/build.make dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.provides.build
.PHONY : dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.provides

dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.provides.build: dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o


domS3: dom/std/CMakeFiles/domS3.dir/std_domain.cc.o
domS3: dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o
domS3: dom/std/CMakeFiles/domS3.dir/build.make

.PHONY : domS3

# Rule to build all files generated by this target.
dom/std/CMakeFiles/domS3.dir/build: domS3

.PHONY : dom/std/CMakeFiles/domS3.dir/build

dom/std/CMakeFiles/domS3.dir/requires: dom/std/CMakeFiles/domS3.dir/std_domain.cc.o.requires
dom/std/CMakeFiles/domS3.dir/requires: dom/std/CMakeFiles/domS3.dir/std_parallel.cc.o.requires

.PHONY : dom/std/CMakeFiles/domS3.dir/requires

dom/std/CMakeFiles/domS3.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std && $(CMAKE_COMMAND) -P CMakeFiles/domS3.dir/cmake_clean.cmake
.PHONY : dom/std/CMakeFiles/domS3.dir/clean

dom/std/CMakeFiles/domS3.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/dom/std /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std/CMakeFiles/domS3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dom/std/CMakeFiles/domS3.dir/depend
