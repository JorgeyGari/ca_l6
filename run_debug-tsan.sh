#!/bin/sh
#SBATCH -o ./TSAN/debug-tsan_%j.out # STDOUT
export LD_LIBRARY_PATH=/opt/gcc-12.1.0/lib64
debug-tsan/counter
