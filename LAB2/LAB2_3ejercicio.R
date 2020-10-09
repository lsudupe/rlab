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
orange <- data('Orange') #vemos la data
orange
iris <- data('iris')
iris

head(orange)
head(iris)

#. (a) Buscar un resumen de las variables de cada dataset.
summary_orange <- summary(orange)
summary_orange
summary_iris <- summary(iris)
summary_iris
#. (b) Generar una tabla de frecuencias absolutas y una de relativas con
#cualquier variable del dataset.
#. (c) Generar una tabla de frecuencias absolutas con cada una de las variables
#del conjunto de datos Orange. ¿Todas las tablas generadas tienen sentido
#para vosotros?