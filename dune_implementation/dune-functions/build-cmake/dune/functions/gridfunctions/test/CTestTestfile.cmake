# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/test
# Build directory: /home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(analyticgridviewfunctiontest "/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test/analyticgridviewfunctiontest")
set_tests_properties(analyticgridviewfunctiontest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "analyticgridviewfunctiontest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(discreteglobalbasisfunctiontest "/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test/discreteglobalbasisfunctiontest")
set_tests_properties(discreteglobalbasisfunctiontest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "discreteglobalbasisfunctiontest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(gridfunctiontest "/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test/gridfunctiontest")
set_tests_properties(gridfunctiontest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "gridfunctiontest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(localfunctioncopytest "/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test/localfunctioncopytest")
set_tests_properties(localfunctioncopytest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "localfunctioncopytest" SKIP_RETURN_CODE "77" TIMEOUT "300")
