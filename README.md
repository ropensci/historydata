

<!-- README.md is rendered from README.qmd. Edit README.qmd and render to update README.md -->

# {historydata}

<!-- badges: start -->

[![R-CMD-check](https://github.com/ropensci/historydata/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ropensci/historydata/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/historydata)](https://CRAN.R-project.org/package=historydata)
<!-- badges: end -->

## Overview

These sample data sets are intended for historians learning R. They
include population, institutional, religious, military, and
prosopographical data suitable for mapping, quantitative analysis, and
network analysis.

## Installation

To install the package from CRAN:

``` r
install.packages("historydata")
```

You can install the development version with {devtools}:

``` r
# install.packages("devtools")
devtools::install_github("ropensci/historydata")
```

## Use

To list all the datasets in the package with their documentation:

``` r
library(historydata)
help(package = historydata)
```

To load a dataset directly into your environment:

``` r
data(catholic_dioceses)
head(catholic_dioceses)
#>                      diocese  rite      lat      long   event       date
#> 1        Baltimore, Maryland Latin 39.29038 -76.61219 erected 1789-04-06
#> 2     New Orleans, Louisiana Latin 29.95107 -90.07153 erected 1793-04-25
#> 3      Boston, Massachusetts Latin 42.35843 -71.05977 erected 1808-04-08
#> 4       Louisville, Kentucky Latin 38.25266 -85.75846 erected 1808-04-08
#> 5         New York, New York Latin 40.71435 -74.00597 erected 1808-04-08
#> 6 Philadelphia, Pennsylvania Latin 39.95233 -75.16379 erected 1808-04-08
```

## License

This project is released under the MIT License:
<http://lmullen.mit-license.org/>
