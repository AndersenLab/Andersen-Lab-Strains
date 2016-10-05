library(tidyverse)
library(knitr)
library(scales)
library(gdata)
library(waffle)
library(DT)
library(ggmap)
library(pryr)
library(grid)
library(scales)
library(leaflet)

# Used in calculating isotypes
stack_list <- function(x) {
  if (is.null(names(x)) == T) {
    names(x) <- as.character(1:length(x))
  }
  stack(x)
}



pub_theme <- ggplot2::theme_bw() +
  ggplot2::theme(axis.text.x = ggplot2::element_text(size=14, face="bold", color="black"),
                 axis.text.y = ggplot2::element_text(size=14, face="bold", color="black"),
                 axis.title.x = ggplot2::element_text(size=14, face="bold", color="black", vjust=-.3),
                 axis.title.y = ggplot2::element_text(size=14, face="bold", color="black", vjust=2),
                 strip.text.x = ggplot2::element_text(size=16, face="bold", color="black"),
                 strip.text.y = ggplot2::element_text(size=16, face="bold", color="black"),
                 axis.ticks= element_line( color = "black", size = 0.25), 
                 legend.position="none",
                 plot.margin = unit(c(1.0,0.5,0.5,1.0),"cm"),
                 plot.title = ggplot2::element_text(size=24, face="bold", vjust = 1),
                 legend.position="none",
                 panel.background = ggplot2::element_rect(color = "black",size=0.75),
                 strip.background = ggplot2::element_rect(color = "black", size = 0.75)) 


load_eav <- function(file) {
  readr::read_tsv(file, c("ENTITY", "SUB", "VALUE", "DATE")) %>%
    eav_attr("ATTR") %>%
    dplyr::select(ENTITY, ATTR, SUB, VALUE, DATE)
}

eav_attr <- function(.data, ..., spread = FALSE) {
  columns <- pryr::named_dots(...)
  for(col in columns) {
    .data <- .data %>% tidyr::extract_("SUB", into = c(col), regex = paste0(col, "=","([^;]+)"), remove = FALSE, convert = TRUE)
  }
  if (spread == TRUE) {
    .data <- .data %>% dplyr::select(-DATE, -SUB) %>%
      tidyr::spread(ATTR, VALUE)
  }
  .data
}



width <- 50
height <- 50

icons <- iconList(
  red = makeIcon(
    iconUrl = "red.png",
    iconWidth = width, iconHeight = height,
    popupAnchorX = 0.00001, popupAnchorY = -height+13,
    iconAnchorX = width/2, iconAnchorY = height), 
  grey = makeIcon(
    iconUrl = "grey.png",
    iconWidth  = width, iconHeight = height, 
    popupAnchorX = 0.00001, popupAnchorY = -height+13,
    iconAnchorX = width/2, iconAnchorY  = height
  ))

