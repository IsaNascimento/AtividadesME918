source("executa.R")

save_file <-function(i){
  result <- lista_amostras[i]
  distribution <- planos[[i]]$distribution
  obs <- planos[[i]]$obs
  if(distribution == "normal"){
    mu <- planos[[i]]$mu
    sigma2 <- planos[[i]]$sigma2
    save(result, distribution, obs, mu, sigma2,
         file = paste0("D:/ISABELLA/AtividadesME918/resultados/simulacao",
                       ifelse(i < 10, paste0("0", i), i), ".RData"))
  } else if(distribution == "poisson"){
    lambda <- planos[[i]]$lambda
    save(result, distribution, obs, lambda,
         file = paste0("D:/ISABELLA/AtividadesME918/resultados/simulacao",
                       ifelse(i < 10, paste0("0", i), i), ".RData"))
  } else if(distribution == "bernoulli"){
    p <- planos[[i]]$p
    save(result, distribution, obs, p, file = paste0("D:/ISABELLA/AtividadesME918/resultados/simulacao",
                                                ifelse(i < 10, paste0("0", i), i), ".RData"))
    }
  else save("Escolha outra distribuicao", file = paste0("D:/ISABELLA/AtividadesME918/resultados/simulacao",
                                                                        ifelse(i < 10, paste0("0", i), i), ".RData"))
}

walk(1:length(lista_amostras), .f = save_file)
