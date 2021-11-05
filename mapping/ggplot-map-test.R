# ggplot map test

library(ggplot2) # beautiful graphs

library(sf) # simple (spatial) features

# getting the directory and filename right is important

buildings <- read_sf("./mapping/shapefiles/AA_Building_Footprints/AA_Building_Footprints.shp")

# plot(buildings)
    
# shp %>% ggplot(aes(fill = NAME)) + geom_sf()

pdf("./mapping/mymap.pdf") # open PDF device

ggplot(buildings) +
  geom_sf(aes(color = Struc_Type,
              fill = Struc_Type)) +
  scale_color_viridis_d(option = "turbo") +
  scale_fill_viridis_d(option = "turbo") # nice colors

dev.off() # turn off PDF device



