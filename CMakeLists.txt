cmake_minimum_required(VERSION 3.16)
project(CppProject CXX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -Wextra -fno-exceptions -std=c++2a")

add_custom_target(run
    COMMAND ${CMAKE_COMMAND} -E env ${CMAKE_BINARY_DIR}/${CMAKE_PROJECT_NAME}
    USES_TERMINAL
)

add_custom_target(build-run
    COMMAND ${CMAKE_MAKE_PROGRAM} install
    COMMAND ${CMAKE_MAKE_PROGRAM} run
    USES_TERMINAL
)

add_subdirectory(src)
