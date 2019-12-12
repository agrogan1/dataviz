# update data driven report

library(rmarkdown) # for most rendering

library(bookdown) # for epub

# render home page

render("data-driven-report-demo.Rmd",
       output_format = "all")

# 
# bookdown::render_book("data-driven-report-demo.Rmd", 
#                       "bookdown::gitbook",
#                       # output_dir = "book"
#                       )
# 

