cmake_minimum_required(VERSION 3.2)
project(HelloThesis "NONE")

set(CMAKE_MODULE_PATH $ENV{CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR})
include(UseLATEX)

add_subdirectory(thesis)
