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
include dune/pdelab/test/CMakeFiles/testelasticity.dir/depend.make

# Include the progress variables for this target.
include dune/pdelab/test/CMakeFiles/testelasticity.dir/progress.make

# Include the compile flags for this target's objects.
include dune/pdelab/test/CMakeFiles/testelasticity.dir/flags.make

dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o: dune/pdelab/test/CMakeFiles/testelasticity.dir/flags.make
dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o: ../dune/pdelab/test/testelasticity.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testelasticity.dir/testelasticity.cc.o -c /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/testelasticity.cc

dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testelasticity.dir/testelasticity.cc.i"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/testelasticity.cc > CMakeFiles/testelasticity.dir/testelasticity.cc.i

dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testelasticity.dir/testelasticity.cc.s"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test/testelasticity.cc -o CMakeFiles/testelasticity.dir/testelasticity.cc.s

dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.requires:

.PHONY : dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.requires

dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.provides: dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.requires
	$(MAKE) -f dune/pdelab/test/CMakeFiles/testelasticity.dir/build.make dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.provides.build
.PHONY : dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.provides

dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.provides.build: dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o


# Object files for target testelasticity
testelasticity_OBJECTS = \
"CMakeFiles/testelasticity.dir/testelasticity.cc.o"

# External object files for target testelasticity
testelasticity_EXTERNAL_OBJECTS =

dune/pdelab/test/testelasticity: dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o
dune/pdelab/test/testelasticity: dune/pdelab/test/CMakeFiles/testelasticity.dir/build.make
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testelasticity: lib/libdunepdelab.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libldl.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/pdelab/test/testelasticity: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/pdelab/test/testelasticity: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/pdelab/test/testelasticity: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testelasticity: lib/libdunepdelab.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/pdelab/test/testelasticity: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libldl.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/pdelab/test/testelasticity: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/pdelab/test/testelasticity: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/pdelab/test/testelasticity: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/pdelab/test/testelasticity: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/pdelab/test/testelasticity: dune/pdelab/test/CMakeFiles/testelasticity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testelasticity"
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testelasticity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/pdelab/test/CMakeFiles/testelasticity.dir/build: dune/pdelab/test/testelasticity

.PHONY : dune/pdelab/test/CMakeFiles/testelasticity.dir/build

dune/pdelab/test/CMakeFiles/testelasticity.dir/requires: dune/pdelab/test/CMakeFiles/testelasticity.dir/testelasticity.cc.o.requires

.PHONY : dune/pdelab/test/CMakeFiles/testelasticity.dir/requires

dune/pdelab/test/CMakeFiles/testelasticity.dir/clean:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test && $(CMAKE_COMMAND) -P CMakeFiles/testelasticity.dir/cmake_clean.cmake
.PHONY : dune/pdelab/test/CMakeFiles/testelasticity.dir/clean

dune/pdelab/test/CMakeFiles/testelasticity.dir/depend:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/pdelab_interface /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/test /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/CMakeFiles/testelasticity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/pdelab/test/CMakeFiles/testelasticity.dir/depend

