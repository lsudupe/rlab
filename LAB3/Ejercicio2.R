library(MASS)
data("anorexia")
prewt <- c(anorexia$Prewt)
postwt <- c(anorexia$Postwt)
result <- c(postwt - prewt)
dif_peso <- 0

for(i in 1:length(result))
if (result[i] < 0)
  dif_peso <- dif_peso + 1

print(dif_peso)


#Ejercicio 3

table <- data.frame(anorexia)
cont <- 0
CBT <- 0
FT <- 0

tratamiento <- c(anorexia$Treat)

for(i in 1:length(tratamiento)) 
  if (anorexia$Treat[i]== "Cont") {
    cont <- cont + 1
} else
  if (anorexia$Treat[i]== "CBT") {
    CBT <- CBT + 1
} else {
    FT <- FT + 1
}

porcentaje_cont <- cont/length((tratamiento))
porcentaje_CBT <- CBT/length((tratamiento))
porcentaje_FT <- FT/length((tratamiento))
porcentaje_CBT
porcentaje_cont
porcentaje_FT
