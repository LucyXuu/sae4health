# CRAN Submission Comments for version 1.2.0

## Versioning
* This is the first submission of this package to CRAN, but the internal version is listed as 1.2.0.
* Previous versions were only available on GitHub and were not submitted to CRAN.

## Package Dependencies
* This package is a Shiny web application that requires many dependencies for interactivity, visualization, and data processing.
* The package currently has around 35 dependencies under `Imports` to ensure full functionality.
* Moving some dependencies to `Suggests` would require users to install them manually, which may reduce usability. However, I am open to feedback if CRAN prefers a different approach.

## Spelling Check NOTE
* The description contains technical terms that CRAN's spell checker does not recognize:
  * **LMICs** (Low- and Middle-Income Countries)
  * **SAE** (Small Area Estimation)
  * **subnational** (commonly used in public health and statistics)
* These are correctly spelled and should not be considered errors.

Thank you for reviewing this submission. I appreciate any guidance from CRAN.
