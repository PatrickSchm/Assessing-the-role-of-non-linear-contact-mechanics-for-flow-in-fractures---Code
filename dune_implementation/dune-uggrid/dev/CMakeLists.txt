set(SOURCES  ugdevices.cc)
set(devinclude_HEADERS  ugdevices.h)

add_library(devices OBJECT ${SOURCES})
install(FILES ${devinclude_HEADERS} DESTINATION  ${CMAKE_INSTALL_PKGINCLUDEDIR})
