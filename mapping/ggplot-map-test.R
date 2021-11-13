#' ---
#' title: "ggplot map test"
#' output: pdf_document
#' ---

# Demo of making maps with R

# Call the libraries

library(ggplot2) # beautiful graphs

library(sf) # simple (spatial) features

library(readr) # import csv

library(here) # where am I?

# Set working directory

setwd(here()) # set working directory so pathnames below work correctly

# here() only works with R projects
# if you are not using an R project you can just use setwd("...")

# use read_sf to open shapefiles
# getting the directory and filename right is important

buildings <- read_sf("./mapping/shapefiles/AA_Building_Footprints/AA_Building_Footprints.shp")

trees <- read_sf("./mapping/shapefiles/a2trees/AA_Trees.shp")

parks <- read_sf("./mapping/shapefiles/AA_Parks/AA_Parks.shp")

# watersheds <- read_sf("./mapping/shapefiles/watersheds/Watersheds.shp")

# use read_csv to read text file with client data

clients <- read_csv("./mapping/location-data/clients.csv")

# use ggplot to make the map

# NB RE Macs: the plotting device on Macs is actually pretty slow
# we notice this with all the detail that is involved in maps
# maps can be REALLY slow on Macs
# so--inconveniently--we write directly to PDF on a Mac
# and don't see the graph in our RStudio window
# we have to manually open the PDF to see the created map

# Note, haven't figured out how to add clients w/o goofing up the map

# Apparently, the first layer is important for setting the CRS of the map

# pdf("./mapping/mymap.pdf") # open PDF device (uncomment on Mac)

ggplot(buildings) +
  geom_sf(aes(color = Struc_Type, # color helps to see shapes on map
               fill = Struc_Type)) + # fill helps to see legend
  # geom_point(data = clients,
  #            aes(x = longitude,
  #                y = latitude),
  #            color = "red") +
  # geom_sf(data = trees, 
  #         size = .1,
  #         color = "darkgreen") +
  geom_sf(data = parks, fill = "darkgreen") +
  scale_color_manual(name = "Structure Type", 
                     values = c("red",
                                "orange",
                                "blue",
                                "grey")) +
  scale_fill_manual(name = "Structure Type", 
                    values = c("red",
                                "orange",
                                "blue",
                                "grey")) +
  labs(title = "Ann Arbor") +
  theme_minimal() +
  theme(axis.text = element_text(size = rel(.5))) 


# dev.off() # turn off PDF device (uncomment on Mac)



