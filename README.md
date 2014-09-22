## historydata: datasets for historians

This R package contains datasets of interest to historians. It is
primarily intended for pedagogic purposes in teaching historians how to
use R.

Lincoln Mullen | <http://lincolnmullen.com> |
<lincoln@lincolnmullen.com>

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

  [tidy]: http://www.jstatsoft.org/v59/i10
  [Roxygen]: http://roxygen.org/
