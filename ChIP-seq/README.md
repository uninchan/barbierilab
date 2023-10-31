# ChIP-seq
# Workflow
## Data acquisition
To fetch metadata and raw FastQ files from public and private databases by using `nf-core/fetchngs` atacseq pipeline ([nf-co.re](https://nf-co.re/fetchngs/1.11.0), [GitHub](https://github.com/nf-core/fetchngs), [fetchngs.sh](https://github.com/uninchan/barbierilab/blob/main/ATAC-seq/fetchngs.sh))
## Pre-processing
### Pipelines
[ENDCODE](https://github.com/ENCODE-DCC/chip-seq-pipeline2)

`nf-core/chipseq` ChIP-seq peak-calling, QC and differential analysis pipeline ([nf-co.re](https://nf-co.re/chipseq/dev), [GitHub](https://github.com/nf-core/chipseq))

[No control sample?](https://github.com/nf-core/chipseq/issues/126)

`nf-core/atacseq` ATAC-seq peak-calling and QC analysis pipeline ([nf-co.re](https://nf-co.re/atacseq/2.1.2), [GitHub](https://github.com/nf-core/atacseq))

Usage: `nf-core/atacseq` by setting the `--narrow_peak` parameter ([chipseq-atac.sh](https://github.com/uninchan/barbierilab/blob/main/ChIP-seq/chipseq-atac.sh))
## Downstream analysis
## Differential analysis
### Pipelines
[DiffBind](https://bioconductor.org/packages/release/bioc/vignettes/DiffBind/inst/doc/DiffBind.pdf)
Differential binding analysis of ChIP-Seq peak data

## Motif analysis
### [Homer](http://homer.ucsd.edu/homer/)
Software for motif discovery and next generation sequencing analysis

#### Finding Enriched Motifs in Genomic Regions ([findMotifsGenome.pl](http://homer.ucsd.edu/homer/ngs/peakMotifs.html))

[findMotifsGenome.sh](https://github.com/uninchan/barbierilab/blob/main/ChIP-seq/findMotifsGenome.sh)

#### Annotating Regions in the Genome ([annotatePeaks.pl](http://homer.ucsd.edu/homer/ngs/annotation.html))

[annotatePeaks.sh](https://github.com/uninchan/barbierilab/blob/main/ChIP-seq/annotatePeaks.sh)
