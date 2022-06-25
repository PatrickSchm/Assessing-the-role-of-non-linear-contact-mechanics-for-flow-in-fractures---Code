# Install script for directory: /home/paddy/pkg/dune_2d/dune-common/dune/common/std

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/common/std" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/apply.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/constexpr.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/final.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/noexcept.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/make_array.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/memory.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/optional.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/type_traits.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/std/utility.hh"
    )
endif()

