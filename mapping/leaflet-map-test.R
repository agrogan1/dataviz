#' ---
#' title: "leaflet map test"
#' output: html_document
#' author: Andy Grogan-Kaylor
#' ---

#+ fig.height=6

library(leaflet) # web based maps

library(sf) # simple (spatial) features

library(readr) # import csv

library(dplyr) # data wrangling

library(here) # where am I?

setwd(here()) # set the working directory

# get client data

clients <- read_csv("./mapping/location-data/clients.csv")

# only clients in Ann Arbor area

clients <- clients %>% 
  filter(latitude <= 42.35 &
           latitude >= 42.2 &
           longitude >= -83.8 &
           longitude <= -83.65)

# shapefiles

parks <- read_sf("./mapping/shapefiles/AA_Parks/AA_Parks.shp")

university <- read_sf("./mapping/shapefiles/AA_University/AA_University.shp")

city_boundary <- read_sf("./mapping/shapefiles/AA_City_Boundary/AA_City_Boundary.shp")

# transform CRS

# see https://stackoverflow.com/questions/66471147/how-to-plot-sp-object-as-sf-in-r-leaflet

university <- st_transform(university, 4326) # transform CRS

parks <- st_transform(parks, 4326) # transform CRS

city_boundary <- st_transform(city_boundary, 4326) # transform CRS

# map

pal <- colorFactor(c("red", "blue", "orange", "green"), 
                   domain = levels(as.factor(clients$program)))

leaflet(clients) %>%
  setView(lng = mean(clients$longitude), 
          lat = mean(clients$latitude), 
          zoom = 12) %>% 
  # addTiles() %>%
  addProviderTiles(providers$Stamen.TonerLite) %>%
  addCircleMarkers(~longitude, 
             ~latitude, 
             popup = ~paste("Client ID:", as.character(ID)), 
             label = ~paste("Client ID:", as.character(ID)),
             color = ~pal(program),
             clusterOptions = markerClusterOptions()) %>%
  addLegend("bottomright", 
            pal = pal, 
            values = ~program,
            title = "Program") %>%
  # addPolygons(data = parks, color = "green") %>%
  # addPolygons(data = university, color = "blue") %>%
  addPolygons(data = city_boundary, color = "red",
              fillOpacity = 0.0)


