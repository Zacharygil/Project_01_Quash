cmake_minimum_required(VERSION 3.6)
project(quash)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
    src/parsing/lex.yy.c
    src/parsing/memory_pool.c
    src/parsing/memory_pool.h
    src/parsing/parse.tab.c
    src/parsing/parse.tab.h
    src/parsing/parsing_interface.c
    src/parsing/parsing_interface.h
    src/command.c
    src/command.h
    src/debug.h
    src/deque.h
    src/execute.c
    src/execute.h
    src/quash.c
    src/quash.h
    test-cases/test-setup/delayed_echo.c)

add_executable(quash ${SOURCE_FILES})