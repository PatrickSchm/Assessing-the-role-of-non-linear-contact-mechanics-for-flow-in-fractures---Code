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
include dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/depend.make

# Include the progress variables for this target.
include dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/progress.make

# Include the compile flags for this target's objects.
include dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/flags.make

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o: dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/flags.make
dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o: ../dune/istl/paamg/test/fastamg.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-istl/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/superlufastamgtest.dir/fastamg.cc.o -c /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test/fastamg.cc

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/superlufastamgtest.dir/fastamg.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test/fastamg.cc > CMakeFiles/superlufastamgtest.dir/fastamg.cc.i

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/superlufastamgtest.dir/fastamg.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test/fastamg.cc -o CMakeFiles/superlufastamgtest.dir/fastamg.cc.s

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.requires:

.PHONY : dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.requires

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.provides: dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.requires
	$(MAKE) -f dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/build.make dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.provides.build
.PHONY : dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.provides

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.provides.build: dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o


# Object files for target superlufastamgtest
superlufastamgtest_OBJECTS = \
"CMakeFiles/superlufastamgtest.dir/fastamg.cc.o"

# External object files for target superlufastamgtest
superlufastamgtest_EXTERNAL_OBJECTS =

dune/istl/paamg/test/superlufastamgtest: dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o
dune/istl/paamg/test/superlufastamgtest: dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/build.make
dune/istl/paamg/test/superlufastamgtest: /usr/lib/x86_64-linux-gnu/libsuperlu.so
dune/istl/paamg/test/superlufastamgtest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so
dune/istl/paamg/test/superlufastamgtest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so
dune/istl/paamg/test/superlufastamgtest: /opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so
dune/istl/paamg/test/superlufastamgtest: /usr/lib/x86_64-linux-gnu/libgomp.so
dune/istl/paamg/test/superlufastamgtest: /home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a
dune/istl/paamg/test/superlufastamgtest: /usr/lib/x86_64-linux-gnu/liblapack.so
dune/istl/paamg/test/superlufastamgtest: /usr/lib/x86_64-linux-gnu/libf77blas.so
dune/istl/paamg/test/superlufastamgtest: /usr/lib/x86_64-linux-gnu/libatlas.so
dune/istl/paamg/test/superlufastamgtest: dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-istl/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable superlufastamgtest"
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/superlufastamgtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/build: dune/istl/paamg/test/superlufastamgtest

.PHONY : dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/build

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/requires: dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/fastamg.cc.o.requires

.PHONY : dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/requires

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test && $(CMAKE_COMMAND) -P CMakeFiles/superlufastamgtest.dir/cmake_clean.cmake
.PHONY : dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/clean

dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-istl/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-istl /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/test /home/paddy/pkg/dune_2d/dune-istl/build-cmake /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dune/istl/paamg/test/CMakeFiles/superlufastamgtest.dir/depend

