#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=00:30:00
#SBATCH --job-name=01_fastqc
#SBATCH --output=01_fastqc.out
#SBATCH --error=01_fastqc.err
#SBATCH --partition=base
#SBATCH --reservation=biol217

module load gcc12-env/12.1.0
module load micromamba/1.4.2
eval "$(micromamba shell hook --shell=bash)"
cd $WORK/genomics
micromamba env list
micromamba activate 01_short_reads_qc

# creata new folder for output of qc 
mkdir -p $WORK/genomics/0_raw_reads/short_reads/1_fastqc_raw


#for i in 0_raw_reads/short_reads/*.gz
#do 
  #fastqc $i -o 0_raw_reads/short_reads/output_dir/ -t 8
#done

#micromamba deactivate
#jobinfo




# Absolute paths
#READS_DIR="$WORK/genomics/0_raw_reads/short_reads"
#OUTDIR="$WORK/genomics/1_short_reads_qc/1_fastqc_raw"

#mkdir -p "$OUTDIR"

# Activate env (absolute path)
micromamba activate "$WORK/.micromamba/envs/01_short_reads_qc"

# For-loop over all gzipped FASTQ files
#for i in "$READS_DIR"/*.fastq.gz
#do
  #echo "Running FastQC on: $i"
  #fastqc -t 8 "$i" -o "$OUTDIR"
#done

#micromamba deactivate

# Run jobinfo only if available
#command -v jobinfo >/dev/null 2>&1 && jobinfo