# update data driven report

library(rmarkdown) # for most rendering

library(bookdown) # for epub

library(revealjs) # reveal.js

library(tint) # tint is not tufte

library(tufte) # tufte handouts

library(distill) # distill

setwd("./data-driven-report-demo")

# library(pagedreport) # paged reports

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
       output_format = distill_article(toc = TRUE),
       output_file = "data-driven-report-demo-distill.html")

render("data-driven-report-demo.Rmd",
       output_format = slidy_presentation(css = "UMslidy.css"),
       output_file = "data-driven-report-demo-slidy.html")

# render("data-driven-report-demo.Rmd",
#        output_format = ioslides_presentation(slide_level = 2,
#                                              widescreen = TRUE,
#                                              smaller = TRUE,
#                                              fig_height = 3),
#        output_file = "data-driven-report-demo-ioslides.html")

render("data-driven-report-demo.Rmd",
       output_format = tufte_handout(),
       output_file = "data-driven-report-demo-tufte.pdf")

render("data-driven-report-demo.Rmd",
       output_format = tintPdf(),
       output_file = "data-driven-report-demo-tint.pdf")

render_book("data-driven-report-demo.Rmd",
            output_format = gitbook(),
            output_dir = "./book")





