#!/bin/bash -l
# NOTE the -l (login) flag!
#
#SBATCH -J spce
#SBATCH -o spce.output
#SBATCH -e spce.errput
#SBATCH --mail-user xxx@njit.edu
# Default in slurm
#SBATCH --mail-type=ALL

#SBATCH -p gor
#SBATCH --ntasks=10 --ntasks-per-node=10
#


rm -rf out
mkdir out/

module load gnu8/8.3.0  openmpi3/3.1.4 lammps/20200602

srun lmp_mpi -in NPT-spce.in