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
  scale_color_brewer(palette = "Set1",
                     direction = -1) +
  scale_fill_brewer(palette = "Set1",
                    direction = -1) + # nice colors
  theme_minimal()

dev.off() # turn off PDF device



