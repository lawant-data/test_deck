#!/usr/bin/env Rscript
## Bootstrap R environment using renv and install core packages for the project
pkgs <- c(
  "tidyverse","data.table","httr","jsonlite","readxl","janitor","lubridate",
  "xts","zoo","quantmod","TTR","plotly","rmarkdown","ggthemes","scales","cowplot","patchwork",
  "renv"
)

repos <- getOption("repos")
if (is.null(repos) || repos[1] == "@CRAN@") {
  options(repos = c(CRAN = "https://cloud.r-project.org"))
}

if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}
library(renv)

# Initialize renv if not present (bare init keeps project clean)
if (!file.exists("renv.lock") && !file.exists("renv/activate.R")) {
  message("Initializing renv (bare)")
  renv::init(bare = TRUE)
}

# Install missing packages into the renv environment
installed <- rownames(installed.packages())
to_install <- setdiff(pkgs, installed)
if (length(to_install)) {
  message("Installing packages: ", paste(to_install, collapse = ", "))
  install.packages(to_install)
} else {
  message("All requested packages already installed locally.")
}

# Snapshot the environment so renv.lock is created/updated
renv::snapshot(prompt = FALSE)

message("Bootstrap complete. Use 'Rscript scripts/bootstrap.R' to recreate environment.")
