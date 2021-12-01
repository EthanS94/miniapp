#!/bin/bash

#BSUB -J <pantheon_workflow_jid> 
#BSUB -nnodes 1
#BSUB -P <compute_allocation> 
#BSUB -W 00:10

module purge
source <pantheon_workflow_dir>/spack/share/spack/setup-env.sh
source <pantheon_workflow_dir>/loads
module list

mpiexec -n 2 <pantheon_run_dir>/cloverleaf3d_par
