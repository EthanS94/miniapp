#!/bin/bash

#BSUB -J <pantheon_workflow_jid> 
#BSUB -nnodes 2
#BSUB -P <compute_allocation> 
#BSUB -W 00:10

# module load gcc/10.2.0
module load gcc/9.3.0

jsrun -n2 <pantheon_run_dir>/cloverleaf3d_par
