cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(NsiExample)

find_path(3DELIGHT_INCLUDE_DIR
    NAMES nsi.h
    HINTS /Applications/3Delight/include
    REQUIRED)
find_library(3DELIGHT_LIBRARY
    NAMES 3delight
    HINTS /Applications/3Delight/lib
    REQUIRED)

add_executable(NsiExample NsiExample.cpp)

target_include_directories(NsiExample PRIVATE ${3DELIGHT_INCLUDE_DIR})
target_link_libraries(NsiExample ${3DELIGHT_LIBRARY})

install(TARGETS NsiExample DESTINATION bin)
