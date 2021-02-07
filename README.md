# mlsbm

The `mlsbm` package fits single level stochastic block models (SBMs) and multilevel stochastic block models (MLSBMs) using efficient Gibbs sampling with Rcpp. It can also be used to efficiently sample from SBMs and MLSBMs. 

## Installation

The `mlsbm` package can be installed directly from this repository using `devtools`.

```
devtools::install_github("carter-allen/mlsbm")
```

## Usage

```
# load mlsbm package
library(mlsbm)

# load included 3-layer network data
data(AL)

# fit a multilevel SBM with 3 clusters
fit <- fit_mlsbm(AL,3)

# examine the inferred clustering
table(fit$z)
```