#!/bin/bash
#PBS -N balance
#PBS -l select=2:ncpus=128,walltime=00:00:10
#PBS -q qexp
#PBS -e balance.e
#PBS -o balance.o

cd ~/mpi_balance
pwd

## module names can vary on different platforms
module load R
echo "loaded R"
module list

## prevent warning when fork is used with MPI
export OMPI_MCA_mpi_warn_on_fork=0

time mpirun -np 2 Rscript hello_balance.R 