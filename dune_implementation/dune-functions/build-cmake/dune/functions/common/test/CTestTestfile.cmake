# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-functions/dune/functions/common/test
# Build directory: /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(differentiablefunctiontest "/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/common/test/differentiablefunctiontest")
set_tests_properties(differentiablefunctiontest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "differentiablefunctiontest" SKIP_RETURN_CODE "77" TIMEOUT "300")
