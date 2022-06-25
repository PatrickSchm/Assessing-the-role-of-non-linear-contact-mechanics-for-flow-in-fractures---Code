# Install script for directory: /home/paddy/pkg/dune_2d/dune-common/cmake/modules

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dune/cmake/modules" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/AddGMPFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/AddMETISFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/AddParMETISFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/AddPTScotchFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/AddSuiteSparseFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/AddUMFPackFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/AddVcFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/CheckCXXFeatures.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/CMakeBuiltinFunctionsDocumentation.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneCommonMacros.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneCxaDemangle.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneDoc.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneDoxygen.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneEnableAllPackages.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneExecuteProcess.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneMacros.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneMPI.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePathHelper.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePkgConfig.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePythonCommonMacros.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePythonFindPackage.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePythonInstallPackage.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePythonRequireVersion.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePythonTestCommand.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DunePythonVirtualenv.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneSphinxCMakeDoc.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneStreams.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneSymlinkOrCopy.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/DuneTestMacros.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindGMP.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindInkscape.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindMETIS.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindMProtect.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindParMETIS.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindPTScotch.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindSphinx.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindSuiteSparse.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindTBB.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/FindUMFPack.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/Headercheck.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/LanguageSupport.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/OverloadCompilerFlags.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseInkscape.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/modules/UseLATEX.cmake"
    )
endif()

