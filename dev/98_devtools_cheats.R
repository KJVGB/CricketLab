
# devtools & golem — MANUAL cheat sheet
# Wrapped in if (FALSE) to stay inert.

if (FALSE) {
  # Keep docs up to date
  devtools::document()

  # Load package into dev session (no install)
  devtools::load_all()

  # Run tests (if/when you add testthat tests)
  devtools::test()

  # Full package check (CRAN-style)
  devtools::check()

  # Install the package locally
  devtools::install(upgrade = "never")

  # Build a source tarball
  devtools::build()

  # usethis niceties
  # usethis::use_readme_rmd()
  # usethis::use_mit_license("Kevin Van Gramberg")

  # golem goodies (run as needed)
  # golem::use_recommended_deps()
  # golem::add_utils()
  # golem::add_module(name = "your_module_name")
}

