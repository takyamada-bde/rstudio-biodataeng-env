install.packages(c(
  "tidyverse",
  "dotenv",
  "DBI",
  "dbplyr",
  "RPostgres",
  "anndata",
  "Seurat",
  "Signac",
  "WGCNA",
), dependencies = TRUE)

BiocManager::install(c(
  "BiocVersion",
  "BioBase",
  "BiocGenerics",
  "DESeq2",
  "edgeR",
  "monocle",
  "clusterProfiler",
  "mixOmics",
  "devtools"
), dependencies = TRUE)
