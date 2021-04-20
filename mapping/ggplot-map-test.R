# ggplot map test

library(ggplot2) # beautiful graphs

library(sf) # simple (spatial) features

# getting the directory and filename right is important

shp <- read_sf("./STATES cb_2016_us_state_500k/cb_2016_us_state_500k.shp")

# plot(shp)
    
# shp %>% ggplot(aes(fill = NAME)) + geom_sf()

pdf("mymap.pdf") # open PDF device

# plot(shp)

ggplot(shp) +
  geom_sf(aes(fill = NAME)) +
  coord_sf(xlim = c(-180, 0), 
           ylim = c(0, 90)) +
  theme_bw() +
  scale_fill_viridis_d() +
  theme(legend.position = "none")

dev.off()



