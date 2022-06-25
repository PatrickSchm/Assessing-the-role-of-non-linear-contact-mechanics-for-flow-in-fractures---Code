# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/dune-grid/grids/dgf" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/basicunitcube-2d.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/cube-2.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/cube_grid.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/cube-testgrid-2-2.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/cube-testgrid-2-3.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/distorted-cube-3.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid10a.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid10b.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid10.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid11.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid12.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid1c.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid1gen.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid1s.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid2a.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid2b.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid2c.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid2d.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid2e.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid5.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid6.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid7.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/examplegrid9.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/example-projection.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/grid2Y.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/grid3A.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/grid3Y.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/helix.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/octahedron.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/simplex-testgrid-1-1.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/simplex-testgrid-1-2.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/simplex-testgrid-2-2.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/simplex-testgrid-1-3.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/simplex-testgrid-2-3.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/simplex-testgrid-3-3.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/simplex-testgrid-3-3-large.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/test1d.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/test1d-vertex.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/test2d.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/test2d_offset.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/test2ug.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/test3d.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/torus-2.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/torus-3.dgf"
    "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/unstr_cube.dgf"
    )
endif()

