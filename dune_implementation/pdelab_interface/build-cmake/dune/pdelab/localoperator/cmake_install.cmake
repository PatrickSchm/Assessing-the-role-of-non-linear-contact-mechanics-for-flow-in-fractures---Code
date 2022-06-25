# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/pdelab/localoperator" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/callswitch.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/convectiondiffusionccfv.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/convectiondiffusiondg.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/convectiondiffusionfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/convectiondiffusionparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/darcyccfv.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/darcyfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/defaultimp.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/dginteriorpenaltyparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/dgnavierstokes.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/dgnavierstokesparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/dgnavierstokesvelvecfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/dgparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/diffusionmixed.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/electrodynamic.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/errorindicatordg.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/eval.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/flags.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/idefault.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/interface.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/l2.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/l2volumefunctional.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/linearacousticsdg.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/linearacousticsparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/linearelasticity.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/linearelasticityparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/maxwelldg.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/maxwellparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/navierstokesmass.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/nonlinearconvectiondiffusionfem.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/numericaljacobian.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/numericaljacobianapply.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/numericalnonlinearjacobianapply.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/numericalresidual.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/pattern.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/permeability_adapter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/scaled.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/stokesparameter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/sum.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/taylorhoodnavierstokes.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/twophaseccfv.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/variablefactories.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/weightedsum.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/localoperator/zero.hh"
    )
endif()

