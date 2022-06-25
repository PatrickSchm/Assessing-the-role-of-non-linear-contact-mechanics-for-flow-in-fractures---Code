# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/io/file/vtk" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/b64enc.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/basicwriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/boundaryiterators.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/boundarywriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/common.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/corner.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/corneriterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/dataarraywriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/function.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/functionwriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/pointiterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/pvtuwriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/skeletonfunction.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/subsamplingvtkwriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/streams.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/volumeiterators.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/volumewriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/vtksequencewriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/vtksequencewriterbase.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/vtkwriter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/vtk/vtuwriter.hh"
    )
endif()

