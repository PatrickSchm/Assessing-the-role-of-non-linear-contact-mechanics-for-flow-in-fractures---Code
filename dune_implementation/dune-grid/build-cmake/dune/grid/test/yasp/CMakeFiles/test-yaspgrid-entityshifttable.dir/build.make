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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-grid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-grid/build-cmake

# Include any dependencies generated for this target.
include dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/depend.make

# Include the progress variables for this target.
include dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/progress.make

# Include the compile flags for this target's objects.
include dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/flags.make

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o: dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/flags.make
dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o: ../dune/grid/test/yasp/test-yaspgrid-entityshifttable.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-grid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o -c /home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/yasp/test-yaspgrid-entityshifttable.cc

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/yasp/test-yaspgrid-entityshifttable.cc > CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.i

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/yasp/test-yaspgrid-entityshifttable.cc -o CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.s

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.requires:

.PHONY : dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.requires

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.provides: dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.requires
	$(MAKE) -f dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/build.make dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.provides.build
.PHONY : dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.provides

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.provides.build: dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o


# Object files for target test-yaspgrid-entityshifttable
test__yaspgrid__entityshifttable_OBJECTS = \
"CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o"

# External object files for target test-yaspgrid-entityshifttable
test__yaspgrid__entityshifttable_EXTERNAL_OBJECTS =

dune/grid/test/yasp/test-yaspgrid-entityshifttable: dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o
dune/grid/test/yasp/test-yaspgrid-entityshifttable: dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/build.make
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: lib/libdunegrid.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/grid/test/yasp/test-yaspgrid-entityshifttable: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/grid/test/yasp/test-yaspgrid-entityshifttable: dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-grid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-yaspgrid-entityshifttable"
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-yaspgrid-entityshifttable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/build: dune/grid/test/yasp/test-yaspgrid-entityshifttable

.PHONY : dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/build

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/requires: dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/test-yaspgrid-entityshifttable.cc.o.requires

.PHONY : dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/requires

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp && $(CMAKE_COMMAND) -P CMakeFiles/test-yaspgrid-entityshifttable.dir/cmake_clean.cmake
.PHONY : dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/clean

dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-grid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-grid /home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/yasp /home/paddy/pkg/dune_2d/dune-grid/build-cmake /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/grid/test/yasp/CMakeFiles/test-yaspgrid-entityshifttable.dir/depend

