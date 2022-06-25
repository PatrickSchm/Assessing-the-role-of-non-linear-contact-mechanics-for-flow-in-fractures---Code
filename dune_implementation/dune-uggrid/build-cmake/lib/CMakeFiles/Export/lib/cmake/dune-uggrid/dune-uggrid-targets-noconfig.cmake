#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ugL" for configuration ""
set_property(TARGET ugL APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ugL PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libugL.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ugL )
list(APPEND _IMPORT_CHECK_FILES_FOR_ugL "${_IMPORT_PREFIX}/lib/libugL.a" )

# Import target "ugS2" for configuration ""
set_property(TARGET ugS2 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ugS2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libugS2.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ugS2 )
list(APPEND _IMPORT_CHECK_FILES_FOR_ugS2 "${_IMPORT_PREFIX}/lib/libugS2.a" )

# Import target "ugS3" for configuration ""
set_property(TARGET ugS3 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ugS3 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libugS3.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ugS3 )
list(APPEND _IMPORT_CHECK_FILES_FOR_ugS3 "${_IMPORT_PREFIX}/lib/libugS3.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
