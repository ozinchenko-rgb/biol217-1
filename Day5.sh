#!/bin/bash
#SBATCH --job-name=TASK
#SBATCH --output=TASK.out
#SBATCH --error=TASK.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=25G
#SBATCH --partition=base
#SBATCH --time=01:00:00
#SBATCH --reservation=biol217

cd /work_beegfs/sunam225/metagenomics

module load gcc12-env/12.1.0
module load micromamba
export MAMBA_ROOT_PREFIX=$WORK/.micromamba

#cd $WORK

#micromamba run -n 00_anvio anvi-run-scg-taxonomy -c contig_anvio/contigs.db -T 12 -P 1

#contig_anvio/contigs.db

