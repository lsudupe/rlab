#Ejercicio 1.Resuelve las siguientes cuestiones, mostrando las instrucciones de
#código utilizadas así como el resultado de la ejecución de dicho código.

#1.1. Importa los datos del fichero Health_heart.csv correspondientes a la 
#probabilidad de sufrir un ataque al corazón. Guarda estos datos en un data frame
#llamado health_heart y muestra los primeros y últimos registros del conjunto 
#de datos.

health_heart <- read.csv("/Users/lsudu/code/rlab/LAB2/PEC1/heart.csv")
head(health_heart)
tail(health_heart)


#1.2. A partir del data frame definido, health_heart, muestra algunas 
#características como:
#a) Nombre de las variables que forman el conjunto de datos.
names(health_heart)

#b) Estructura del conjunto de datos
str(health_heart)

#c) Tamaño de la muestra y número de variables
dim(health_heart)

#d) ¿Existen valores nulos en el conjunto de datos?
table(is.null(health_heart))

#e) ¿Existen datos perdidos (missing values) en la tabla?
table(is.na(health_heart))
