# install into share-directory
set(dist_data_DATA  helpfile.list RefRules.data tetra.rls triangle.rls)
install(FILES ${dist_data_DATA} DESTINATION ${CMAKE_INSTALL_DATADIR})
