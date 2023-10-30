#! /bin/bash -l

#SBATCH --job-name=annotatePeaks
#SBATCH --partition=CLUSTER_NAME   # cluster-specific
#SBATCH --output /OUTDIR/test-%j.out
#SBATCH --error /OUTDIR/test-%j.err
#SBATCH --nodes=1 
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --time=144:00:00   # HH/MM/SS
#SBATCH --mem=120G   # memory requested, units available: K,M,G,T

set -e

# Update the PATH to include the directory containing Homer binaries
export PATH=$PATH:<PATH_DIR>

# Define the directory containing the peak files
peak_dir="<INDIR>" 

# Define the output directory for all peak files
output_dir_gained="<OUTDIR>"

# Define the motif file
motif_file="<MOTIF_DIR>"

# Create the output directories if they do not exist
mkdir -p "$output_dir_gained"

# Loop over all peak files in the directory and analyze them
for peak_file in "$peak_dir"/*.txt; do
  # Continue if it's not a file
  [ ! -f "$peak_file" ] && continue

  # Extract the base name of the peak file
  base_name=$(basename "$peak_file" .txt)

  # Define the output file for gained regions
  output_file="$output_dir_gained/${base_name}_annotated.txt"

  # Run annotatePeaks.pl for the gained regions peak file
  annotatePeaks.pl "$peak_file" hg19/mm10 -m "$motif_file" -size 1000 -hist 5 > "$output_file"
done
