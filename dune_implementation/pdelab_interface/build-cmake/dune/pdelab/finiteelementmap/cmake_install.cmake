# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/pdelab/finiteelementmap" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/bdm1cube2dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/bdm1simplex2dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/brezzidouglasmarinifem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/edges0.5fem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/finiteelementmap.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/global.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/mimeticfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/monomfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/opbfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/p0fem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/pk1d.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/pkfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/pkqkfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/powerfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/qkdg.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/qkdggl.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/qkfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rannacherturekfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/raviartthomasfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rt0cube2dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rt0cube3dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rt0simplex2dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rt1cube2dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rt1cube3dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rt1simplex2dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/rt2cube2dfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/utility.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/variablemonomfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/variableopbfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/finiteelementmap/variableqkdgfem.hh"
    )
endif()

