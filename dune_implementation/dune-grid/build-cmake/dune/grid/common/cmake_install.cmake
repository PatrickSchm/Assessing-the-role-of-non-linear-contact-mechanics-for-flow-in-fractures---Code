# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/common

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/common" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/adaptcallback.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/backuprestore.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/boundaryprojection.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/boundarysegment.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/capabilities.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/datahandleif.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/defaultgridview.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/entity.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/entityiterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/entityseed.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/exceptions.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/geometry.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/grid.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/gridenums.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/gridfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/gridinfo.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/gridview.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/indexidset.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/intersection.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/intersectioniterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/mcmgmapper.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/mapper.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/partitionset.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/rangegenerators.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/sizecache.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/scsgmapper.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/universalmapper.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/common/test/cmake_install.cmake")

endif()

