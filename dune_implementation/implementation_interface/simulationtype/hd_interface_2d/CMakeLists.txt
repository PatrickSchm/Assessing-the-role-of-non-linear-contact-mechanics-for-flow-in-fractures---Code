add_executable(hd_interface hd_interface.cc)
add_dune_alberta_flags(hd_interface)

set(CLEANFILES  dgfparser.log q1*.vtu *.vtu *.png)
