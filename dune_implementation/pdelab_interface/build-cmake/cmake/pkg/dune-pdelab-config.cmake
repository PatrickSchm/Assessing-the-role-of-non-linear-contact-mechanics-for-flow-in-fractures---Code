if(NOT dune-pdelab_FOUND)
# Whether this module is installed or not
set(dune-pdelab_INSTALLED ON)

# Settings specific to the module

# Package initialization

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was dune-pdelab-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

#report other information
set_and_check(dune-pdelab_PREFIX "${PACKAGE_PREFIX_DIR}")
set_and_check(dune-pdelab_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include")
set(dune-pdelab_CXX_FLAGS "-std=c++17  -Wall -Wunused -Wmissing-include-dirs -Wcast-align -Wno-sign-compare -Wno-unused-parameter -Wno-deprecated-declarations -fno-strict-aliasing -fstrict-overflow -fno-finite-math-only -fopenmp -O3 -std=c++17 -L/opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64 -lgmp -lmpfr -march=native -lmkl_rt -lpthread -lm -ldl -m64 -lstdc++fs")
set(dune-pdelab_CXX_FLAGS_DEBUG "-g")
set(dune-pdelab_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG")
set(dune-pdelab_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
set(dune-pdelab_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -DNDEBUG")
set(dune-pdelab_DEPENDS "dune-grid (>= 2.5);dune-localfunctions (>= 2.5);dune-istl (>= 2.5);dune-typetree (>= 2.5);dune-functions (>= 2.5)")
set(dune-pdelab_SUGGESTS "dune-alugrid")
set(dune-pdelab_MODULE_PATH "${PACKAGE_PREFIX_DIR}/share/dune/cmake/modules")
set(dune-pdelab_LIBRARIES "dunepdelab")

# Lines that are set by the CMake build system via the variable DUNE_CUSTOM_PKG_CONFIG_SECTION


#import the target
if(dune-pdelab_LIBRARIES)
  get_filename_component(_dir "${CMAKE_CURRENT_LIST_FILE}" PATH)
  include("${_dir}/dune-pdelab-targets.cmake")
endif()
endif()
