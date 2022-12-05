#!/bin/sh
#SBATCH -o ./TRASH/slurm-%j.out # STDOUT
cmake -S . -B release -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/opt/gcc-12.1.0/bin/g++
cmake --build release

cmake -S . -B debug -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=/opt/gcc-12.1.0/bin/g++
cmake --build debug

cmake -S . -B release-tsan -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/opt/gcc-12.1.0/bin/g++ -DCMAKE_CXX_FLAGS="-fsanitize=thread"
cmake --build release-tsan

cmake -S . -B debug-tsan -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=/opt/gcc-12.1.0/bin/g++ -DCMAKE_CXX_FLAGS="-fsanitize=thread"
cmake --build debug-tsan
