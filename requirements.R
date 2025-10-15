# List of CRAN packages to install (used by scripts/bootstrap.R)
pkgs <- c(
  "tidyverse","data.table","httr","jsonlite","readxl","janitor","lubridate",
  "xts","zoo","quantmod","TTR","plotly","rmarkdown","ggthemes","scales","cowplot","patchwork",
  "renv"
)
writeLines(pkgs)
