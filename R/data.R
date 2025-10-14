###############################################################
### documentation for DHS meta data
###############################################################

#' DHS Country Metadata
#'
#' A dataset containing metadata for countries included in DHS surveys, including standardized country codes across multiple international organizations.
#'
#' @format A data frame with 60 rows and 12 columns:
#' \describe{
#'   \item{UNAIDS_CountryCode}{Country code used by UNAIDS.}
#'   \item{SubregionName}{Name of the subregion (e.g., West Africa, South Asia).}
#'   \item{WHO_CountryCode}{Country code used by WHO.}
#'   \item{FIPS_CountryCode}{Country code used by FIPS.}
#'   \item{UNICEF_CountryCode}{Country code used by UNICEF.}
#'   \item{RegionName}{Name of the global region (e.g., Africa, Asia).}
#'   \item{ISO2_CountryCode}{Two-letter ISO country code.}
#'   \item{ISO3_CountryCode}{Three-letter ISO country code.}
#'   \item{RegionOrder}{Numeric ordering of the region for visualization.}
#'   \item{DHS_CountryCode}{Unique country code assigned by DHS.}
#'   \item{CountryName}{Full name of the country.}
#'   \item{UNSTAT_CountryCode}{Country code used by UN Statistics Division.}
#' }
#' @docType data
#' @keywords datasets
"DHS.country.meta"

#' DHS Survey Metadata
#'
#' A dataset containing metadata for DHS surveys supported by the app.
#'
#' @format A data frame with 153 rows and 30 columns:
#' \describe{
#'   \item{ReleaseDate}{Date the survey data was released.}
#'   \item{SurveyId}{Unique ID assigned to each DHS survey.}
#'   \item{MaxAgeWomen}{Maximum age of surveyed women.}
#'   \item{FieldworkStart}{Start date of survey fieldwork.}
#'   \item{MinAgeMen}{Minimum age of surveyed men.}
#'   \item{ImplementingOrg}{Organization implementing the survey.}
#'   \item{SurveyCharacteristicIds}{IDs of survey characteristics.}
#'   \item{SurveyType}{Type of survey (e.g., DHS, AIS, MIS).}
#'   \item{SurveyYearLabel}{Label describing the survey year.}
#'   \item{IndicatorData}{Boolean. Whether indicator data is available.}
#'   \item{MinAgeWomen}{Minimum age of surveyed women.}
#'   \item{SurveyYear}{Year in which the DHS survey was conducted.}
#'   \item{FieldworkEnd}{End date of survey fieldwork.}
#'   \item{DHS_CountryCode}{DHS country code.}
#'   \item{NumberOfSamplePoints}{Number of sample points in the survey.}
#'   \item{CountryName}{Name of the country where the survey was conducted.}
#'   \item{NumberOfWomen}{Number of women surveyed.}
#'   \item{SubregionName}{Name of the subregion.}
#'   \item{MaxAgeMen}{Maximum age of surveyed men.}
#'   \item{SurveyNum}{Survey number assigned by DHS.}
#'   \item{SurveyStatus}{Status of the survey (e.g., Completed, Ongoing).}
#'   \item{NumberOfFacilities}{Number of health facilities surveyed.}
#'   \item{UniverseOfMen}{Population coverage for male respondents.}
#'   \item{RegionName}{Region name for survey coverage.}
#'   \item{UniverseOfWomen}{Population coverage for female respondents.}
#'   \item{Footnotes}{Additional survey notes.}
#'   \item{PublicationDate}{Date when the survey results were published.}
#'   \item{NumberofHouseholds}{Number of households surveyed.}
#'   \item{NumberOfMen}{Number of men surveyed.}
#'   \item{GPS_avail}{Whether GPS coordinates are available for cluster locations.}
#' }
#' @docType data
#' @keywords datasets
"DHS.survey.meta"



#' DHS Dataset Metadata
#'
#' A dataset containing metadata on recodes for DHS surveys supported by the app.
#'
#' @format A data frame with 5,636 rows and 13 columns:
#' \describe{
#'   \item{FileFormat}{Format of the dataset file (e.g., Stata, SPSS, CSV).}
#'   \item{FileSize}{Size of the dataset file in megabytes.}
#'   \item{DatasetType}{Type of dataset/recode (e.g., Household, Individual, Children, Biomarker).}
#'   \item{SurveyNum}{Survey number assigned by DHS.}
#'   \item{SurveyId}{Unique ID of the survey associated with the dataset.}
#'   \item{FileType}{Type of file (e.g., Household Recode, Birth Recode, Men's Recode).}
#'   \item{FileDateLastModified}{Date when the dataset file was last modified.}
#'   \item{SurveyType}{Type of DHS survey (e.g., DHS, AIS, MIS).}
#'   \item{SurveyYearLabel}{Label describing the survey year.}
#'   \item{SurveyYear}{Year in which the DHS survey was conducted.}
#'   \item{DHS_CountryCode}{Unique country code assigned by DHS.}
#'   \item{FileName}{Name of the dataset file.}
#'   \item{CountryName}{Full name of the country associated with the dataset.}
#' }
#' @docType data
#' @keywords datasets
"DHS.dataset.meta"



###############################################################
### documentation for indicators supported in the app
###############################################################

#' Reference Table for Original 22 Indicators
#'
#' A dataset containing the original 22 health and demographic indicators supported in the app.
#'
#' @format A data frame with 22 rows and 13 columns:
#' \describe{
#'   \item{ID}{Unique identifier for the indicator.}
#'   \item{Description}{Short label for the indicator.}
#'   \item{Full_definition}{Detailed definition of the indicator.}
#'   \item{Topic}{General category or theme of the indicator.}
#'   \item{Chap_abbrev}{Abbreviation of the chapter where the indicator appears.}
#'   \item{IR}{Logical. Whether the indicator is available in the Individual Recode dataset.}
#'   \item{PR}{Logical. Whether the indicator is available in the Household Members dataset.}
#'   \item{KR}{Logical. Whether the indicator is available in the Children's Recode dataset.}
#'   \item{BR}{Logical. Whether the indicator is available in the Birth Recode dataset.}
#'   \item{HR}{Logical. Whether the indicator is available in the Household Recode dataset.}
#'   \item{MR}{Logical. Whether the indicator is available in the Men's Recode dataset.}
#'   \item{AR}{Logical. Whether the indicator is available in the AIDS Indicator Survey dataset.}
#'   \item{CR}{Logical. Whether the indicator is available in the Couple's Recode dataset.}
#' }
#' @docType data
#' @keywords datasets
"ref_tab_22"


#' Newly Added Indicators Reference Table
#'
#' A dataset containing newly added health and demographic indicators in the app after its initial release.
#'
#' @format A data frame with 134 rows and 13 columns:
#' \describe{
#'   \item{ID}{Unique identifier for the indicator.}
#'   \item{Description}{Short label for the indicator.}
#'   \item{Full_definition}{Detailed definition of the indicator.}
#'   \item{Topic}{General category or theme of the indicator.}
#'   \item{Chap_abbrev}{Abbreviation of the chapter where the indicator appears.}
#'   \item{IR}{Logical. Whether the indicator is available in the Individual Recode dataset.}
#'   \item{PR}{Logical. Whether the indicator is available in the Household Members dataset.}
#'   \item{KR}{Logical. Whether the indicator is available in the Children's Recode dataset.}
#'   \item{BR}{Logical. Whether the indicator is available in the Birth Recode dataset.}
#'   \item{HR}{Logical. Whether the indicator is available in the Household Recode dataset.}
#'   \item{MR}{Logical. Whether the indicator is available in the Men's Recode dataset.}
#'   \item{AR}{Logical. Whether the indicator is available in the AIDS Indicator Survey dataset.}
#'   \item{CR}{Logical. Whether the indicator is available in the Couple's Recode dataset.}
#' }
#' @docType data
#' @keywords datasets
"ref_tab_new"



#' Combined Indicators Reference Table
#'
#' A dataset containing all 153 indicators supported in the app, combining the original 22 indicators with the newly added ones.
#'
#' @format A data frame with 153 rows and 15 columns:
#' \describe{
#'   \item{ID}{Unique identifier for the indicator.}
#'   \item{Description}{Short label for the indicator.}
#'   \item{Full_definition}{Detailed definition of the indicator.}
#'   \item{Topic}{General category or theme of the indicator.}
#'   \item{Chap_abbrev}{Abbreviation of the chapter where the indicator appears.}
#'   \item{IR}{Logical. Whether the indicator is available in the Individual Recode dataset.}
#'   \item{PR}{Logical. Whether the indicator is available in the Household Members dataset.}
#'   \item{KR}{Logical. Whether the indicator is available in the Children's Recode dataset.}
#'   \item{BR}{Logical. Whether the indicator is available in the Birth Recode dataset.}
#'   \item{HR}{Logical. Whether the indicator is available in the Household Recode dataset.}
#'   \item{MR}{Logical. Whether the indicator is available in the Men's Recode dataset.}
#'   \item{AR}{Logical. Whether the indicator is available in the AIDS Indicator Survey dataset.}
#'   \item{CR}{Logical. Whether the indicator is available in the Couple's Recode dataset.}
#'   \item{Chapter}{Chapter reference from the DHS reports.}
#'   \item{Title}{Title of the section where the indicator appears.}
#' }
#' @docType data
#' @keywords datasets
"ref_tab_all"




#' Matching Results Between DHS and GitHub Indicators, Imported from surveyPrev
#'
#' The dataset `match_all_result` contains the results of matching indicators
#' from DHS (Demographic and Health Surveys) with those extracted from GitHub.
#' The dataset includes similarity scores, recoding names, indicator definitions,
#' and positional information within the matched text.
#'
#' @format A data frame with 132 rows and 20 variables:
#' \describe{
#'   \item{indicator_ID_DHS}{Character. Unique ID of the indicator in DHS.}
#'   \item{DHS_label}{Character. Label assigned to the indicator in DHS.}
#'   \item{DHS_definition}{Character. Description or definition of the DHS indicator.}
#'   \item{Combined}{Character. Combined text representation for similarity matching.}
#'   \item{Similarity}{Numeric. Similarity score between DHS and GitHub indicators.}
#'   \item{indicator_ID_Github}{Character. Unique ID of the indicator from GitHub.}
#'   \item{recode_name}{Character. Initial recoding name for the indicator.}
#'   \item{updated_recode_name}{Character. Revised recoding name after updates.}
#'   \item{indicator_ID_Github_raw}{Character. Raw version of the GitHub indicator ID.}
#'   \item{indicator_def_github}{Character. Processed indicator definition from GitHub.}
#'   \item{indicator_def_github_raw}{Character. Unprocessed raw definition from GitHub.}
#'   \item{indicator_chapter}{Character. The chapter or category of the indicator.}
#'   \item{indicator_R_bundle}{Character. Associated R bundle or package for processing.}
#'   \item{start_position}{Integer. Start position of the matched pattern in text.}
#'   \item{end_position}{Integer. End position of the matched pattern in text.}
#'   \item{matched_pattern}{Character. The exact text pattern matched between sources.}
#'   \item{batch_recode_group}{Character. Grouping variable for batch recoding.}
#'   \item{indicator}{Character. Final matched indicator name.}
#'   \item{X}{Unknown. This variable needs clarification or may be redundant.}
#'   \item{ID_first_two_letters}{Character. First two letters of the indicator ID, possibly used for grouping or sorting.}
#' }
#'
#' @docType data
#' @keywords datasets
"match_all_result"

###############################################################
### documentation for DHS indicator definition and estimates
###############################################################

#' DHS Indicator Dictionary
#'
#' A dataset for DHS health indicators, including their DHS official definitions, measurement types, and denominators.
#'
#' @format A data frame with 4,433 rows and 5 columns:
#' \describe{
#'   \item{DHS Standard Indicator ID}{Unique identifier for each DHS indicator.}
#'   \item{Label}{Short name or label for the indicator.}
#'   \item{Full Definition}{Detailed description of the indicator.}
#'   \item{Denominator}{Explanation of the denominator used in indicator calculation.}
#'   \item{Measurement Type}{Type of measurement (e.g., percentage, count, rate).}
#' }
#' @docType data
#' @keywords datasets
"DHS_ind_dictionary"


#' DHS API Estimates
#'
#' A dataset containing estimated health indicators from the DHS API, including country-level estimates and subgroup breakdowns.
#'
#' @format A data frame with 28,110 rows and 7 columns:
#' \describe{
#'   \item{Country}{Name of the country where the survey was conducted.}
#'   \item{Country Code}{Three-letter ISO country code.}
#'   \item{Survey Year}{Year in which the DHS survey was conducted.}
#'   \item{DHS Standard ID}{Unique identifier for the DHS survey.}
#'   \item{Definition}{Definition of the health indicator being estimated.}
#'   \item{Estimate}{Estimated value of the indicator.}
#'   \item{By Variable Label}{Label describing any subgrouping (e.g., urban/rural, age group).}
#' }
#' @docType data
#' @keywords datasets
"DHS_api_est"




###############################################################
### documentation for WHO shapefile
###############################################################


#' WHO Administrative Level 2 Linkage
#'
#' A dataset linking administrative level 2 regions to their corresponding WHO region and country codes.
#'
#' @format A data frame with 1,095 rows and 8 columns:
#' \describe{
#'   \item{WHO_REGION}{WHO-designated region for the country.}
#'   \item{ISO.3.DIGIT.COUNTRY.CODE}{Three-letter ISO country code.}
#'   \item{ADM0_VIZ_NAME}{Administrative level 0 (country) name for visualization.}
#'   \item{ADM1_VIZ_NAME}{Administrative level 1 (first subnational division) name.}
#'   \item{ADM2_VIZ_NAME}{Administrative level 2 (second subnational division) name.}
#'   \item{GUID.LEVEL.0}{Global unique identifier for level 0 (country).}
#'   \item{GUID.LEVEL.1..}{Global unique identifier for level 1 (first subnational division).}
#'   \item{GLOBAL.UNIQUE.IDENTIFIER..}{Global unique identifier for level 2 (second subnational division).}
#' }
#' @docType data
#' @keywords datasets
"adm2.link.all"


#' WHO National-Level Shapefile
#'
#' A spatial dataset containing national-level WHO boundaries for eight countries, with administrative codes and metadata.
#'
#' @format A spatial data frame with 8 rows and 35 columns:
#' \describe{
#'   \item{WHO_REGION}{WHO-designated region for the country.}
#'   \item{ISO_3_CODE}{Three-letter ISO country code.}
#'   \item{ADM0_NAME}{Administrative level 0 (country) name.}
#'   \item{ADM0_CODE}{Administrative level 0 country code.}
#'   ...
#' }
#' @docType data
#' @keywords datasets
"natl.WHO.shp"
