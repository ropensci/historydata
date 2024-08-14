# Contributing

If you have a dataset that you think would be good for this package,
feel free to contribute it. Datasets should include a source citation
and be available under an open license.

It is much preferred that you contribute the dataset via a pull request. 
To add a dataset:

1.  Add the raw data to `data-raw` and an R script to load and save it as an R data
    object to `data-raw/scripts`. The `.rda` file should be saved to `data/`.
    See `data-raw/scripts/sarna.R` as a model.
1.  Add the documentation using `devtools::document()`. Be sure to include a citation.
1.  Run `R-CMD-check` using `devtools::check()`.
