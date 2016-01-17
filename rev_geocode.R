# This script is intended to be used to look up geographic information.
library(ggmap)
library(readr)
locs <- readr::read_tsv("processed/strain_isotype.tsv", na = c("NA","", NA))
lat_lons <- locs %>% dplyr::select(latitude, longitude) %>% dplyr::filter(!is.na(latitude))

lat_lon_locations <- dplyr::bind_rows(lapply(1:nrow(lat_lons), function(row) { 
  Sys.sleep(1)
  print(row)
  latitude <-  lat_lons[row,1]$latitude
  longitude <- lat_lons[row,2]$longitude
  revgeocode(c(longitude, latitude), output = "more") %>%
    mutate(latitude = latitude, longitude = longitude)
}))


readr::write_tsv(lat_lon_locations, "raw/lat_lon_locations.csv")
