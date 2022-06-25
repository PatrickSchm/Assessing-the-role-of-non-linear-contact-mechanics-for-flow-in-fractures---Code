# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/pdelab/common" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/benchmarkhelper.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/borderindexidcache.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/clock.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/crossproduct.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/dofindex.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/elementmapper.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/exceptions.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/function.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/functionutilities.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/functionwrappers.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/geometrywrapper.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/globaldofindex.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/hostname.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/instationaryfilenamehelper.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/intersectiontype.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/jacobiantocurl.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/logtag.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/multiindex.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/partitionviewentityset.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/polymorphicbufferwrapper.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/quadraturerules.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/range.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/referenceelements.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/simpledofindex.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/topologyutility.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/typetraits.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/utility.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/common/vtkexport.hh"
    )
endif()

