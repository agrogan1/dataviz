# re-render

library(rmarkdown)

render("index.Rmd", 
       output_format = slidy_presentation(css = "slidy.css",
                                          highlight = "haddock",
                                          fig_height = 3))

render("index.Rmd", 
       output_format = html_document(toc = TRUE,
                                     number_sections = TRUE,
                                     highlight = "haddock",
                                     fig_height = 3),
       output_file = "plotly-handouts.html")