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
include dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/depend.make

# Include the progress variables for this target.
include dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/progress.make

# Include the compile flags for this target's objects.
include dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/flags.make

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o: dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/flags.make
dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o: ../dune/pdelab/test/fem/testfemwithgfs.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/fem && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o -c /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/fem/testfemwithgfs.cc

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.i"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/fem && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/fem/testfemwithgfs.cc > CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.i

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.s"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/fem && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/fem/testfemwithgfs.cc -o CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.s

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.requires:

.PHONY : dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.requires

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.provides: dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.requires
	$(MAKE) -f dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/build.make dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.provides.build
.PHONY : dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.provides

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.provides.build: dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o


# Object files for target testrt1cube2dfem
testrt1cube2dfem_OBJECTS = \
"CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o"

# External object files for target testrt1cube2dfem
testrt1cube2dfem_EXTERNAL_OBJECTS =

dune/pdelab/test/fem/testrt1cube2dfem: dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o
dune/pdelab/test/fem/testrt1cube2dfem: dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/build.make
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/fem/testrt1cube2dfem: lib/libdunepdelab.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libldl.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/pdelab/test/fem/testrt1cube2dfem: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/pdelab/test/fem/testrt1cube2dfem: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/pdelab/test/fem/testrt1cube2dfem: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/fem/testrt1cube2dfem: lib/libdunepdelab.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/fem/testrt1cube2dfem: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libldl.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/pdelab/test/fem/testrt1cube2dfem: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/pdelab/test/fem/testrt1cube2dfem: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/pdelab/test/fem/testrt1cube2dfem: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/pdelab/test/fem/testrt1cube2dfem: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/pdelab/test/fem/testrt1cube2dfem: dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testrt1cube2dfem"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/fem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testrt1cube2dfem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/build: dune/pdelab/test/fem/testrt1cube2dfem

.PHONY : dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/build

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/requires: dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/testfemwithgfs.cc.o.requires

.PHONY : dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/requires

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/clean:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/fem && $(CMAKE_COMMAND) -P CMakeFiles/testrt1cube2dfem.dir/cmake_clean.cmake
.PHONY : dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/clean

dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/depend:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/pdelab_interface /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/fem /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/fem /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/pdelab/test/fem/CMakeFiles/testrt1cube2dfem.dir/depend

