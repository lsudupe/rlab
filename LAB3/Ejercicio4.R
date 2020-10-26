library(MASS)
data("birthwt")


count <- 0
bwt <- c(birthwt$bwt)

for(i in 1:length(bwt))
  if (birthwt$age[i] < 20)
  if (birthwt$bwt[i] < 2600)
  if (birthwt$smoke[i] == 1) {
    count <- count + 1
  }
count


#Ejercicio 5

#definimos el vector que guardara los pesos
bwt_c <- c()
j <- 1

#deginimos la función
F_bwt <- function(){
  for (i in 1:length(birthwt$bwt))
    if (birthwt$age[i] < 20) {
      bwt_c[j] <- birthwt$bwt[i]
      j <- j + 1
    }
  return (bwt_c)
  }

bwt_c_edad <- F_bwt()
bwt_c_edad


#calculamos la media y el grafico
mean(bwt_c_edad)
plot(bwt_c_edad)
