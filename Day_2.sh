#!/bin/bash
#SBATCH --job-name=TASK
#SBATCH --output=TASK.out
#SBATCH --error=TASK.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=25G
#SBATCH --partition=base
#SBATCH --time=3:00:00
#SBATCH --reservation=biol217 

cd $WORK
mkdir Day2


cd $WORK/metagenomics
mkdir -p fastqc_out
fastqc 0_raw_reads/*.fastqc.gz -0 fastqc_out 