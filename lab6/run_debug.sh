#!/bin/sh
#SBATCH -o ./OUTPUT/debug_%j.out # STDOUT
export LD_LIBRARY_PATH=/opt/gcc-12.1.0/lib64
echo --- TEST 1 ---
debug/counter
echo

echo --- TEST 2 ---
debug/counter
echo

echo --- TEST 3 ---
debug/counter
echo

echo --- TEST 4 ---
debug/counter
echo

echo --- TEST 5 ---
debug/counter
