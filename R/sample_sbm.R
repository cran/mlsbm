#' R/Rcpp function for sampling from a single level stochastic block model
#'
#' This function allows you to sample a single level stochastic block model.
#' @param z An n x 1 vector of community labels for each node
#' @param P A K x K symmetric matrix of community connectivity probabilities
#' @keywords SBM
#' @export
#' @return An adjacency matrix
#' @examples
#' n = 100
#' K = 3
#' pi = rep(1/K,K)
#' z = sample(1:K, size = n, replace = TRUE, prob = pi)
#' p_in = 0.50
#' p_out = 0.05
#' P = matrix(p_out, nrow = K, ncol = K)
#' diag(P) = p_in
#' A = sample_sbm(z,P)
sample_sbm <- function(z,P)
{
  A = sample_SBM_fast(z,P)
  return(A)
}
