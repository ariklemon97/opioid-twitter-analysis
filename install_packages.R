# Run once from the repository root: Rscript install_packages.R
packages <- c("readr", "dplyr", "stringr", "tidyr", "tm", "SnowballC",
              "tidytext", "wordcloud", "ggplot2", "stringi", "knitr", "rmarkdown")
missing <- setdiff(packages, rownames(installed.packages()))
if (length(missing)) install.packages(missing, repos = "https://cloud.r-project.org")
