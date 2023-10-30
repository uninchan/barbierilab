#! /bin/bash -l

#SBATCH --job-name=findMotifsGenome
#SBATCH --partition=CLUSTER_NAME   # cluster-specific
#SBATCH --output /OUTDIR/test-%j.out
#SBATCH --error /OUTDIR/test-%j.err
#SBATCH --nodes=1 
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --time=144:00:00   # HH/MM/SS
#SBATCH --mem=120G   # memory requested, units available: K,M,G,T

set -e

# Define the folder
folder="/DATADIR/"

# Update the PATH to include the directory containing findMotifsGenome.pl
export PATH=$PATH:/PATHDIR/homer/

# Change to the specified folder
cd "$folder" || exit

# Loop over all .bed files in the directory and run findMotifsGenome.pl
for peak_file in *.narrowPeak; do
     # Extract the base name of the peak file
    base_name=$(basename "$peak_file" .peak)

    # Define the output directory for each peak file
    output_dir="/OUTDIR/${base_name}_motifs"

    # Run findMotifsGenome.pl for each peak file
    findMotifsGenome.pl "$peak_file" hg19/mm10 "$output_dir" -size given
done
