#a) Realizad un resumen estadístico de health_heart que muestre los parámetros
#básicos más importantes.

health_heart <- read.csv("/Users/lsudu/code/rlab/PEC1/heart.csv")
head(health_heart) #observamos que columnas tenemos
summary(health_heart) #nos da un vistazo de la descripcion estadistica
cor(health_heart) #vemos que dependencia tienen las variables entre si. Baja
sapply(health_heart, mean) #echamos un vistazo a la media de todas las variables.

#b) Definid un vector con la probabilidad de sufrir un ataque (target). 
#Etiquetad la variable "target" con "Menor" si el valor es 0 y "Mayor" si el 
#valor es 1.

health_heart$target <- factor(health_heart$target, levels=c(0,1),
                              labels=c("Menor", "Mayor"))
prob_attack <- c(health_heart$target)


#c) Definid un vector con los niveles de colesterol (chol) de los/as pacientes, 
#después ordenad dicho vector, calculad la media, la varianza y desviación 
#estándar.

chol_patient <- c(health_heart$chol)
chol_patient <- sort(chol_patient)
chol_patient_mean <- mean(chol_patient)
chol_patient_var <- var(chol_patient)
chol_patient_sd <- sd(chol_patient)


#d) Mostrad las tablas de frecuencias relativas y absolutas de los vectores de 
#la edad (age) y la probabilidad (target). Posteriormente representad una tabla
#de frecuencias relativas cruzadas, de manera que podamos visualizar cuántos/as
#pacientes según edad, tiene una probabilidad mayor o menor.


age_patient <- c(health_heart$ï..age)
target_patient <- c(health_heart$target)

prop.table(table(age_patient, target_patient))










