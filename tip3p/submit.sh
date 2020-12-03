#!/bin/bash -l
# NOTE the -l (login) flag!
#
#SBATCH -J tip3p
#SBATCH -o tip3p.output
#SBATCH -e tip3p.errput
# Default in slurm
#SBATCH --mail-user xxx@njit.edu
#SBATCH --mail-type=ALL

#SBATCH -p gor
#SBATCH --ntasks=10 --ntasks-per-node=10
#


rm -rf out
mkdir out/

module load gnu8/8.3.0  openmpi3/3.1.4 lammps/20200602

srun lmp_mpi -in NPT-tip3p.in