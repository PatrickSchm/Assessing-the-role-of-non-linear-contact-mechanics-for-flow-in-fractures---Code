#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dunecommon" for configuration ""
set_property(TARGET dunecommon APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(dunecommon PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libdunecommon.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS dunecommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_dunecommon "${_IMPORT_PREFIX}/lib/libdunecommon.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
