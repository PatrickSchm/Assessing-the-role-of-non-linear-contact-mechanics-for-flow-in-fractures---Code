# Install script for directory: /home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/localfunctions/lagrange" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/emptypoints.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/equidistantpoints.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/interpolation.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/lagrangebasis.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/lagrangecoefficients.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/p0.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/p1.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/p23d.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/p2.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pk1d.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pk2d.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pk3d.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pk.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pq22d.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pqkfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/prismp1.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/prismp2.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pyramidp1.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/pyramidp2.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/q1.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/q2.hh"
    "/home/paddy/pkg/dune_2d/dune-localfunctions/dune/localfunctions/lagrange/qk.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/p0/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/p1/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/p23d/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/pk1d/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/pk2d/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/pk3d/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/prismp1/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/prismp2/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/pyramidp1/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/pyramidp2/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/q1/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-localfunctions/build-cmake/dune/localfunctions/lagrange/qk/cmake_install.cmake")

endif()

