#! /bin/bash 

#SBATCH --job-name=cellranger-atac_count
#SBATCH --partition=CLUSTER_NAME   # cluster-specific
#SBATCH --output /OUTDIR/test-%j.out
#SBATCH --error /OUTDIR/test-%j.err
#SBATCH --nodes=1 
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --time=144:00:00   # HH/MM/SS
#SBATCH --mem=120G   # memory requested, units available: K,M,G,T

set -e

# Update the PATH to include the directory containing cellranger-atac-2.1.0
#export PATH=/PATH_DIR/cellranger-atac-2.1.0:$PATH

cellranger-atac count --id=8152_ATAC \
                        --reference=/reference_dir/refdata-cellranger-arc-mm10-2020-A-2.0.0 \
                        --fastqs=<fastq_dir> \
                        --sample=mysample \
                        --chemistry=ARC-v1 \
			                  --localcores=8 \
                        --localmem=64

done
