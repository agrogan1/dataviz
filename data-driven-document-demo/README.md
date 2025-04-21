# Data Driven Document Demo

## Quarto

Quarto is an almost *magical* system that allows you to create documents in multiple formats. These documents may be driven by data, or contain no data whatsoever. With the click of a button, the same content--written in a simple format called [*markdown*](markdown.md)--can be written out (*rendered*) to multiple formats: HTML web pages; PDF documents; Microsoft Word documents, epub ebooks, HTML slide shows, and more.  

These different document formats will be *rendered* using the most up to date data from the data source, meaning that documents can in some sense be *self-updating*. Additionally, if documents contain code, they provide an *audit trail* that allows for *replicability* and *error detection*.

Quarto allows rapid updating of timely content into multiple output formats. 

An example data driven document can be found below.

## Output Examples

### Major Formats

* [HTML file](data-driven-document-demo.html)
* [PDF](data-driven-document-demo.pdf)
* [Word](data-driven-document-demo.docx)
* [epub](data-driven-document-demo.epub)

> Note: HTML and Word are generally the easiest formats to generate. PDF requires your system to have the latest version of  [Quarto](https://quarto.org/) to make use of the `typst` typesetting system, which is only available with more recent versions of Quarto.[^LaTeX]  

[^LaTeX]: PDF's can also be generated using the older, still standard, but somewhat cumbersome $\LaTeX$ system.

### Slide Show Format

> Slide show formats can be beautiful and effective for presentations. However, slide show formats may not work equally well with all screen resolutions and sizes. Slide shows may have varying performance on mobile devices.

* [reveal.js Slide Show](data-driven-document-demo-revealjs.html) (Note that `reveal.js` is a *2 dimensional* slide show format. As you scroll through the presentation, using &#8592; and &#8594; will sometimes scroll *left* and *right*, but will scroll *down* when you come to a stack of *vertical* slides. Press `o` for an overview of the presentation.)

## Quarto Source Code

* [Quarto file](https://github.com/agrogan1/dataviz/blob/master/data-driven-document-demo/data-driven-document-demo.qmd)




