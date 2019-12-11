# update data driven report

library(rmarkdown) # for most rendering

library(bookdown) # for epub

# render home page

render("data-driven-report-demo.Rmd",
       output_format = "all")
