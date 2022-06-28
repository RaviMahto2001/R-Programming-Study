old.packages()

#Bioconductor
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("GenomicFeatures")
#not working
source("https://bioconductor.org/biocLite.R")
bioclite()

#Github
install_github("Author/Packagename")

session_info()

browseVignettes("ggplot2")
