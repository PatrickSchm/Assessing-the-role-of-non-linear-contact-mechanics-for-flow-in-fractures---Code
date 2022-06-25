set(PACKAGE_VERSION "2.7.0")

if("${PACKAGE_FIND_VERSION_MAJOR}" EQUAL "2" AND
     "${PACKAGE_FIND_VERSION_MINOR}" EQUAL "7")
  set (PACKAGE_VERSION_COMPATIBLE 1) # compatible with newer
  if ("${PACKAGE_FIND_VERSION}" VERSION_EQUAL "2.7.0")
    set(PACKAGE_VERSION_EXACT 1) #exact match for this version
  endif()
endif()
