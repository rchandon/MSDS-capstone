library(reticulate)
library(tidyverse)
library(ggplot2)
library(dplyr)

env_name <- "retic_env2"

# create our virtual env - BJV
message("Creating virtual environment '", env_name, "' and installing packages...")

reticulate::virtualenv_create(
  envname = env_name,
  packages = c("pandas", "requests", "openpyxl", "pycountry", "wbgapi")
)

# Direct R to the correct virtual environment
reticulate::use_virtualenv(env_name, required = TRUE)

message("\nPython environment is now set up and ready.")
py_config()