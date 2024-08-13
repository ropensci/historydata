## Contributing

If you have a dataset that you think would be good for this package,
feel free to contribute it. Datasets should include a source citation
and be available under an open license.

It is much preferred that you contribute the dataset via a pull request. 
To add a dataset:

1.  Add the raw data and an R script to load and save it as an R data
    object to `data-raw/`. The `.rda` file should be saved to `data/`.
    See `data-raw/sarna.R` as a model.
2.  Add the documentation using [{roxygen2}](https://roxygen2.r-lib.org/)
    to a file in `R/`. Use `R/sarna.R` as a model. Be sure to include a citation.
