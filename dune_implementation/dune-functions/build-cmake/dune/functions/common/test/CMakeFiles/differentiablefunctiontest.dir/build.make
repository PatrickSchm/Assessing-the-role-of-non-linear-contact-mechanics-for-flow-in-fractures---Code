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
include dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/depend.make

# Include the progress variables for this target.
include dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/flags.make

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o: dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/flags.make
dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o: ../dune/functions/common/test/differentiablefunctiontest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o -c /home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/test/differentiablefunctiontest.cc

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/test/differentiablefunctiontest.cc > CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.i

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/test/differentiablefunctiontest.cc -o CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.s

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.requires:

.PHONY : dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.requires

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.provides: dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.requires
	$(MAKE) -f dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/build.make dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.provides.build
.PHONY : dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.provides

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.provides.build: dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o


# Object files for target differentiablefunctiontest
differentiablefunctiontest_OBJECTS = \
"CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o"

# External object files for target differentiablefunctiontest
differentiablefunctiontest_EXTERNAL_OBJECTS =

dune/functions/common/test/differentiablefunctiontest: dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o
dune/functions/common/test/differentiablefunctiontest: dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/build.make
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/lib/libdunegrid.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-geometry/build-cmake/lib/libdunegeometry.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a
dune/functions/common/test/differentiablefunctiontest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libldl.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libamd.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/functions/common/test/differentiablefunctiontest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/functions/common/test/differentiablefunctiontest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/functions/common/test/differentiablefunctiontest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/functions/common/test/differentiablefunctiontest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/functions/common/test/differentiablefunctiontest: dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable differentiablefunctiontest"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/differentiablefunctiontest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/build: dune/functions/common/test/differentiablefunctiontest

.PHONY : dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/build

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/requires: dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/differentiablefunctiontest.cc.o.requires

.PHONY : dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/requires

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test && $(CMAKE_COMMAND) -P CMakeFiles/differentiablefunctiontest.dir/cmake_clean.cmake
.PHONY : dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/clean

dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-functions /home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/test /home/paddy/pkg/dune_2d/dune-functions/build-cmake /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/functions/common/test/CMakeFiles/differentiablefunctiontest.dir/depend

