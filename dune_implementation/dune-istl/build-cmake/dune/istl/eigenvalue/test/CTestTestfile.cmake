# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-istl/dune/istl/eigenvalue/test
# Build directory: /home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/eigenvalue/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(poweriterationtest "/home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/eigenvalue/test/poweriterationtest" "40")
set_tests_properties(poweriterationtest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "poweriterationtest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(poweriterationsuperlutest "/home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/eigenvalue/test/poweriterationsuperlutest" "40")
set_tests_properties(poweriterationsuperlutest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "poweriterationsuperlutest" SKIP_RETURN_CODE "77" TIMEOUT "300")
