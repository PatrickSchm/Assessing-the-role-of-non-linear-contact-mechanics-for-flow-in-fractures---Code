# Install script for directory: /home/paddy/pkg/dune_2d/dune-geometry/dune/geometry

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/geometry" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/affinegeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/axisalignedcubegeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/dimension.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/generalvertexorder.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/multilineargeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/quadraturerules.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/referenceelement.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/referenceelementimplementation.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/referenceelements.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/refinement.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/topologyfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/type.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/typeindex.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/virtualrefinement.hh"
    "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/virtualrefinement.cc"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/geometry/test" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-geometry/dune/geometry/test/checkgeometry.hh")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/quadraturerules/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/refinement/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/utility/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-geometry/build-cmake/dune/geometry/test/cmake_install.cmake")

endif()

