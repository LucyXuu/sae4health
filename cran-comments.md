## Maintainer's Response to CRAN Reivew [2025-03-31] for Version 1.2.1

- Fixed an issue on R-devel (e.g., `r-devel-linux-x86_64-debian-gcc`) where `includeMarkdown()` failed when the expected `.rmd` documentation files were not found or accessible in the test environment.
- Wrapped `system.file()` + `includeMarkdown()` calls in `file.exists()` checks to ensure graceful fallback when documentation files are unavailable.
- Removed UI-related tests that were triggering errors on platforms where the markdown files could not be rendered or written to temporary files.

## Maintainer's Response to CRAN Reivew [2025-03-26] for Version 1.2.0

- The **Description** field has been revised to avoid starting with the package name and now correctly refers to software names such as 'shiny' using single quotes, following CRAN guidelines.

- All unsuppressable console outputs (e.g., `print()`) have been removed or replaced with appropriate alternatives such as `message()` or conditioned `cat()` calls. The referenced usage in `R/prepare_preload_dat.R` has been revised accordingly.

- Any file writing to the working directory or user file system (e.g., via `getwd()` or hardcoded paths) has been removed or commented out. These were intended for internal use and are now excluded from the scripts. 


## CRAN Reviewer Feedback Summary [2025-03-26] for Version 1.2.0

### DESCRIPTION Formatting
- Do not start the Description with "This package", the package name, or a variation thereof.
- Ensure package names, software names, and API names are written in single quotes in both the Title and Description fields (e.g., 'shiny').
- Note: Package names are case-sensitive.

### Console Output
- Functions should not use `print()` or `cat()` to emit unsuppressable messages to the console.
- Use `message()`, `warning()`, `stop()`, or `cat()` within a `if (verbose)` block instead.
- Where appropriate, prefer returning informative objects that users can print themselves.
- File affected: `R/prepare_preload_dat.R`

### Writing to Filesystem
- Functions, examples, vignettes, and tests must not write to the user's home directory, package directory, or `getwd()`.
- Do not use hardcoded or default paths that write files unless explicitly specified by the user.
- In examples/vignettes/tests, always write to `tempdir()`.



## CRAN Initial Submission Maintainer's Comments for Version 1.2.0

## Versioning
* This is the first submission of this package to CRAN, but the internal version is listed as 1.2.0.
* Previous versions were only available on GitHub and were not submitted to CRAN.

## Spelling Check NOTE
* The description contains technical terms that CRAN's spell checker does not recognize:
  * **LMICs** (Low- and Middle-Income Countries)
  * **SAE** (Small Area Estimation)
  * **subnational** (commonly used in public health and statistics)
* These are correctly spelled and should not be considered errors.
