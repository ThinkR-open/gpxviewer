
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `{gpxviewer}`

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of `{gpxviewer}` like so:

``` r
pak::pak("thinkr-open/gpxviewer")
```

## Run

You can launch the application by running:

``` r
gpxviewer::run_app()
```

## About

You are reading the doc about version : 0.0.0.9000

This README has been compiled on the

``` r
Sys.time()
#> [1] "2025-10-08 09:46:34 CEST"
```

Here are the tests results and package coverage:

``` r
pw::pw_test()
```

``` r
devtools::check(quiet = TRUE)
#> ℹ Loading gpxviewer
#> ── R CMD check results ─────────────────────────────── gpxviewer 0.0.0.9000 ────
#> Duration: 26.2s
#> 
#> ❯ checking dependencies in R code ... NOTE
#>   Namespace in Imports field not imported from: ‘pkgload’
#>     All declared Imports should be used.
#> 
#> 0 errors ✔ | 0 warnings ✔ | 1 note ✖
```

``` r
covr::package_coverage()
#> gpxviewer Coverage: 48.33%
#> R/app_server.R: 0.00%
#> R/app_ui.R: 0.00%
#> R/run_app.R: 0.00%
#> R/app_config.R: 14.29%
#> R/mod_visualize.R: 37.04%
#> R/mod_upload.R: 57.02%
#> R/fct_read_and_summarize_gpx.R: 100.00%
#> R/fct_visualize_gpx.R: 100.00%
```
