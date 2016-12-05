cmake_minimum_required(VERSION 3.6)
project(MIPS_Simulator)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp)
add_executable(MIPS_Simulator ${SOURCE_FILES})