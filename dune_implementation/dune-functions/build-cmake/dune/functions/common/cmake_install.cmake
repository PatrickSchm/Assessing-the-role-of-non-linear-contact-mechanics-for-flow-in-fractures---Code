# Install script for directory: /home/paddy/pkg/dune_2d/dune-functions/dune/functions/common

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/functions/common" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/callable.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/defaultderivativetraits.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/differentiablefunction.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/differentiablefunction_imp.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/differentiablefunctionfromcallables.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/functionfromcallable.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/functionconcepts.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/indexaccess.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/interfaces.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/localfunction.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/localfunction_imp.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/optional.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/polymorphicsmallobject.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/reserveddeque.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/signature.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/staticforloop.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/treedata.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/tuplevector.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/type_traits.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/typeerasure.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/utility.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test/cmake_install.cmake")

endif()

