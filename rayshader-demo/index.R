# rayshader demo

# libraries

library(gapminder) # Gapminder data

library(ggplot2) # beautiful graphs

library(rayshader) # WOW

# data

data(gapminder) 

# ggplot

p0 <- ggplot(gapminder, 
             aes(gdpPercap, 
                 lifeExp)) +
  stat_density_2d(aes(fill = stat(nlevel)), 
                  geom = "polygon",
                  n = 100, 
                  bins = 10, 
                  contour = TRUE) +
  labs(title = "Life Expectancy by GDP",
       x = "GDP",
       y = "Life Expectancy") +
  scale_fill_viridis_c()

p0 # replay

# rayshader!!!

plot_gg(p0, 
        multicore = TRUE, 
        width = 5, 
        height = 5, 
        scale = 250)

