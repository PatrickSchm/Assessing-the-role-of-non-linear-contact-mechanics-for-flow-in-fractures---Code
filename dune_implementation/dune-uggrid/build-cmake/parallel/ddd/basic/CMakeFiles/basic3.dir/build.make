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
include parallel/ddd/basic/CMakeFiles/basic3.dir/depend.make

# Include the progress variables for this target.
include parallel/ddd/basic/CMakeFiles/basic3.dir/progress.make

# Include the compile flags for this target's objects.
include parallel/ddd/basic/CMakeFiles/basic3.dir/flags.make

parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o: parallel/ddd/basic/CMakeFiles/basic3.dir/flags.make
parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o: ../parallel/ddd/basic/io.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/basic3.dir/io.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/io.cc

parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic3.dir/io.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/io.cc > CMakeFiles/basic3.dir/io.cc.i

parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic3.dir/io.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/io.cc -o CMakeFiles/basic3.dir/io.cc.s

parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.requires:

.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.requires

parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.provides: parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.requires
	$(MAKE) -f parallel/ddd/basic/CMakeFiles/basic3.dir/build.make parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.provides.build
.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.provides

parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.provides.build: parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o


parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o: parallel/ddd/basic/CMakeFiles/basic3.dir/flags.make
parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o: ../parallel/ddd/basic/lowcomm.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/basic3.dir/lowcomm.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/lowcomm.cc

parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic3.dir/lowcomm.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/lowcomm.cc > CMakeFiles/basic3.dir/lowcomm.cc.i

parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic3.dir/lowcomm.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/lowcomm.cc -o CMakeFiles/basic3.dir/lowcomm.cc.s

parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.requires:

.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.requires

parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.provides: parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.requires
	$(MAKE) -f parallel/ddd/basic/CMakeFiles/basic3.dir/build.make parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.provides.build
.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.provides

parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.provides.build: parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o


parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o: parallel/ddd/basic/CMakeFiles/basic3.dir/flags.make
parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o: ../parallel/ddd/basic/notify.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/basic3.dir/notify.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/notify.cc

parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic3.dir/notify.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/notify.cc > CMakeFiles/basic3.dir/notify.cc.i

parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic3.dir/notify.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/notify.cc -o CMakeFiles/basic3.dir/notify.cc.s

parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.requires:

.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.requires

parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.provides: parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.requires
	$(MAKE) -f parallel/ddd/basic/CMakeFiles/basic3.dir/build.make parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.provides.build
.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.provides

parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.provides.build: parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o


parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o: parallel/ddd/basic/CMakeFiles/basic3.dir/flags.make
parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o: ../parallel/ddd/basic/reduct.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/basic3.dir/reduct.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/reduct.cc

parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic3.dir/reduct.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/reduct.cc > CMakeFiles/basic3.dir/reduct.cc.i

parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic3.dir/reduct.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/reduct.cc -o CMakeFiles/basic3.dir/reduct.cc.s

parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.requires:

.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.requires

parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.provides: parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.requires
	$(MAKE) -f parallel/ddd/basic/CMakeFiles/basic3.dir/build.make parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.provides.build
.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.provides

parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.provides.build: parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o


parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o: parallel/ddd/basic/CMakeFiles/basic3.dir/flags.make
parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o: ../parallel/ddd/basic/topo.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/basic3.dir/topo.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/topo.cc

parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic3.dir/topo.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/topo.cc > CMakeFiles/basic3.dir/topo.cc.i

parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic3.dir/topo.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/topo.cc -o CMakeFiles/basic3.dir/topo.cc.s

parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.requires:

.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.requires

parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.provides: parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.requires
	$(MAKE) -f parallel/ddd/basic/CMakeFiles/basic3.dir/build.make parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.provides.build
.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.provides

parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.provides.build: parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o


basic3: parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o
basic3: parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o
basic3: parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o
basic3: parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o
basic3: parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o
basic3: parallel/ddd/basic/CMakeFiles/basic3.dir/build.make

.PHONY : basic3

# Rule to build all files generated by this target.
parallel/ddd/basic/CMakeFiles/basic3.dir/build: basic3

.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/build

parallel/ddd/basic/CMakeFiles/basic3.dir/requires: parallel/ddd/basic/CMakeFiles/basic3.dir/io.cc.o.requires
parallel/ddd/basic/CMakeFiles/basic3.dir/requires: parallel/ddd/basic/CMakeFiles/basic3.dir/lowcomm.cc.o.requires
parallel/ddd/basic/CMakeFiles/basic3.dir/requires: parallel/ddd/basic/CMakeFiles/basic3.dir/notify.cc.o.requires
parallel/ddd/basic/CMakeFiles/basic3.dir/requires: parallel/ddd/basic/CMakeFiles/basic3.dir/reduct.cc.o.requires
parallel/ddd/basic/CMakeFiles/basic3.dir/requires: parallel/ddd/basic/CMakeFiles/basic3.dir/topo.cc.o.requires

.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/requires

parallel/ddd/basic/CMakeFiles/basic3.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic && $(CMAKE_COMMAND) -P CMakeFiles/basic3.dir/cmake_clean.cmake
.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/clean

parallel/ddd/basic/CMakeFiles/basic3.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/CMakeFiles/basic3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : parallel/ddd/basic/CMakeFiles/basic3.dir/depend

