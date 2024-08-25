
install.packages("rix", repos = c(
  "https://b-rodrigues.r-universe.dev",
  "https://cloud.r-project.org"
))


library(rix)


rix(
  r_ver = "latest",
  r_pkgs =
    c(
      "tidyverse",
      "targets",
      "",
      "tarchetypes",
      "rmarkdown",
      "openxlsx",
      "readxl"
    ),
  system_pkgs = NULL,
  git_pkgs = NULL,
  ide = "rstudio",
  project_path = "~/shellfactory/",
  overwrite = TRUE,
  print = TRUE
