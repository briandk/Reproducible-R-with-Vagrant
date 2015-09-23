useful_packages_for_reproducible_research <- c(
  "devtools",
  "dplyr",
  "ggplot2",
  "httr",
  "knitr",
  "magrittr",
  "readxl",
  "rmarkdown",
  "tidyr"
)

install.packages(
  pkgs = useful_packages_for_reproducible_research,
  repos = "https://cran.rstudio.com/",
  dependencies = TRUE
)

# Throw in Jennifer Bryan's wonderful `reprex` package
devtools::install_github("jennybc/reprex")

# This is how you ought to use checkpoint!
library(checkpoint)
checkpoint(
  checkpointLocation = "/home/vagrant/",
  snapshotDate = "2015-09-19",
  project = ".",
  R.version = "3.2.2",
  scanForPackages = TRUE,
  verbose = TRUE,
  use.knitr = TRUE,
  auto.install.knitr = TRUE
)

