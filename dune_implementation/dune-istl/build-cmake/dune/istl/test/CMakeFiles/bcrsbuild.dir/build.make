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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-istl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-istl/build-cmake

# Include any dependencies generated for this target.
include dune/istl/test/CMakeFiles/bcrsbuild.dir/depend.make

# Include the progress variables for this target.
include dune/istl/test/CMakeFiles/bcrsbuild.dir/progress.make

# Include the compile flags for this target's objects.
include dune/istl/test/CMakeFiles/bcrsbuild.dir/flags.make

dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o: dune/istl/test/CMakeFiles/bcrsbuild.dir/flags.make
dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o: ../dune/istl/test/bcrsbuild.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-istl/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o -c /home/paddy/pkg/dune_2d/dune-istl/dune/istl/test/bcrsbuild.cc

dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-istl/dune/istl/test/bcrsbuild.cc > CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.i

dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-istl/dune/istl/test/bcrsbuild.cc -o CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.s

dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.requires:

.PHONY : dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.requires

dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.provides: dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.requires
	$(MAKE) -f dune/istl/test/CMakeFiles/bcrsbuild.dir/build.make dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.provides.build
.PHONY : dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.provides

dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.provides.build: dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o


# Object files for target bcrsbuild
bcrsbuild_OBJECTS = \
"CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o"

# External object files for target bcrsbuild
bcrsbuild_EXTERNAL_OBJECTS =

dune/istl/test/bcrsbuild: dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o
dune/istl/test/bcrsbuild: dune/istl/test/CMakeFiles/bcrsbuild.dir/build.make
dune/istl/test/bcrsbuild: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libldl.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libspqr.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libumfpack.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libcholmod.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libamd.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libcamd.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libcolamd.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libccolamd.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/istl/test/bcrsbuild: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/istl/test/bcrsbuild: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/istl/test/bcrsbuild: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libgmp.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libgmpxx.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/istl/test/bcrsbuild: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
dune/istl/test/bcrsbuild: dune/istl/test/CMakeFiles/bcrsbuild.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-istl/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bcrsbuild"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bcrsbuild.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/istl/test/CMakeFiles/bcrsbuild.dir/build: dune/istl/test/bcrsbuild

.PHONY : dune/istl/test/CMakeFiles/bcrsbuild.dir/build

dune/istl/test/CMakeFiles/bcrsbuild.dir/requires: dune/istl/test/CMakeFiles/bcrsbuild.dir/bcrsbuild.cc.o.requires

.PHONY : dune/istl/test/CMakeFiles/bcrsbuild.dir/requires

dune/istl/test/CMakeFiles/bcrsbuild.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test && $(CMAKE_COMMAND) -P CMakeFiles/bcrsbuild.dir/cmake_clean.cmake
.PHONY : dune/istl/test/CMakeFiles/bcrsbuild.dir/clean

dune/istl/test/CMakeFiles/bcrsbuild.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-istl /home/paddy/pkg/dune_2d/dune-istl/dune/istl/test /home/paddy/pkg/dune_2d/dune-istl/build-cmake /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test/CMakeFiles/bcrsbuild.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/istl/test/CMakeFiles/bcrsbuild.dir/depend
