library(ggmap)
library(readr)
library(lubridate)


setwd("/Users/danielcook/Documents/git/Andersen-Lab-Strains/")


blank_na <- function(x) {
  ifelse(x == "", NA, x)
}

lg <- readr::read_csv("raw/labguru_export2.csv", na = c("", "-")) %>%
  dplyr::filter(!is.na(strain), Genotype == "wild type", Organism == "Caenorhabditis elegans") %>%
  dplyr::select(strain = Name,
                alternative_name = `Alternative Name`,
                source_lab = `Source lab`,
                latitude = `Gps latitude`,
                longitude = `Gps longitude`,
                location = `Isolation location`,
                substrate = Isolation, 
                isolated_by = `Constructed by`,
                isolation_date = `Isolation date`) %>%
  dplyr::mutate_each(funs(blank_na), everything()) %>%
  dplyr::mutate(latitude = as.numeric(latitude),
                longitude = as.numeric(longitude)) %>%
  dplyr::mutate(isolation_date_comment = ifelse(grepl("^pre", isolation_date), isolation_date, ""),
              isolation_date = parse_date_time(isolation_date, c("mdy", "dmy","my", "%Y-%m.%d","%Y")),
              latitude = as.numeric(latitude),
              longitude = as.numeric(longitude))


#
# Get Latitude/Longitude Locations
#
lat_lons <- lg %>% dplyr::select(latitude, longitude) %>% dplyr::filter(!is.na(latitude))
lat_lon_locations <- dplyr::bind_rows(lapply(1:nrow(lat_lons), function(row) { 
  Sys.sleep(0.1)
  print(row)
  latitude <-  lat_lons[row,1]$latitude
  longitude <- lat_lons[row,2]$longitude
  revgeocode(c(longitude, latitude), output = "more") %>%
    mutate(latitude = latitude, longitude = longitude)
}))

lat_lon_locations <- lat_lon_locations %>%
  dplyr::select(latitude, longitude, address, city = locality, state = administrative_area_level_1, country  )

dplyr::left_join(lg, lat_lon_locations) %>%
  
  



readr::write_tsv(lat_lon_locations, "raw/lat_lon_locations.csv")
