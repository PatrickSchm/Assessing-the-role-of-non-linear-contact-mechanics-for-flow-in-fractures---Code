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

# Include any dependencies generated for this target.
include dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/depend.make

# Include the progress variables for this target.
include dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/flags.make

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o: dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/flags.make
dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o: ../dune/functions/gridfunctions/test/localfunctioncopytest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o -c /home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/test/localfunctioncopytest.cc

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/test/localfunctioncopytest.cc > CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.i

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/test/localfunctioncopytest.cc -o CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.s

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.requires:

.PHONY : dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.requires

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.provides: dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.requires
	$(MAKE) -f dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/build.make dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.provides.build
.PHONY : dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.provides

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.provides.build: dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o


# Object files for target localfunctioncopytest
localfunctioncopytest_OBJECTS = \
"CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o"

# External object files for target localfunctioncopytest
localfunctioncopytest_EXTERNAL_OBJECTS =

dune/functions/gridfunctions/test/localfunctioncopytest: dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o
dune/functions/gridfunctions/test/localfunctioncopytest: dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/build.make
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/functions/gridfunctions/test/localfunctioncopytest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libldl.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libamd.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/functions/gridfunctions/test/localfunctioncopytest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/functions/gridfunctions/test/localfunctioncopytest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/functions/gridfunctions/test/localfunctioncopytest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/functions/gridfunctions/test/localfunctioncopytest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/functions/gridfunctions/test/localfunctioncopytest: dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable localfunctioncopytest"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/localfunctioncopytest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/build: dune/functions/gridfunctions/test/localfunctioncopytest

.PHONY : dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/build

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/requires: dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/localfunctioncopytest.cc.o.requires

.PHONY : dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/requires

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test && $(CMAKE_COMMAND) -P CMakeFiles/localfunctioncopytest.dir/cmake_clean.cmake
.PHONY : dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/clean

dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-functions /home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/test /home/paddy/pkg/dune_2d/dune-functions/build-cmake /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/functions/gridfunctions/test/CMakeFiles/localfunctioncopytest.dir/depend
