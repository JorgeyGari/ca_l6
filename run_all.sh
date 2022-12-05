#!/bin/sh
#SBATCH -o ./TRASH/slurm-%j.out # STDOUT
echo ---     DEBUG    ---
sbatch run_debug.sh
echo ---    RELEASE   ---
sbatch run_release.sh
echo ---  DEBUG-TSAN  ---
sbatch run_debug-tsan.sh
echo --- RELEASE-TSAN ---
sbatch run_release-tsan.sh
