# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/utility" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/entitycommhelper.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/globalindexset.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/gridinfo-gmsh-main.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/gridinfo.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/gridtype.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/hierarchicsearch.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/hostgridaccess.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/multiindex.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/parmetisgridpartitioner.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/persistentcontainer.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/persistentcontainerinterface.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/persistentcontainermap.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/persistentcontainervector.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/persistentcontainerwrapper.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/structuredgridfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/tensorgridfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/utility/vertexorderfactory.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/test/cmake_install.cmake")

endif()

