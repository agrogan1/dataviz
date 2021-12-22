# plotly map test

library(plotly)

g <- list(# projection = list(type = 'robinson'),
  projection = list(type = 'orthographic',
                    rotation = list(lon = 0,
                                    lat = 0,
                                    roll = 0)))

plot_ly(type = "scattermapbox") %>%
  layout(mapbox= list(
    style = "white-bg",
    sourcetype = 'raster',
    zoom = .5,
    center = list(lon = 0,
                  lat= 0),
    layers = list(list(
      below = 'traces',
      sourcetype = "raster",
      source = list("https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryOnly/MapServer/tile/{z}/{y}/{x}")))))