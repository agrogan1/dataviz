# Create Simulated Spatially Patterned Data

library(english)

library(ggplot2)

N <- 100 # sample size

# ordinal(1:25)

# LETTERS

id <- seq(1, N)

streetnumber <- sample(1:1000, N, replace = TRUE) # streetnumber

streetname <- sample(c(ordinal(1:25), LETTERS), # what to sample
                     N, # how many times
                     replace = TRUE) # sample w replacement

street_or_avenue <- rbinom(N, 1, .5)

street_or_avenue <- factor(street_or_avenue,
                           levels = c(0, 1),
                           labels = c("Street", "Avenue"))

streetaddress <- paste(streetnumber, streetname, street_or_avenue)

city <- rep("Ann Arbor", N)

state <- rep("Michigan", N)

latitude <- rnorm(N, 42.25, .1)

longitude <- rnorm(N, -83.75, .1)

mental_health <- 90 + 
  45 * (abs(latitude - 42.25) + abs(longitude + 83.75))

spatialdata <- data.frame(id, 
                          streetnumber, 
                          streetname,
                          street_or_avenue,
                          streetaddress,
                          city, 
                          state, 
                          latitude, 
                          longitude,
                          mental_health)

ggplot(spatialdata,
       aes(x = longitude,
           y = latitude,
           color = mental_health)) + 
  geom_point() +
  scale_color_viridis_c()

write.csv(spatialdata, "./SW672/spatialdata/spatialdata.csv")





