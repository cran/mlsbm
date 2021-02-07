#' R/Rcpp function for sampling from a multilevel stochastic block model
#'
#' This function allows you to sample a multilevel stochastic block model.
#' @param z An n x 1 vector of community labels for each node
#' @param P A K x K symmetric matrix of community connectivity probabilities
#' @param L The number of levels to sample
#' @keywords SBM
#' @export
#' @return A list of adjecency matrices -- one for each level of the MLSBM 
#' @examples
#' n = 100
#' K = 3
#' L = 2
#' pi = rep(1/K,K)
#' z = sample(1:K, size = n, replace = TRUE, prob = pi)
#' p_in = 0.50
#' p_out = 0.05
#' P = matrix(p_out, nrow = K, ncol = K)
#' diag(P) = p_in
#' AL = sample_mlsbm(z,P,L)
sample_mlsbm <- function(z,P,L)
{
  AL = vector("list",L)
  for(l in 1:L)
  {
    AL[[l]] = sample_sbm(z,P)
  }
  return(AL)
}
