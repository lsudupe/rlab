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


#Ejercicio 7
#Definid una función que calcule la media y otra función que realice la
#representación gráfica de los datos propuestos en el enunciado.

F_mean <- function(x) {
  return (mean(x))
}
F_plot <- function(y) {
  return (plot(y))
}
F_mean(bwt_c_edad) 
F_plot(bwt_c_edad)

#Ejercicio 8
#a) Mostrad la media del factor Ozone.
library(sqldf)
library(RSQLite)
library(dplyr)

db <- "RSQLite"::datasetsDb()
dbListTables(db) #mostramos el conjunto de datos
dbReadTable(db, "airquality") #accedemos al conjunto de datos
colnames(airquality)
sqldf("SELECT AVG(Ozone) FROM airquality")

#b) Mostrad los datos de Ozone, Solar.R y Wind de los meses (Month) 5, 6 y 7.

head(sqldf("SELECT Ozone, [Solar.R],
           Wind FROM airquality where Month in (5,7)"))


#c) Mostrad la información anterior ordenada por Month.

head(sqldf("SELECT Ozone, [Solar.R],
           Wind, Month FROM airquality where Month in (5,7) ORDER BY Month"))


#d) Mostrad los datos de Wind, agrupados por Month.

head(sqldf("SELECT Wind, Month FROM airquality GROUP BY Month"))
