add_subdirectory(test)

# normal headers
set(lowinclude_HEADERS  heaps.h ugenv.h ugstruct.h misc.h debug.h ugtypes.h
  general.h dimension.h ugtimer.h scan.h
  defaults.h fileopen.h namespace.h)

# dimension-independent lib
add_library(low OBJECT ugenv.cc heaps.cc fifo.cc misc.cc defaults.cc initlow.cc
  fileopen.cc ugstruct.cc debug.cc bio.cc scan.cc ugtimer.cc)

if(DUNE_BUILD_BOTH_LIBS)
  # For shared libraries we need position independent code
  set_property(TARGET low PROPERTY POSITION_INDEPENDENT_CODE TRUE)
endif()

install(FILES ${lowinclude_HEADERS} DESTINATION  ${CMAKE_INSTALL_PKGINCLUDEDIR})
