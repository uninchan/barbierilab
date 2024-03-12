#! /bin/bash -l
 
#SBATCH --partition=scu-cpu   # cluster-specific
#SBATCH --nodes=1 
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --job-name=GSE128867_chipseq
#SBATCH --output /OUTDIR/test-%j.out
#SBATCH --error /OUTDIR/test-%j.err
#SBATCH --time=144:00:00   # HH/MM/SS
#SBATCH --mem=120G   # memory requested, units available: K,M,G,T

set -e

spack load python@3.7.7%gcc@8.2.0 arch=linux-centos7-skylake_avx512
spack load singularity
spack load openjdk@11.0.12_7 arch=linux-centos7-skylake_avx512

nextflow run nf-core/chipseq -r dev -profile singularity \
--input /INDIR/samplesheet.csv \
--outdir <OUTDIR> \
--genome mm10/hg19 --read_length 50 --skip_fastqc --skip_spp --aligner bowtie2 --save_align_intermeds \
--narrow_peak \
--macs_pvalue 0.05 \

echo "$(date +"%x %r %Z") completed." 
