# compile the different domain-modules
add_subdirectory(std)
# install the central header
install(FILES domain.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
