cmake_minimum_required(VERSION 3.00)
project(calculator)
set(CMAKE_C_CSTANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread -lm")
file(GLOB MAIN
    "Source.c")
    add_executable(executable ${MAIN})