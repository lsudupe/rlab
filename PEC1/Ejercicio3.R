#Ejercicio 3.Considerando el data frame health_heart, resolver las siguientes 
#cuestiones:

#a) ¿Cuál es la media de edad, que definiremos como age_mean, de los pacientes 
#de la muestra de datos?

health_heart <- read.csv("/Users/lsudu/code/rlab/LAB2/PEC1/heart.csv")

#primero voy a renombrar la columna 'ï..age'
install.packages("tidyverse")
library(plyr)
health_heart <- rename(health_heart, c("ï..age" = "age" ))

age_mean <- mean(health_heart$age)

#b) Definid una variable, age_max_trestbps, que guarde la edad del paciente que
#registra el máximo valor de presión arterial.

age_max_trestbps <- health_heart$age[max(health_heart$trestbps)]


#c) Mostrad los/as pacientes cuya probabilidad de tener un ataque al corazón 
#(target=0(menor probabilidad), target=1 (mayor probabilidad)) considerando 
#aquellos/as pacientes con presión arterial (trestbps) superior a la media.


high_heart_attack_prob <- health_heart$target[health_heart$trestbps > 
                                                  mean(health_heart$trestbps)]
high_heart_attack_prob

#d) Definid un data frame, heartAttack_chance_0, que contenga los/as pacientes 
#cuya probabilidad de sufrir un ataque al corazón sea baja (target=0). A partir 
#de este data frame, definid un vector que contenga los valores máximos de las 
#variables edad "age", colesterol "chol" y pulsaciones "thalach".

heartAttack_chance_0 <- subset(health_heart, health_heart$target == "0")
heartAttack_chance_0
vector <- c(max(heartAttack_chance_0$age), max(heartAttack_chance_0$chol),
            max(heartAttack_chance_0$thalach))
vector

#e) Definid una matriz que muestre las columnas "age" y "sex".

matrix_health <- matrix(c(health_heart$age, health_heart$sex), ncol=2)
head(matrix_health)

matrix_hearAttack <- matrix(c(heartAttack_chance_0$age, 
                              heartAttack_chance_0$sex), ncol=2)
head(matrix_hearAttack)

