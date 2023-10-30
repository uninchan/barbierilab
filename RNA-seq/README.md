# RNA-seq

# Workflows
# Data acquisition
To fetch metadata and raw FastQ files from public and private databases ([fetchngs.sh](https://github.com/uninchan/barbierilab/blob/main/RNA-seq/fetchngs.sh))
# Pre-processing
## Pipelines
[nf-core](https://nf-co.re/rnaseq/3.12.0)

`nf-core/rnaseq` ([rnaseq.sh](https://github.com/uninchan/barbierilab/blob/main/RNA-seq/rnaseq.sh))

# Downstream Analysis
## Differential Gene Expression (DGE) analysis
### Pipelines
[DESeq2](https://bioconductor.org/packages/devel/bioc/vignettes/DESeq2/inst/doc/DESeq2.html)

## Pathway analysis
### [clusterProfiler](https://guangchuangyu.github.io/software/clusterProfiler/)
Statistical analysis and visualization of functional profiles for genes and gene clusters

### [Gene Set Enrichment Analysis (GSEA)](https://www.gsea-msigdb.org/gsea/index.jsp)
A computational method that determines whether an a priori defined set of genes shows statistically significant, concordant differences between two biological states (e.g. phenotypes).

[Molecular Signatures Database](https://www.gsea-msigdb.org/gsea/msigdb)
