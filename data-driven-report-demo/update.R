# update data driven report

library(rmarkdown) # for most rendering

library(bookdown) # for epub

library(revealjs) # reveal.js

# render home page

render("data-driven-report-demo.Rmd",
       output_format = "all")

# 
# bookdown::render_book("data-driven-report-demo.Rmd", 
#                       "bookdown::gitbook",
#                       # output_dir = "book"
#                       )
# 

# render("data-driven-report-demo.Rmd",
#        output_format = revealjs_presentation(),
#        output_file = "data-driven-report-demo-revealjs.html")

render("data-driven-report-demo.Rmd",
       output_format = slidy_presentation(),
       output_file = "data-driven-report-demo-slidy.html")
