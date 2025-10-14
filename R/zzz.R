.onLoad <- function(libname, pkgname) {
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "sae4health loaded successfully.\n",
    "Run 'sae4health::run_app()' to launch the app.\n",
    "For comprehensive documentation, visit https://sae4health.stat.uw.edu/."
  )
}
