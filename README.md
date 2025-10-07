
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `{gpxviewer}`

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of `{gpxviewer}` like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
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
#> [1] "2025-10-07 21:37:55 CEST"
```

Here are the tests results and package coverage:

``` r
devtools::check(quiet = TRUE)
#> ℹ Loading gpxviewer
#> ── R CMD check results ─────────────────────────────── gpxviewer 0.0.0.9000 ────
#> Duration: 1m 1.1s
#> 
#> ❯ checking tests ...
#>   See below...
#> 
#> ❯ checking for hidden files and directories ... NOTE
#>   Found the following hidden files and directories:
#>     tests/playwright/node_modules/.package-lock.json
#>     tests/playwright/test-results/.last-run.json
#>     tests/playwright/node_modules/.bin
#>   These were most likely included in error. See section ‘Package
#>   structure’ in the ‘Writing R Extensions’ manual.
#> 
#> ❯ checking for portable file names ... NOTE
#>   Found the following non-portable file paths:
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/bidi/third_party/bidiCommands.d.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/bidi/third_party/bidiDeserializer.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/bidi/third_party/bidiProtocolCore.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/bidi/third_party/bidiProtocolPermissions.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/bidi/third_party/bidiSerializer.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/browserContextDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/browserTypeDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/cdpSessionDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/debugControllerDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/elementHandlerDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/localUtilsDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/playwrightDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/webSocketRouteDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/dispatchers/writableStreamDispatcher.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/recorder/recorderSignalProcessor.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/registry/oopDownloadBrowserMain.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/socksClientCertificatesInterceptor.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/trace/recorder/snapshotterInjected.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/webkit/wsl/webkit-wsl-transport-client.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/server/webkit/wsl/webkit-wsl-transport-server.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/utils/isomorphic/utilityScriptSerializers.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/recorder/assets/codeMirrorModule-C3UTv-Ge.css
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/recorder/assets/codeMirrorModule-RJCXzfmE.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/recorder/assets/codicon-DCmgc-ay.ttf
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/traceViewer/assets/codeMirrorModule-eyVcHN77.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/traceViewer/assets/defaultSettingsView-w0zYjHsW.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/traceViewer/assets/xtermModule-CsJ4vdCR.js
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/traceViewer/codeMirrorModule.C3UTv-Ge.css
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/traceViewer/defaultSettingsView.TQ8_7ybu.css
#>     gpxviewer/tests/playwright/node_modules/playwright-core/lib/vite/traceViewer/xtermModule.DYP7pi_n.css
#>   
#>   Tarballs are only required to store paths of up to 100 bytes and cannot
#>   store those of more than 256 bytes, with restrictions including to 100
#>   bytes for the final component.
#>   See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
#> 
#> ❯ checking top-level files ... NOTE
#>   Non-standard files/directories found at top level:
#>     ‘app.R’ ‘dev’
#> 
#> ❯ checking dependencies in R code ... NOTE
#>   Namespace in Imports field not imported from: ‘pkgload’
#>     All declared Imports should be used.
#> 
#> ❯ checking R code for possible problems ... NOTE
#>   read_and_summarize_gpx: no visible binding for global variable
#>     ‘geometry’
#>   read_and_summarize_gpx: no visible global function definition for
#>     ‘tail’
#>   read_and_summarize_gpx: no visible global function definition for
#>     ‘head’
#>   visualize_gpx: no visible binding for global variable ‘cumdist’
#>   visualize_gpx: no visible binding for global variable ‘ele’
#>   Undefined global functions or variables:
#>     cumdist ele geometry head tail
#>   Consider adding
#>     importFrom("utils", "head", "tail")
#>   to your NAMESPACE file.
#> 
#> ── Test failures ───────────────────────────────────────────────── testthat ────
#> 
#> > # This file is part of the standard setup for testthat.
#> > # It is recommended that you do not modify it.
#> > #
#> > # Where should you do additional test configuration?
#> > # Learn more about the roles of various files in:
#> > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
#> > # * https://testthat.r-lib.org/articles/special-files.html
#> > 
#> > library(testthat)
#> > library(gpxviewer)
#> > 
#> > test_check("gpxviewer")
#> Loading required package: shiny
#> [ FAIL 1 | WARN 0 | SKIP 0 | PASS 8 ]
#> 
#> ══ Failed tests ════════════════════════════════════════════════════════════════
#> ── Error ('test-playwright.R:3:3'): playwright tests are working ───────────────
#> <packageNotFoundError/error/condition>
#> Error in `loadNamespace(x)`: there is no package called 'pw'
#> Backtrace:
#>     ▆
#>  1. ├─testthat::skip_if_not(pw::npx_is_available()) at test-playwright.R:3:3
#>  2. │ └─base::isTRUE(condition)
#>  3. └─base::loadNamespace(x)
#>  4.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
#>  5.     └─base (local) withOneRestart(expr, restarts[[1L]])
#>  6.       └─base (local) doWithOneRestart(return(expr), restart)
#> 
#> [ FAIL 1 | WARN 0 | SKIP 0 | PASS 8 ]
#> Error: Test failures
#> Execution halted
#> 
#> 1 error ✖ | 0 warnings ✔ | 5 notes ✖
#> Error: R CMD check found ERRORs
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
