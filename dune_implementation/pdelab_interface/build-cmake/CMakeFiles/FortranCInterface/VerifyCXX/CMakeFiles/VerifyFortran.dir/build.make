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
include CMakeFiles/VerifyFortran.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/VerifyFortran.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VerifyFortran.dir/flags.make

CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o: CMakeFiles/VerifyFortran.dir/flags.make
CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o: /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyFortran.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyFortran.f -o CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o

CMakeFiles/VerifyFortran.dir/VerifyFortran.f.i: cmake_force
	@echo "Preprocessing Fortran source to CMakeFiles/VerifyFortran.dir/VerifyFortran.f.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyFortran.f > CMakeFiles/VerifyFortran.dir/VerifyFortran.f.i

CMakeFiles/VerifyFortran.dir/VerifyFortran.f.s: cmake_force
	@echo "Compiling Fortran source to assembly CMakeFiles/VerifyFortran.dir/VerifyFortran.f.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /usr/share/cmake-3.13/Modules/FortranCInterface/Verify/VerifyFortran.f -o CMakeFiles/VerifyFortran.dir/VerifyFortran.f.s

# Object files for target VerifyFortran
VerifyFortran_OBJECTS = \
"CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o"

# External object files for target VerifyFortran
VerifyFortran_EXTERNAL_OBJECTS =

libVerifyFortran.a: CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o
libVerifyFortran.a: CMakeFiles/VerifyFortran.dir/build.make
libVerifyFortran.a: CMakeFiles/VerifyFortran.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran static library libVerifyFortran.a"
	$(CMAKE_COMMAND) -P CMakeFiles/VerifyFortran.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VerifyFortran.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VerifyFortran.dir/build: libVerifyFortran.a

.PHONY : CMakeFiles/VerifyFortran.dir/build

CMakeFiles/VerifyFortran.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VerifyFortran.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VerifyFortran.dir/clean

CMakeFiles/VerifyFortran.dir/depend:
	cd /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/share/cmake-3.13/Modules/FortranCInterface/Verify /usr/share/cmake-3.13/Modules/FortranCInterface/Verify /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX /home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/CMakeFiles/FortranCInterface/VerifyCXX/CMakeFiles/VerifyFortran.dir/DependInfo.cmake
.PHONY : CMakeFiles/VerifyFortran.dir/depend

