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
include parallel/ddd/if/CMakeFiles/if2.dir/depend.make

# Include the progress variables for this target.
include parallel/ddd/if/CMakeFiles/if2.dir/progress.make

# Include the compile flags for this target's objects.
include parallel/ddd/if/CMakeFiles/if2.dir/flags.make

parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o: parallel/ddd/if/CMakeFiles/if2.dir/flags.make
parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o: ../parallel/ddd/if/ifcreate.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/if2.dir/ifcreate.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcreate.cc

parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/if2.dir/ifcreate.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcreate.cc > CMakeFiles/if2.dir/ifcreate.cc.i

parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/if2.dir/ifcreate.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcreate.cc -o CMakeFiles/if2.dir/ifcreate.cc.s

parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.requires:

.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.requires

parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.provides: parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.requires
	$(MAKE) -f parallel/ddd/if/CMakeFiles/if2.dir/build.make parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.provides.build
.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.provides

parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.provides.build: parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o


parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o: parallel/ddd/if/CMakeFiles/if2.dir/flags.make
parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o: ../parallel/ddd/if/ifuse.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/if2.dir/ifuse.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifuse.cc

parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/if2.dir/ifuse.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifuse.cc > CMakeFiles/if2.dir/ifuse.cc.i

parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/if2.dir/ifuse.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifuse.cc -o CMakeFiles/if2.dir/ifuse.cc.s

parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.requires:

.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.requires

parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.provides: parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.requires
	$(MAKE) -f parallel/ddd/if/CMakeFiles/if2.dir/build.make parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.provides.build
.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.provides

parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.provides.build: parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o


parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o: parallel/ddd/if/CMakeFiles/if2.dir/flags.make
parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o: ../parallel/ddd/if/ifcmds.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/if2.dir/ifcmds.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcmds.cc

parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/if2.dir/ifcmds.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcmds.cc > CMakeFiles/if2.dir/ifcmds.cc.i

parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/if2.dir/ifcmds.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcmds.cc -o CMakeFiles/if2.dir/ifcmds.cc.s

parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.requires:

.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.requires

parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.provides: parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.requires
	$(MAKE) -f parallel/ddd/if/CMakeFiles/if2.dir/build.make parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.provides.build
.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.provides

parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.provides.build: parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o


parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o: parallel/ddd/if/CMakeFiles/if2.dir/flags.make
parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o: ../parallel/ddd/if/ifcheck.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/if2.dir/ifcheck.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcheck.cc

parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/if2.dir/ifcheck.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcheck.cc > CMakeFiles/if2.dir/ifcheck.cc.i

parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/if2.dir/ifcheck.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifcheck.cc -o CMakeFiles/if2.dir/ifcheck.cc.s

parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.requires:

.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.requires

parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.provides: parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.requires
	$(MAKE) -f parallel/ddd/if/CMakeFiles/if2.dir/build.make parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.provides.build
.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.provides

parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.provides.build: parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o


parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o: parallel/ddd/if/CMakeFiles/if2.dir/flags.make
parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o: ../parallel/ddd/if/ifobjsc.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/if2.dir/ifobjsc.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifobjsc.cc

parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/if2.dir/ifobjsc.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifobjsc.cc > CMakeFiles/if2.dir/ifobjsc.cc.i

parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/if2.dir/ifobjsc.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if/ifobjsc.cc -o CMakeFiles/if2.dir/ifobjsc.cc.s

parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.requires:

.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.requires

parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.provides: parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.requires
	$(MAKE) -f parallel/ddd/if/CMakeFiles/if2.dir/build.make parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.provides.build
.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.provides

parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.provides.build: parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o


if2: parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o
if2: parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o
if2: parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o
if2: parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o
if2: parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o
if2: parallel/ddd/if/CMakeFiles/if2.dir/build.make

.PHONY : if2

# Rule to build all files generated by this target.
parallel/ddd/if/CMakeFiles/if2.dir/build: if2

.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/build

parallel/ddd/if/CMakeFiles/if2.dir/requires: parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o.requires
parallel/ddd/if/CMakeFiles/if2.dir/requires: parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o.requires
parallel/ddd/if/CMakeFiles/if2.dir/requires: parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o.requires
parallel/ddd/if/CMakeFiles/if2.dir/requires: parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o.requires
parallel/ddd/if/CMakeFiles/if2.dir/requires: parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o.requires

.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/requires

parallel/ddd/if/CMakeFiles/if2.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if && $(CMAKE_COMMAND) -P CMakeFiles/if2.dir/cmake_clean.cmake
.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/clean

parallel/ddd/if/CMakeFiles/if2.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/if /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if/CMakeFiles/if2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : parallel/ddd/if/CMakeFiles/if2.dir/depend

