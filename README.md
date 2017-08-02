
<!-- README.md is generated from README.Rmd. Please edit that file -->
rstansim
========

[![Travis Build Status](https://travis-ci.org/Ewan-Keith/rstansim.svg?branch=master)](https://travis-ci.org/Ewan-Keith/rstansim) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/Ewan-Keith/rstansim?branch=master&svg=true)](https://ci.appveyor.com/project/Ewan-Keith/rstansim) [![codecov](https://codecov.io/gh/Ewan-Keith/rstansim/branch/master/graph/badge.svg)](https://codecov.io/gh/Ewan-Keith/rstansim)

Overview
--------

`rstansim` provides a set of helper and utility functions to simplify running simulation studies using R and [stan](http://mc-stan.org/). The package addresses three aspects of running a simulation study:

-   Data simulation.
-   Model fitting and capture of relevant data.
-   Management of simulation results.

All simulation data is output in a tidy format, for ease of interaction with tidyverse packages for analysis and visualisation. Additionally reproducability information such as seeds, initial values, and data used, are stored alongside the data.

Installation
------------

``` r
# Package not yet on CRAN, needs installed from Github:
# install.packages("devtools")
devtools::install_github("ewan-keith/rstansim")
```

Usage
-----

\[still to be written, point to relevant vignettes.\]

Documentation
-------------

Further documentation still being written.
