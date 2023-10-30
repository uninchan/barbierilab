#! /bin/bash -l

 #SBATCH --job-name=atacseq
#SBATCH --partition=CLUSTER_NAME   # cluster-specific
#SBATCH --output /OUTDIR/test-%j.out
#SBATCH --error /OUTDIR/test-%j.err
#SBATCH --nodes=1 
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --time=144:00:00   # HH/MM/SS
#SBATCH --mem=120G   # memory requested, units available: K,M,G,T

set -e

spack load python@3.7.7%gcc@8.2.0 arch=linux-centos7-skylake_avx512
spack load singularity
spack load openjdk@11.0.12_7 arch=linux-centos7-skylake_avx512

nextflow run nf-core/atacseq -r 2.1.2 -profile singularity \
--input /INDIR/samplesheet.csv \
--outdir <OUTDIR> \
--genome hg19/mm10 \
--read_length 50
