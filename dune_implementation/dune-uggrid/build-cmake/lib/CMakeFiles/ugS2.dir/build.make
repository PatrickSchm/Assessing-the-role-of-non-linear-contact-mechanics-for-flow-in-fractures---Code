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
CMAKE_SOURCE_DIR = /home/paddy/pkg/dune_2d/dune-uggrid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake

# Include any dependencies generated for this target.
include lib/CMakeFiles/ugS2.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/ugS2.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/ugS2.dir/flags.make

lib/CMakeFiles/ugS2.dir/__/initug.cc.o: lib/CMakeFiles/ugS2.dir/flags.make
lib/CMakeFiles/ugS2.dir/__/initug.cc.o: ../initug.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/ugS2.dir/__/initug.cc.o"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ugS2.dir/__/initug.cc.o -c /home/paddy/pkg/dune_2d/dune-uggrid/initug.cc

lib/CMakeFiles/ugS2.dir/__/initug.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ugS2.dir/__/initug.cc.i"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/paddy/pkg/dune_2d/dune-uggrid/initug.cc > CMakeFiles/ugS2.dir/__/initug.cc.i

lib/CMakeFiles/ugS2.dir/__/initug.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ugS2.dir/__/initug.cc.s"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/paddy/pkg/dune_2d/dune-uggrid/initug.cc -o CMakeFiles/ugS2.dir/__/initug.cc.s

lib/CMakeFiles/ugS2.dir/__/initug.cc.o.requires:

.PHONY : lib/CMakeFiles/ugS2.dir/__/initug.cc.o.requires

lib/CMakeFiles/ugS2.dir/__/initug.cc.o.provides: lib/CMakeFiles/ugS2.dir/__/initug.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/ugS2.dir/build.make lib/CMakeFiles/ugS2.dir/__/initug.cc.o.provides.build
.PHONY : lib/CMakeFiles/ugS2.dir/__/initug.cc.o.provides

lib/CMakeFiles/ugS2.dir/__/initug.cc.o.provides.build: lib/CMakeFiles/ugS2.dir/__/initug.cc.o


# Object files for target ugS2
ugS2_OBJECTS = \
"CMakeFiles/ugS2.dir/__/initug.cc.o"

# External object files for target ugS2
ugS2_EXTERNAL_OBJECTS = \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/algebra.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/enrol.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/evm.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/mgio.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/ugio.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/ugm.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/cw.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/initgm.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/elements.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/shapes.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/evalproc.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/rm.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/refine.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/dlmgr.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/gmcheck.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/er.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/CMakeFiles/ug_gm2.dir/mgheapmgr.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/CMakeFiles/np2.dir/initnp.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/algebra/CMakeFiles/algebra2.dir/ugblas.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/algebra/CMakeFiles/algebra2.dir/ugiter.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/algebra/CMakeFiles/algebra2.dir/sm.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/udm/CMakeFiles/udm2.dir/disctools.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/udm/CMakeFiles/udm2.dir/npscan.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/udm/CMakeFiles/udm2.dir/udm.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/udm/CMakeFiles/udm2.dir/formats.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/udm/CMakeFiles/udm2.dir/numproc.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/ui/CMakeFiles/ugui2.dir/commands.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std/CMakeFiles/domS2.dir/std_domain.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/std/CMakeFiles/domS2.dir/std_parallel.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/CMakeFiles/parallel2.dir/initparallel.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/CMakeFiles/ddd2.dir/ddd.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/analyser/CMakeFiles/analyser2.dir/inv.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/CMakeFiles/basic2.dir/io.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/CMakeFiles/basic2.dir/lowcomm.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/CMakeFiles/basic2.dir/notify.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/CMakeFiles/basic2.dir/reduct.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/CMakeFiles/basic2.dir/topo.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ident/CMakeFiles/ident2.dir/ident.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/mgr/CMakeFiles/mgr2.dir/typemgr.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/mgr/CMakeFiles/mgr2.dir/objmgr.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/mgr/CMakeFiles/mgr2.dir/cplmgr.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/mgr/CMakeFiles/mgr2.dir/prio.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/mgr/CMakeFiles/mgr2.dir/attr.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/prio/CMakeFiles/prio2.dir/pcmds.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/cmds.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/cmdmsg.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/cplmsg.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/ctrl.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/pack.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/supp.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/unpack.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/CMakeFiles/xfer2.dir/xfer.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/initddd.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/memmgr.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/handler.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/lb.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/debugger.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/lbrcb.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/gridcons.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/support.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/identify.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/trans.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/priority.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/pgmcheck.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/overlap.cc.o" \
"/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/dddif/CMakeFiles/dddif2.dir/partition.cc.o"

lib/libugS2.a: lib/CMakeFiles/ugS2.dir/__/initug.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/algebra.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/enrol.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/evm.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/mgio.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/ugio.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/ugm.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/cw.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/initgm.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/elements.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/shapes.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/evalproc.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/rm.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/refine.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/dlmgr.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/gmcheck.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/er.cc.o
lib/libugS2.a: gm/CMakeFiles/ug_gm2.dir/mgheapmgr.cc.o
lib/libugS2.a: np/CMakeFiles/np2.dir/initnp.cc.o
lib/libugS2.a: np/algebra/CMakeFiles/algebra2.dir/ugblas.cc.o
lib/libugS2.a: np/algebra/CMakeFiles/algebra2.dir/ugiter.cc.o
lib/libugS2.a: np/algebra/CMakeFiles/algebra2.dir/sm.cc.o
lib/libugS2.a: np/udm/CMakeFiles/udm2.dir/disctools.cc.o
lib/libugS2.a: np/udm/CMakeFiles/udm2.dir/npscan.cc.o
lib/libugS2.a: np/udm/CMakeFiles/udm2.dir/udm.cc.o
lib/libugS2.a: np/udm/CMakeFiles/udm2.dir/formats.cc.o
lib/libugS2.a: np/udm/CMakeFiles/udm2.dir/numproc.cc.o
lib/libugS2.a: ui/CMakeFiles/ugui2.dir/commands.cc.o
lib/libugS2.a: dom/std/CMakeFiles/domS2.dir/std_domain.cc.o
lib/libugS2.a: dom/std/CMakeFiles/domS2.dir/std_parallel.cc.o
lib/libugS2.a: parallel/CMakeFiles/parallel2.dir/initparallel.cc.o
lib/libugS2.a: parallel/ddd/CMakeFiles/ddd2.dir/ddd.cc.o
lib/libugS2.a: parallel/ddd/analyser/CMakeFiles/analyser2.dir/inv.cc.o
lib/libugS2.a: parallel/ddd/basic/CMakeFiles/basic2.dir/io.cc.o
lib/libugS2.a: parallel/ddd/basic/CMakeFiles/basic2.dir/lowcomm.cc.o
lib/libugS2.a: parallel/ddd/basic/CMakeFiles/basic2.dir/notify.cc.o
lib/libugS2.a: parallel/ddd/basic/CMakeFiles/basic2.dir/reduct.cc.o
lib/libugS2.a: parallel/ddd/basic/CMakeFiles/basic2.dir/topo.cc.o
lib/libugS2.a: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/cons.cc.o
lib/libugS2.a: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/debug.cc.o
lib/libugS2.a: parallel/ddd/ctrl/CMakeFiles/ctrl2.dir/stat.cc.o
lib/libugS2.a: parallel/ddd/ident/CMakeFiles/ident2.dir/ident.cc.o
lib/libugS2.a: parallel/ddd/if/CMakeFiles/if2.dir/ifcreate.cc.o
lib/libugS2.a: parallel/ddd/if/CMakeFiles/if2.dir/ifuse.cc.o
lib/libugS2.a: parallel/ddd/if/CMakeFiles/if2.dir/ifcmds.cc.o
lib/libugS2.a: parallel/ddd/if/CMakeFiles/if2.dir/ifcheck.cc.o
lib/libugS2.a: parallel/ddd/if/CMakeFiles/if2.dir/ifobjsc.cc.o
lib/libugS2.a: parallel/ddd/join/CMakeFiles/join2.dir/jcmds.cc.o
lib/libugS2.a: parallel/ddd/join/CMakeFiles/join2.dir/join.cc.o
lib/libugS2.a: parallel/ddd/mgr/CMakeFiles/mgr2.dir/typemgr.cc.o
lib/libugS2.a: parallel/ddd/mgr/CMakeFiles/mgr2.dir/objmgr.cc.o
lib/libugS2.a: parallel/ddd/mgr/CMakeFiles/mgr2.dir/cplmgr.cc.o
lib/libugS2.a: parallel/ddd/mgr/CMakeFiles/mgr2.dir/prio.cc.o
lib/libugS2.a: parallel/ddd/mgr/CMakeFiles/mgr2.dir/attr.cc.o
lib/libugS2.a: parallel/ddd/prio/CMakeFiles/prio2.dir/pcmds.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/cmds.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/cmdmsg.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/cplmsg.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/ctrl.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/pack.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/supp.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/unpack.cc.o
lib/libugS2.a: parallel/ddd/xfer/CMakeFiles/xfer2.dir/xfer.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/initddd.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/memmgr.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/handler.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/lb.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/debugger.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/lbrcb.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/gridcons.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/support.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/identify.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/trans.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/priority.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/pgmcheck.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/overlap.cc.o
lib/libugS2.a: parallel/dddif/CMakeFiles/dddif2.dir/partition.cc.o
lib/libugS2.a: lib/CMakeFiles/ugS2.dir/build.make
lib/libugS2.a: lib/CMakeFiles/ugS2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libugS2.a"
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && $(CMAKE_COMMAND) -P CMakeFiles/ugS2.dir/cmake_clean_target.cmake
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ugS2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/ugS2.dir/build: lib/libugS2.a

.PHONY : lib/CMakeFiles/ugS2.dir/build

lib/CMakeFiles/ugS2.dir/requires: lib/CMakeFiles/ugS2.dir/__/initug.cc.o.requires

.PHONY : lib/CMakeFiles/ugS2.dir/requires

lib/CMakeFiles/ugS2.dir/clean:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib && $(CMAKE_COMMAND) -P CMakeFiles/ugS2.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/ugS2.dir/clean

lib/CMakeFiles/ugS2.dir/depend:
	cd /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paddy/pkg/dune_2d/dune-uggrid /home/paddy/pkg/dune_2d/dune-uggrid/lib /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/CMakeFiles/ugS2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/ugS2.dir/depend

