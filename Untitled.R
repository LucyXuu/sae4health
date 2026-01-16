library(devtools)
# # Using the github version of both!
install_github("richardli/surveyPrev")
install_github("richardli/SUMMER")
library(surveyPrev)
library(SUMMER)

## =========================================================================
## Spatial information 
## =========================================================================

# Polygon shapefiles: GADM Admin-2 shapefiles are slightly wrong, but just as illustration for now
poly.adm1 <- geodata::gadm(country="KEN", level=1, path=tempdir())
poly.adm1 <- sf::st_as_sf(poly.adm1)
poly.adm2 <- geodata::gadm(country="KEN", level=2, path=tempdir())
poly.adm2 <- sf::st_as_sf(poly.adm2)
poly.adm2$admin2.name.full <- paste(poly.adm2$NAME_1, poly.adm2$NAME_2, sep = "_")

geo <- getDHSgeo(country = "Kenya", year = 2022)
cluster.info <- clusterInfo(geo=geo,
                            poly.adm1=poly.adm1,
                            poly.adm2=poly.adm2)

admin.info1 <- adminInfo(poly.adm = poly.adm1,
                         admin = 1,
                         by.adm = "NAME_1")
admin.info2 <- adminInfo(poly.adm = poly.adm2,
                         admin = 2,
                         by.adm = "NAME_2",
                         by.adm.upper = "NAME_1")

## =========================================================================
## New Indicator U5MR: last 10 years (using nmr.year as arugment for now)
## =========================================================================
year_cutoff <- 10
dhsData <- getDHSdata(country = "Kenya", indicator = "u5mr", year = 2022)
data_new <- getDHSindicator(Rdata = dhsData, indicator = "u5mr", nmr.year = year_cutoff)

cluster_ad1 <- clusterModel(data=data_new,
                            cluster.info=cluster.info,
                            admin.info = admin.info1,
                            stratification = FALSE,
                            model = "bym2",
                            admin = 1, 
                            aggregation = FALSE,
                            CI = 0.95)