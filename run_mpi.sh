#!/bin/bash
class="D"
param_class=${1}
param_program=${2}
param_threads=${3}
mpirun --use-hwthread-cpus -n $param_threads ./NPB3.4.2/NPB3.4-MPI/bin/$param_program.${param_class}.x | tee -a mpi_${param_program}_${param_threads}_${param_class}.log
