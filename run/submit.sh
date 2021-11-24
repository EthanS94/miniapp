#!/bin/bash

#BSUB -J <pantheon_workflow_jid> 
#BSUB -nnodes 2
#BSUB -P <compute_allocation> 
#BSUB -W 00:10

module purge
module load gcc/9.3.0
module load openmpi-4.1.1-gcc-9.3.0-4rgdyx2
module list

jsrun -n2 <pantheon_run_dir>/cloverleaf3d_par
