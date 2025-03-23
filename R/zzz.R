.onLoad <- function(libname, pkgname) {
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "sae4health loaded successfully.\n",
    "Use 'sae4health::run_app()' to start the app.\n",
    "Visit https://sae4health.stat.uw.edu/ for comprehensive documentation."
  )
}
