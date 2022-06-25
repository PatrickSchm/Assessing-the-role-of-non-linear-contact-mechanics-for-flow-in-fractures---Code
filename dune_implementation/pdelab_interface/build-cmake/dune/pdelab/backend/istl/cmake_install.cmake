# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/pdelab/backend/istl" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/bcrsmatrix.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/bcrsmatrixbackend.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/bcrspattern.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/blockmatrixdiagonal.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/cg_to_dg_prolongation.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/descriptors.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/ensureistlinclude.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/dunefunctions.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/forwarddeclarations.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/istlsolverbackend.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/matrixhelpers.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/novlpistlsolverbackend.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/ovlp_amg_dg_backend.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/ovlpistlsolverbackend.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/parallelhelper.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/patternstatistics.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/seq_amg_dg_backend.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/seqistlsolverbackend.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/tags.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/utility.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/vector.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/vectorhelpers.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/backend/istl/vectoriterator.hh"
    )
endif()

