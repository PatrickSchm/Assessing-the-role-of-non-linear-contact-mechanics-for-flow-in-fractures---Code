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

# Utility rule file for dune-functions-manual_html.

# Include the progress variables for this target.
include doc/manual/CMakeFiles/dune-functions-manual_html.dir/progress.make

doc/manual/CMakeFiles/dune-functions-manual_html: doc/manual/dune-functions-manual.html


examples/stokes-taylorhood.cc: ../examples/stokes-taylorhood.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../examples/stokes-taylorhood.cc"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E copy /home/paddy/pkg/dune_2d/dune-functions/doc/manual/../../examples/stokes-taylorhood.cc /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/../../examples/stokes-taylorhood.cc

doc/manual/dune-functions-manual.html: doc/manual/dune-functions-manual.tex
doc/manual/dune-functions-manual.html: doc/manual/dune-functions-manual.dvi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating dune-functions-manual.html"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /usr/bin/htlatex dune-functions-manual.tex html "" "" -interaction=batchmode -file-line-error

doc/manual/dune-functions-manual.tex: ../doc/manual/dune-functions-manual.tex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating dune-functions-manual.tex"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E copy /home/paddy/pkg/dune_2d/dune-functions/doc/manual/dune-functions-manual.tex /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/dune-functions-manual.tex

doc/manual/dune-functions-manual.dvi: doc/manual/gfx/driven_cavity.eps
doc/manual/dune-functions-manual.dvi: doc/manual/gfx/driven_cavity_result.eps
doc/manual/dune-functions-manual.dvi: doc/manual/gfx/taylor_hood_tree.eps
doc/manual/dune-functions-manual.dvi: doc/manual/gfx/febasis_interface_schematic.eps
doc/manual/dune-functions-manual.dvi: doc/manual/gfx/taylor-hood-matrix-interleaved.eps
doc/manual/dune-functions-manual.dvi: doc/manual/gfx/taylor-hood-matrix-lexicographic.eps
doc/manual/dune-functions-manual.dvi: doc/manual/dune-functions-manual.tex
doc/manual/dune-functions-manual.dvi: examples/stokes-taylorhood.cc
doc/manual/dune-functions-manual.dvi: doc/manual/dune-functions-manual.bib
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating dune-functions-manual.dvi"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /usr/bin/cmake -D LATEX_BUILD_COMMAND=execute_latex -D LATEX_TARGET=dune-functions-manual -D LATEX_WORKING_DIRECTORY="/home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual" -D LATEX_FULL_COMMAND="/usr/bin/latex -interaction=batchmode -file-line-error dune-functions-manual.tex" -D LATEX_OUTPUT_FILE="dune-functions-manual.dvi" -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /usr/bin/bibtex dune-functions-manual
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /usr/bin/cmake -D LATEX_BUILD_COMMAND=execute_latex -D LATEX_TARGET=dune-functions-manual -D LATEX_WORKING_DIRECTORY="/home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual" -D LATEX_FULL_COMMAND="/usr/bin/latex -interaction=batchmode -file-line-error dune-functions-manual.tex" -D LATEX_OUTPUT_FILE="dune-functions-manual.dvi" -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /usr/bin/cmake -D LATEX_BUILD_COMMAND=execute_latex -D LATEX_TARGET=dune-functions-manual -D LATEX_WORKING_DIRECTORY="/home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual" -D LATEX_FULL_COMMAND="/usr/bin/latex -interaction=batchmode -file-line-error dune-functions-manual.tex" -D LATEX_OUTPUT_FILE="dune-functions-manual.dvi" -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E chdir /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /usr/bin/cmake -D LATEX_BUILD_COMMAND=check_important_warnings -D LATEX_TARGET=dune-functions-manual -P /home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake

doc/manual/gfx/driven_cavity.eps: ../doc/manual/gfx/driven_cavity.pdf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating gfx/driven_cavity.eps"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/pdftops -eps /home/paddy/pkg/dune_2d/dune-functions/doc/manual/gfx/driven_cavity.pdf /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/gfx/driven_cavity.eps

doc/manual/gfx/driven_cavity_result.eps: ../doc/manual/gfx/driven_cavity_result.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating gfx/driven_cavity_result.eps"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/convert /home/paddy/pkg/dune_2d/dune-functions/doc/manual/gfx/driven_cavity_result.png /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/gfx/driven_cavity_result.eps

doc/manual/gfx/taylor_hood_tree.eps: ../doc/manual/gfx/taylor_hood_tree.pdf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating gfx/taylor_hood_tree.eps"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/pdftops -eps /home/paddy/pkg/dune_2d/dune-functions/doc/manual/gfx/taylor_hood_tree.pdf /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/gfx/taylor_hood_tree.eps

doc/manual/gfx/febasis_interface_schematic.eps: ../doc/manual/gfx/febasis_interface_schematic.pdf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Generating gfx/febasis_interface_schematic.eps"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/pdftops -eps /home/paddy/pkg/dune_2d/dune-functions/doc/manual/gfx/febasis_interface_schematic.pdf /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/gfx/febasis_interface_schematic.eps

doc/manual/gfx/taylor-hood-matrix-interleaved.eps: ../doc/manual/gfx/taylor-hood-matrix-interleaved.pdf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Generating gfx/taylor-hood-matrix-interleaved.eps"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/pdftops -eps /home/paddy/pkg/dune_2d/dune-functions/doc/manual/gfx/taylor-hood-matrix-interleaved.pdf /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/gfx/taylor-hood-matrix-interleaved.eps

doc/manual/gfx/taylor-hood-matrix-lexicographic.eps: ../doc/manual/gfx/taylor-hood-matrix-lexicographic.pdf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Generating gfx/taylor-hood-matrix-lexicographic.eps"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/pdftops -eps /home/paddy/pkg/dune_2d/dune-functions/doc/manual/gfx/taylor-hood-matrix-lexicographic.pdf /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/gfx/taylor-hood-matrix-lexicographic.eps

doc/manual/dune-functions-manual.bib: ../doc/manual/dune-functions-manual.bib
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-functions/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Generating dune-functions-manual.bib"
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && /usr/bin/cmake -E copy /home/paddy/pkg/dune_2d/dune-functions/doc/manual/dune-functions-manual.bib /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/dune-functions-manual.bib

dune-functions-manual_html: doc/manual/CMakeFiles/dune-functions-manual_html
dune-functions-manual_html: examples/stokes-taylorhood.cc
dune-functions-manual_html: doc/manual/dune-functions-manual.html
dune-functions-manual_html: doc/manual/dune-functions-manual.tex
dune-functions-manual_html: doc/manual/dune-functions-manual.dvi
dune-functions-manual_html: doc/manual/gfx/driven_cavity.eps
dune-functions-manual_html: doc/manual/gfx/driven_cavity_result.eps
dune-functions-manual_html: doc/manual/gfx/taylor_hood_tree.eps
dune-functions-manual_html: doc/manual/gfx/febasis_interface_schematic.eps
dune-functions-manual_html: doc/manual/gfx/taylor-hood-matrix-interleaved.eps
dune-functions-manual_html: doc/manual/gfx/taylor-hood-matrix-lexicographic.eps
dune-functions-manual_html: doc/manual/dune-functions-manual.bib
dune-functions-manual_html: doc/manual/CMakeFiles/dune-functions-manual_html.dir/build.make

.PHONY : dune-functions-manual_html

# Rule to build all files generated by this target.
doc/manual/CMakeFiles/dune-functions-manual_html.dir/build: dune-functions-manual_html

.PHONY : doc/manual/CMakeFiles/dune-functions-manual_html.dir/build

doc/manual/CMakeFiles/dune-functions-manual_html.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual && $(CMAKE_COMMAND) -P CMakeFiles/dune-functions-manual_html.dir/cmake_clean.cmake
.PHONY : doc/manual/CMakeFiles/dune-functions-manual_html.dir/clean

doc/manual/CMakeFiles/dune-functions-manual_html.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-functions/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-functions /home/paddy/pkg/dune_2d/dune-functions/doc/manual /home/paddy/pkg/dune_2d/dune-functions/build-cmake /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual /home/paddy/pkg/dune_2d/dune-functions/build-cmake/doc/manual/CMakeFiles/dune-functions-manual_html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/manual/CMakeFiles/dune-functions-manual_html.dir/depend

