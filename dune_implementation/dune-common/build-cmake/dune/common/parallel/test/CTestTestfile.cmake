# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/test
# Build directory: /home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(indexsettest "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/indexsettest")
set_tests_properties(indexsettest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "indexsettest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(remoteindicestest "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/remoteindicestest")
set_tests_properties(remoteindicestest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "remoteindicestest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(remoteindicestest-mpi-2 "/usr/local/bin/mpiexec" "-n" "2" "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/remoteindicestest")
set_tests_properties(remoteindicestest-mpi-2 PROPERTIES  PROCESSORS "2" REQUIRED_FILES "remoteindicestest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(selectiontest "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/selectiontest")
set_tests_properties(selectiontest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "selectiontest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(syncertest "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/syncertest")
set_tests_properties(syncertest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "syncertest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(syncertest-mpi-2 "/usr/local/bin/mpiexec" "-n" "2" "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/syncertest")
set_tests_properties(syncertest-mpi-2 PROPERTIES  PROCESSORS "2" REQUIRED_FILES "syncertest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(variablesizecommunicatortest "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/variablesizecommunicatortest")
set_tests_properties(variablesizecommunicatortest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "variablesizecommunicatortest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(variablesizecommunicatortest-mpi-2 "/usr/local/bin/mpiexec" "-n" "2" "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/variablesizecommunicatortest")
set_tests_properties(variablesizecommunicatortest-mpi-2 PROPERTIES  PROCESSORS "2" REQUIRED_FILES "variablesizecommunicatortest" SKIP_RETURN_CODE "77" TIMEOUT "300")
