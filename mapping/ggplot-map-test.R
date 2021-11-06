# ggplot map test

library(ggplot2) # beautiful graphs

library(sf) # simple (spatial) features

library(here) # where am I?

setwd(here()) # set working directory so pathnames below work correctly

# getting the directory and filename right is important

buildings <- read_sf("./mapping/shapefiles/AA_Building_Footprints/AA_Building_Footprints.shp")

trees <- read_sf("./mapping/shapefiles/a2trees/AA_Trees.shp")

# plot(buildings)
    
# shp %>% ggplot(aes(fill = NAME)) + geom_sf()

# pdf("./mapping/mymap.pdf") # open PDF device

ggplot(buildings) +
  geom_sf(aes(color = Struc_Type, # color helps to see shapes on map
              fill = Struc_Type)) + # fill helps to see legend
  # geom_sf(data = trees, 
  #         size = .1,
  #         color = "darkgreen") +
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

# dev.off() # turn off PDF device



