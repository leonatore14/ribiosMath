*ribiosMath*: Mathematical objects and functions in the ribios suite
===

![R-CMD-check badge](https://github.com/bedapub/ribiosMath/workflows/R-CMD-check/badge.svg)

## What is *ribiosMath*?

*ribiosMath* is a R package in the *ribios* suite that provides useful mathematical objects and functions


## Installation

Run following commands in the R console.

```{R}
library(devtools)
devtools::install_github("bedapub/ribiosMath")
```

## Todo

1. `make check` is not clean yet.

1. `ml Singularity/3.6.3` 
2. `singularity build --sandbox directory/ docker://ghcr.io/leonatore14/ribiosmath/ribiosmath:latest` 
3. `singularity run --writable --no-home directory/ make -C /ribiosMath test` 
