# attempting to write a script to automate how to choose a chart
# how to choose a chart a visual guide

library(patchwork) # stitch plots together


mysubtitle = paste("Continuous",
                   "          ",
                   "Continuous by Categorical",
                   "          ",
                   "Categorical",
                   "          ",
                   "Categorical by Categorical",
                   "          ",
                   "Continuous by Continuous")

my_histogram + my_facet_histogram + 
  my_barchart + my_facet_barchart + 
  my_scatterplot + 
  plot_layout(ncol = 5) +
  plot_annotation(title = 'How To Choose A Chart: A Visual Guide',
    subtitle = mysubtitle,
    caption = "Andy Grogan-Kaylor, agrogan@umich.edu, https://agrogan1.github.io/")

ggsave("./how-to-choose-a-chart/HtCaC-visual.pdf",
       height = 8.5,
       width = 11,
       units = "in")







