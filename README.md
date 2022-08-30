
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/cpenaloza/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/cpenaloza/ussie/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/cpenaloza/ussie/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/cpenaloza/ussie/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

The goal of ussie is to explore the European League Football data back
from 1880 something.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("cpenaloza/ussie")
#> Downloading GitHub repo cpenaloza/ussie@HEAD
#> viridisLite (0.4.0 -> 0.4.1) [CRAN]
#> pillar      (1.8.0 -> 1.8.1) [CRAN]
#> scales      (1.2.0 -> 1.2.1) [CRAN]
#> Installing 3 packages: viridisLite, pillar, scales
#> Installing packages into 'C:/cp/R/Library'
#> (as 'lib' is unspecified)
#> package 'viridisLite' successfully unpacked and MD5 sums checked
#> package 'pillar' successfully unpacked and MD5 sums checked
#> package 'scales' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\uia96863\AppData\Local\Temp\RtmpoXUAPn\downloaded_packages
#> * checking for file 'C:\Users\uia96863\AppData\Local\Temp\RtmpoXUAPn\remotes2ec424f123ae\cpenaloza-ussie-c5fbcbb/DESCRIPTION' ... OK
#> * preparing 'ussie':
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building 'ussie_0.0.0.9000.tar.gz'
#> 
#> Installing package into 'C:/cp/R/Library'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)
germany <- uss_make_matches(engsoccerdata::germany, "Germany")
germany2 <- uss_make_matches(engsoccerdata::germany2, "Germany2")
```

  
  

### What does our data look like?

``` r
dplyr::glimpse(germany)
#> Rows: 16,120
#> Columns: 8
#> $ country       <chr> "Germany", "Germany", "Germany", "Germany", "Germany", "…
#> $ tier          <fct> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
#> $ season        <int> 1963, 1963, 1963, 1963, 1963, 1963, 1963, 1963, 1963, 19…
#> $ date          <date> 1963-08-24, 1963-08-24, 1963-08-24, 1963-08-24, 1963-08…
#> $ home          <chr> "Werder Bremen", "1. FC Saarbrucken", "TSV 1860 Munchen"…
#> $ visitor       <chr> "Borussia Dortmund", "1. FC Koln", "Eintracht Braunschwe…
#> $ goals_home    <int> 3, 0, 1, 1, 2, 1, 1, 1, 3, 4, 3, 4, 2, 2, 3, 1, 1, 0, 2,…
#> $ goals_visitor <int> 2, 2, 1, 1, 0, 1, 4, 1, 3, 2, 0, 0, 3, 0, 1, 0, 3, 4, 3,…
```

  
  

### Let’s plot that!

<img src="man/figures/README-germany-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
