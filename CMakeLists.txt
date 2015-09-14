cmake_minimum_required(VERSION 3.3)
project(smcOriginal)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    smc.c
    smc.h)

add_executable(smcOriginal ${SOURCE_FILES})