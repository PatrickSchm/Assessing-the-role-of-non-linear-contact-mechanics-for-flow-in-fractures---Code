# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /usr/share/cmake-3.13/Modules/FortranCInterface/Verify

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX

# Include any dependencies generated for this target.
include CMakeFiles/VerifyFortranC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/VerifyFortranC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VerifyFortranC.dir/flags.make

CMakeFiles/VerifyFortranC.dir/main.c.o: CMakeFiles/VerifyFortranC.dir/flags.make
CMakeFiles/VerifyFortranC.dir/main.c.o: /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/VerifyFortranC.dir/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/VerifyFortranC.dir/main.c.o   -c /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/main.c

CMakeFiles/VerifyFortranC.dir/main.c.i: cmake_force
	@echo "Preprocessing C source to CMakeFiles/VerifyFortranC.dir/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/main.c > CMakeFiles/VerifyFortranC.dir/main.c.i

CMakeFiles/VerifyFortranC.dir/main.c.s: cmake_force
	@echo "Compiling C source to assembly CMakeFiles/VerifyFortranC.dir/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/main.c -o CMakeFiles/VerifyFortranC.dir/main.c.s

CMakeFiles/VerifyFortranC.dir/VerifyC.c.o: CMakeFiles/VerifyFortranC.dir/flags.make
CMakeFiles/VerifyFortranC.dir/VerifyC.c.o: /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyC.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/VerifyFortranC.dir/VerifyC.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/VerifyFortranC.dir/VerifyC.c.o   -c /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyC.c

CMakeFiles/VerifyFortranC.dir/VerifyC.c.i: cmake_force
	@echo "Preprocessing C source to CMakeFiles/VerifyFortranC.dir/VerifyC.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyC.c > CMakeFiles/VerifyFortranC.dir/VerifyC.c.i

CMakeFiles/VerifyFortranC.dir/VerifyC.c.s: cmake_force
	@echo "Compiling C source to assembly CMakeFiles/VerifyFortranC.dir/VerifyC.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyC.c -o CMakeFiles/VerifyFortranC.dir/VerifyC.c.s

CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.o: CMakeFiles/VerifyFortranC.dir/flags.make
CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.o: /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyCXX.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.o -c /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyCXX.cxx

CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyCXX.cxx > CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.i

CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyCXX.cxx -o CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.s

# Object files for target VerifyFortranC
VerifyFortranC_OBJECTS = \
"CMakeFiles/VerifyFortranC.dir/main.c.o" \
"CMakeFiles/VerifyFortranC.dir/VerifyC.c.o" \
"CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.o"

# External object files for target VerifyFortranC
VerifyFortranC_EXTERNAL_OBJECTS =

VerifyFortranC: CMakeFiles/VerifyFortranC.dir/main.c.o
VerifyFortranC: CMakeFiles/VerifyFortranC.dir/VerifyC.c.o
VerifyFortranC: CMakeFiles/VerifyFortranC.dir/VerifyCXX.cxx.o
VerifyFortranC: CMakeFiles/VerifyFortranC.dir/build.make
VerifyFortranC: libVerifyFortran.a
VerifyFortranC: CMakeFiles/VerifyFortranC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable VerifyFortranC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VerifyFortranC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VerifyFortranC.dir/build: VerifyFortranC

.PHONY : CMakeFiles/VerifyFortranC.dir/build

CMakeFiles/VerifyFortranC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VerifyFortranC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VerifyFortranC.dir/clean

CMakeFiles/VerifyFortranC.dir/depend:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/share/cmake-3.13/Modules/FortranCInterface/Verify /usr/share/cmake-3.13/Modules/FortranCInterface/Verify /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles/VerifyFortranC.dir/DependInfo.cmake
.PHONY : CMakeFiles/VerifyFortranC.dir/depend

