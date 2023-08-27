dist_generator <- function(dist){
  ifelse(dist$distribution == "normal", amostra <- rnorm(dist$obs, mean = dist$mu, sd = sqrt(dist$sigma2)), 
         ifelse(dist$distribution == "poisson", amostra <- rpois(dist$obs, dist$lambda), 
                ifelse(dist$distribution == "bernoulli", amostra <- rbinom(n = dist$obs,size = 1, p = dist$p),
                       "Escolha outra distribuição")))
  return(amostra)
}
