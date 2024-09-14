
install.packages("rix", repos = c(
  "https://b-rodrigues.r-universe.dev",
  "https://cloud.r-project.org"
))


library(rix)


rix(
  r_ver = "4.4.0",
  r_pkgs =
    c(
      "tidyverse",
      "targets",
      "devtools",
      "testthat",
      "tarchetypes",
      "rmarkdown",
      "openxlsx",
      "readxl"
    ),
  system_pkgs = NULL,
  git_pkgs = NULL,
  ide = "rstudio",
  project_path = "~/shellfactory/shellcase1/",
  overwrite = TRUE,
  print = TRUE
)