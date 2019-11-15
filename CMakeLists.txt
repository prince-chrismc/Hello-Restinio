project(hello-world-https)
cmake_minimum_required(VERSION 3.8)

set(CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR})
find_package(restinio 0.6 REQUIRED)
find_package(OpenSSL 1.1 REQUIRED)

add_executable(hello-world-https src/main.cpp)

target_link_libraries(hello-world-https restinio::restinio OpenSSL::OpenSSL)
