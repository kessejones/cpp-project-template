set(SOURCES
    main.cpp
)

include_directories(.)
add_executable(${CMAKE_PROJECT_NAME} ${SOURCES})
install(TARGETS ${CMAKE_PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_BINARY_DIR})
