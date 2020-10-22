# update data driven report

library(rmarkdown) # for most rendering

library(bookdown) # for epub

library(revealjs) # reveal.js

library(tint) # tint is not tufte

library(tufte) # tufte handouts

# render home page

render("data-driven-report-demo.Rmd",
       output_format = "all")

# 
# bookdown::render_book("data-driven-report-demo.Rmd", 
#                       "bookdown::gitbook",
#                       # output_dir = "book"
#                       )
# 

render("data-driven-report-demo.Rmd",
       output_format = revealjs_presentation(css = "revealjs.css",
                                             fig_height = 3),
       output_file = "data-driven-report-demo-revealjs.html")

render("data-driven-report-demo.Rmd",
       output_format = slidy_presentation(),
       output_file = "data-driven-report-demo-slidy.html")

render("data-driven-report-demo.Rmd",
       output_format = tufte_handout(),
       output_file = "data-driven-report-demo-tufte.pdf")

render("data-driven-report-demo.Rmd",
       output_format = tintPdf(),
       output_file = "data-driven-report-demo-tint.pdf")




