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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-common

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-common/build-cmake

# Utility rule file for communication_pdf.

# Include the progress variables for this target.
include doc/comm/CMakeFiles/communication_pdf.dir/progress.make

doc/comm/CMakeFiles/communication_pdf: doc/comm/communication.pdf


doc/comm/poosc08_test.cc: ../doc/comm/poosc08_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating poosc08_test.cc"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E copy /home/paddy/pkg/dune_2d/dune-common/doc/comm/poosc08_test.cc /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/poosc08_test.cc

doc/comm/communication.pdf: doc/comm/communication.tex
doc/comm/communication.pdf: doc/comm/poosc08_test.cc
doc/comm/communication.pdf: doc/comm/communication.bib
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating communication.pdf"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm /usr/bin/cmake -D LATEX_BUILD_COMMAND=execute_latex -D LATEX_TARGET=communication -D LATEX_WORKING_DIRECTORY="/home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm" -D LATEX_FULL_COMMAND="/usr/bin/pdflatex -interaction=batchmode -file-line-error communication.tex" -D LATEX_OUTPUT_FILE="communication.pdf" -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm /usr/bin/bibtex communication
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm /usr/bin/cmake -D LATEX_BUILD_COMMAND=execute_latex -D LATEX_TARGET=communication -D LATEX_WORKING_DIRECTORY="/home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm" -D LATEX_FULL_COMMAND="/usr/bin/pdflatex -interaction=batchmode -file-line-error communication.tex" -D LATEX_OUTPUT_FILE="communication.pdf" -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm /usr/bin/cmake -D LATEX_BUILD_COMMAND=execute_latex -D LATEX_TARGET=communication -D LATEX_WORKING_DIRECTORY="/home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm" -D LATEX_FULL_COMMAND="/usr/bin/pdflatex -interaction=batchmode -file-line-error communication.tex" -D LATEX_OUTPUT_FILE="communication.pdf" -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm /usr/bin/cmake -D LATEX_BUILD_COMMAND=check_important_warnings -D LATEX_TARGET=communication -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake

doc/comm/communication.tex: ../doc/comm/communication.tex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating communication.tex"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E copy /home/paddy/pkg/dune_2d/dune-common/doc/comm/communication.tex /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/communication.tex

doc/comm/communication.bib: ../doc/comm/communication.bib
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-common/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating communication.bib"
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && /usr/bin/cmake -E copy /home/paddy/pkg/dune_2d/dune-common/doc/comm/communication.bib /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/communication.bib

communication_pdf: doc/comm/CMakeFiles/communication_pdf
communication_pdf: doc/comm/poosc08_test.cc
communication_pdf: doc/comm/communication.pdf
communication_pdf: doc/comm/communication.tex
communication_pdf: doc/comm/communication.bib
communication_pdf: doc/comm/CMakeFiles/communication_pdf.dir/build.make

.PHONY : communication_pdf

# Rule to build all files generated by this target.
doc/comm/CMakeFiles/communication_pdf.dir/build: communication_pdf

.PHONY : doc/comm/CMakeFiles/communication_pdf.dir/build

doc/comm/CMakeFiles/communication_pdf.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm && $(CMAKE_COMMAND) -P CMakeFiles/communication_pdf.dir/cmake_clean.cmake
.PHONY : doc/comm/CMakeFiles/communication_pdf.dir/clean

doc/comm/CMakeFiles/communication_pdf.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-common/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-common /home/paddy/pkg/dune_2d/dune-common/doc/comm /home/paddy/pkg/dune_2d/dune-common/build-cmake /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm /home/paddy/pkg/dune_2d/dune-common/build-cmake/doc/comm/CMakeFiles/communication_pdf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/comm/CMakeFiles/communication_pdf.dir/depend

