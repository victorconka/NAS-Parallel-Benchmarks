# NAS-Parallel-Benchmarks
Performance tests of Intel, AMD and ARM platforms executing 5 kernels of NAS Parallel benchmarks: 
 * CG - Conjugate Gradient
 * EP - Extremely Parallel
 * FT - Fourier Transform
 * IS - Integer Sort
 * MG - Multi Grid

## Objective
Execute class D problem size for all 5 benchmarks mentioned above starting with number of processes np=1, incrementing by power of 2 up to np=64 for both available implementations: MPI and OMP.

## Problem
Execution of MPI benchmark implementations of (FT, IS, MG) presents problems for np <= 8.  
  * IS - Provides a message informing that for class D min np=4
  * FT - Segmentation error. Execution is successful for np=2.
  * MG - Segmentation error. Execution is successful for np=8, same error for np=[1,2,4].  

Execution logs can be found in current folder.
