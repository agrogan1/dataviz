# rayshader demo

library(ggplot2)

library(ggthemes)

library(rgl)

library(rayshader)

x <- rnorm(100, 0, 10)

y <- rnorm(100, 0, 10)

mydata <- data.frame(x,y)

p1 <- ggplot(data = mydata,
             aes(x = x,
                 y = y,
                 color = x * y)) +
  geom_point() +
  labs(title = "A Scatterplot") +
  scale_color_viridis_c()

p1

rayshader::plot_gg(p1, 
                   zoom = .8) 

render_snapshot(clear = TRUE)


# rglwidget()
