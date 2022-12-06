#!/bin/sh
#SBATCH -o ./OUTPUT/TASK7S/16THR/release_%j.out # STDOUT
export LD_LIBRARY_PATH=/opt/gcc-12.1.0/lib64
echo --- TEST 1 ---
release/counter
echo

echo --- TEST 2 ---
release/counter
echo

echo --- TEST 3 ---
release/counter
echo

echo --- TEST 4 ---
release/counter
echo

echo --- TEST 5 ---
release/counter

