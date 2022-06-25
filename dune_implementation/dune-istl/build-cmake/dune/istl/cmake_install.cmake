# Install script for directory: /home/paddy/pkg/dune_2d/dune-istl/dune/istl

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/istl" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/basearray.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/bcrsmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/bdmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/btdmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/bvector.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/colcompmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/gsetc.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/ilu.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/ilusubdomainsolver.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/io.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/istlexception.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/ldl.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/matrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/matrixindexset.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/matrixmarket.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/matrixmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/matrixredistribute.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/matrixutils.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/multitypeblockmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/multitypeblockvector.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/novlpschwarz.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/operators.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/overlappingschwarz.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/owneroverlapcopy.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/pardiso.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/preconditioner.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/preconditioners.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/repartition.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/scalarproducts.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/scaledidmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/schwarz.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/solvercategory.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/solver.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/solvers.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/solvertype.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/spqr.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/superlu.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/supermatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/umfpack.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/vbvector.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/eigenvalue/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/tutorial/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/test/cmake_install.cmake")

endif()

