[![Build Status](https://travis-ci.org/ropensci/historydata.svg)](https://travis-ci.org/ropensci/historydata)

## historydata: Data Sets for Historians

These sample data sets are intended for historians learning R. They
include population, institutional, religious, military, and
prosopographical data suitable for mapping, quantitative analysis, and
network analysis.

### Installation

To install the package from CRAN:

    install.packages("historydata")

To install the development version, you will first have to install
[devtools][] and then install this package from GitHub.

To install:

    devtools::install_github("ropensci/historydata")

### Use

To list all the datasets in the package with their documentation:

    library(historydata)
    help(package = historydata)

To load a dataset:

    data(catholic_dioceses)

### Contributing

If you have a dataset that you think would be good for this package,
feel free to contribute it. You can send the dataset via e-mail if you
can provide a citation and guarantee that the data is available under an
open license.

But it is much preferred that you contribute the dataset via a pull
request. To add a dataset:

1.  Add the raw data and an R script to load and save it as an R data
    object to `data-raw/`. The `.rda` file should be saved to `data/`.
    See `data-raw/sarna.R` as a model. Please try keeping the data
    [tidy][].
2.  Add the documentation using the [Roxygen][] format to a file in the
    `R/`. Use `R/sarna.R` as a model. Be sure to include a citation.

### License

This project is released under the MIT License:
<http://lmullen.mit-license.org/>

  [devtools]: https://github.com/hadley/devtools
  [tidy]: http://www.jstatsoft.org/v59/i10
  [Roxygen]: http://roxygen.org/
