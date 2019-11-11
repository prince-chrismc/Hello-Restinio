cmake_minimum_required(VERSION 3.8)

project(hello-world-https)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

find_package(restinio CONFIG REQUIRED)
find_package(fmt CONFIG REQUIRED)

add_executable(hello-world-https main.cpp)

target_link_libraries(hello-world-https restinio::restinio)
target_link_libraries(hello-world-https ${CONAN_LIBS})

if(WIN32)
    target_link_libraries(hello-world-https wsock32 ws2_32)
endif()
