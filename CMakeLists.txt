cmake_minimum_required(VERSION 3.20)
project(counter)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Wall -Wextra -Werror -pedantic -pedantic-errors)

find_package(Threads REQUIRED)

link_libraries(Threads::Threads)
add_executable(counter counter_spin_seq_opt.cpp)
