#Ejercicio 8
#A partir del conjunto de datos "BOD" de la libreria RSQLite, realizad un breve 
#estudio utilizando la sintaxis de SQL con R. En concreto, se pide:

library(RSQLite)  #cargamos la libreria
db <- "RSQLite"::datasetsDb()  #accedemos a las bases de datos de uno de los 
#ficheros de RSQLite 
dbReadTable(db, "BOD")#accedemos a BOD y lo guardamos en db


#a) Una lectura de las 4 primeras líneas del conjunto de datos.

sqldf("SELECT * FROM BOD LIMIT 4")


#b) La información de la tabla ordenada de forma descendente de acuerdo a la 
#variable "Demand".

sqldf("SELECT * FROM BOD ORDER BY demand DESC")

#c) Los datos de la tabla cuyos valores de la variable "Demand" se encuentran 
#entre 12 y 25.

sqldf("SELECT * FROM BOD where demand > 12 AND demand < 25")







