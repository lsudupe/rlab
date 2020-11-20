#Ejercicio 3. Escogemos dos conjuntos de datos incorporados en los
#paquetes Datasets y MASS de R. Los data frame que queremos son Orange.
#(https://stat.ethz.ch/R-manual/R- atched/library/datasets/html/Orange.html)
#e Iris del que ya hemos hablado anteriormente.
install.packages("MASS")
install.packages('datasets')
library(MASS) #cargamos los paquetes
library(datasets)
data(package='MASS')
data(package='datasets') #ambos dataframes estan en esta libreria, ORANGE e IRIS
data('Orange') #vemos la data
head(Orange)
data('iris')
head(iris)

#. (a) Buscar un resumen de las variables de cada dataset.
summary(Orange)
summary(iris)

summary_iris <- summary(iris)
summary_iris

#. (b) Generar una tabla de frecuencias absolutas y una de relativas con
#cualquier variable del dataset.
#frecuencia absoluta
table(Orange$age) 
table(iris$Sepal.Length)
#frecuencia relativa
prop.table(Orange$age)
prop.table(iris$Sepal.Length)

#. (c) Generar una tabla de frecuencias absolutas con cada una de las variables
#del conjunto de datos Orange. ¿Todas las tablas generadas tienen sentido
#para vosotros?
table(Orange$Tree)
table(Orange$age)
table(Orange$circumference)
#Con la frecuencia absoluta de three no obtenemos ningun dato concluyente
