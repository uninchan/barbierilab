#! /bin/bash 

#SBATCH --job-name=scrnaseq
#SBATCH --partition=CLUSTER_NAME   # cluster-specific
#SBATCH --output /OUTDIR/test-%j.out
#SBATCH --error /OUTDIR/test-%j.err
#SBATCH --nodes=1 
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --time=144:00:00   # HH/MM/SS
#SBATCH --mem=120G   # memory requested, units available: K,M,G,T

set -e

# Update the PATH to include the directory containing cellranger-7.1.0
#export PATH=/PATH_DIR/cellranger-7.1.0:$PATH

cellranger count --id=sample_id \
   --fastqs=<fastq_dir> \
   --sample=sample_name \
   --transcriptome=/reference_dir/refdata-gex-GRCh38-2020-A

done
