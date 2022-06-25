# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/common/test
# Build directory: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/common/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(scsgmappertest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/common/test/scsgmappertest")
set_tests_properties(scsgmappertest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "scsgmappertest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(mcmgmappertest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/common/test/mcmgmappertest")
set_tests_properties(mcmgmappertest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "mcmgmappertest" SKIP_RETURN_CODE "77" TIMEOUT "300")
