#! /bin/bash 
#SBATCH --job-name=fetchngs_rnaseq
#SBATCH --output /OUTDIR/test-%j.out
#SBATCH --error /OUTDIR/test-%j.err
#SBATCH --partition=CLUSTER_NAME   # cluster-specific
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --time=48:00:00   # HH/MM/SS
#SBATCH --mem=120G   # memory requested, units available: K,M,G,T

set -e

spack load python@3.7.7%gcc@8.2.0 arch=linux-centos7-skylake_avx512
spack load singularity
spack load openjdk@11.0.12_7 arch=linux-centos7-skylake_avx512

nextflow run nf-core/fetchngs -r 1.10.0 \
--input /INDIR/SRR_Acc_List.csv \
--outdir <OUTDIR> \
-profile singularity --nf_core_pipeline rnaseq

done
