
# Run the golem app in DEV mode.
# Use: source("dev/run_app.R")  or  Ctrl/Cmd+Shift+S in RStudio, then Enter

if (interactive()) {
  # Load package without installing; avoid exporting everything
  pkgload::load_all(export_all = FALSE, helpers = FALSE, attach_testthat = FALSE)
  options(golem.app.prod = FALSE)   # dev mode (hot reloading where possible)
  CricketLab::run_app()             # << if your package name changes, update here
}

