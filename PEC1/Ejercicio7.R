#Ejercicio 7
#A partir del conjunto de datos "women" del paquete MASS, guardad en un vector 
#la altura (height) de las mujeres cuyo peso (weight) es superior a 131lb e 
#inferior a 150lb. 
library(MASS)
data("women")
table <- data.frame(women)

height_women <- c()
j <- 1

F_height <- function(){
  for(i in 1:length(women$height))
    if (women$weight[i] > 131)
    if (women$weight[i] < 150) {
      height_women[j] <- women$height[i]
      j <- j + 1
    }
  return (height_women)
}
heigth <- F_height()
heigth


#Calculad la media del vector y las posiciones asociadas (del conjunto 
#de datos "women") a los valores incluidos en el nuevo vector creado.

mean(heigth)
plot(heigth)
