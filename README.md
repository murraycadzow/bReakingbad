# bReakingbad

<!-- badges: start -->
  [![Travis build status](https://travis-ci.org/murraycadzow/bReakingbad.svg?branch=master)](https://travis-ci.org/murraycadzow/bReakingbad)
  [![Coverage Status](https://coveralls.io/repos/github/murraycadzow/bReakingbad/badge.svg?branch=master)](https://coveralls.io/github/murraycadzow/bReakingbad?branch=master)
  <!-- badges: end -->

The goal of bReakingbad is to nicely format p-values based on a threshold to sciencific notation in a markdown table.

## Installation

You can install the released version of bReakingbad from [github](https://github.com/murraycadzow/bReakingbad/) with:

``` r
devtools::install_github("murraycadzow/bReakingbad")
```

## Example

An example of conditional formatting for P values in a table:

```
library(bReakingbad)

pvalues <-  data.frame(x = seq(0.001, 0.0001, length.out = 15) , 
                       y = seq(0.1, 0.0001, length.out = 15))
                       
pvalues %>% 
  mutate(x_form = purrr::map_chr(x, ~ format_p_ke(.x)), 
         y_form = purrr::map_chr(y, ~ifelse(.x < 0.05, 
                                        format_p_ke(.x, bold = TRUE, format = 'html'), 
                                        format_p_ke(.x, bold = FALSE, format = 'html')) )
                                        ) %>%
        select(contains('x'), contains('y')) %>% 
        knitr::kable(.)
```

