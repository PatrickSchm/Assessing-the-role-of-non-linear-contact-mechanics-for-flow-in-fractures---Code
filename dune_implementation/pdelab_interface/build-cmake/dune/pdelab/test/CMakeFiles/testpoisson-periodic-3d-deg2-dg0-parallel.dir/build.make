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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/pdelab_interface

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake

# Include any dependencies generated for this target.
include dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/depend.make

# Include the progress variables for this target.
include dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/progress.make

# Include the compile flags for this target's objects.
include dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/flags.make

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o: dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/flags.make
dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o: ../dune/pdelab/test/testpoisson-periodic-3d.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o -c /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/testpoisson-periodic-3d.cc

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.i"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/testpoisson-periodic-3d.cc > CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.i

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.s"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/testpoisson-periodic-3d.cc -o CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.s

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.requires:

.PHONY : dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.requires

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.provides: dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.requires
	$(MAKE) -f dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/build.make dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.provides.build
.PHONY : dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.provides

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.provides.build: dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o


# Object files for target testpoisson-periodic-3d-deg2-dg0-parallel
testpoisson__periodic__3d__deg2__dg0__parallel_OBJECTS = \
"CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o"

# External object files for target testpoisson-periodic-3d-deg2-dg0-parallel
testpoisson__periodic__3d__deg2__dg0__parallel_EXTERNAL_OBJECTS =

dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/build.make
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: lib/libdunepdelab.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libldl.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: lib/libdunepdelab.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libldl.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel: dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testpoisson-periodic-3d-deg2-dg0-parallel"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/build: dune/pdelab/test/testpoisson-periodic-3d-deg2-dg0-parallel

.PHONY : dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/build

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/requires: dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/testpoisson-periodic-3d.cc.o.requires

.PHONY : dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/requires

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/clean:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && $(CMAKE_COMMAND) -P CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/cmake_clean.cmake
.PHONY : dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/clean

dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/depend:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/pdelab_interface /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/pdelab/test/CMakeFiles/testpoisson-periodic-3d-deg2-dg0-parallel.dir/depend

