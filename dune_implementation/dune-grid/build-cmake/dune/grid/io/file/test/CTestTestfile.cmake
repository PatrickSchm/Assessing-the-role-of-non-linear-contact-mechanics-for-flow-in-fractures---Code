# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/test
# Build directory: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(conformvolumevtktest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/conformvolumevtktest")
set_tests_properties(conformvolumevtktest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "conformvolumevtktest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(gnuplottest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/gnuplottest")
set_tests_properties(gnuplottest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "gnuplottest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(nonconformboundaryvtktest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/nonconformboundaryvtktest")
set_tests_properties(nonconformboundaryvtktest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "nonconformboundaryvtktest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(printgridtest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/printgridtest")
set_tests_properties(printgridtest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "printgridtest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(subsamplingvtktest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/subsamplingvtktest")
set_tests_properties(subsamplingvtktest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "subsamplingvtktest" SKIP_RETURN_CODE "77" TIMEOUT "600")
add_test(vtktest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/vtktest")
set_tests_properties(vtktest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "vtktest" SKIP_RETURN_CODE "77" TIMEOUT "1200")
add_test(vtktest-mpi-2 "/usr/local/bin/mpiexec" "-n" "2" "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/vtktest")
set_tests_properties(vtktest-mpi-2 PROPERTIES  PROCESSORS "2" REQUIRED_FILES "vtktest" SKIP_RETURN_CODE "77" TIMEOUT "1200")
add_test(vtksequencetest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/vtksequencetest")
set_tests_properties(vtksequencetest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "vtksequencetest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(amirameshtest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/amirameshtest")
set_tests_properties(amirameshtest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "amirameshtest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(starcdreadertest "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/starcdreadertest")
set_tests_properties(starcdreadertest PROPERTIES  PROCESSORS "1" REQUIRED_FILES "starcdreadertest" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(gmshtest-onedgrid "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/gmshtest-onedgrid")
set_tests_properties(gmshtest-onedgrid PROPERTIES  PROCESSORS "1" REQUIRED_FILES "gmshtest-onedgrid" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(gmshtest-uggrid "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/test/gmshtest-uggrid")
set_tests_properties(gmshtest-uggrid PROPERTIES  PROCESSORS "1" REQUIRED_FILES "gmshtest-uggrid" SKIP_RETURN_CODE "77" TIMEOUT "300")
