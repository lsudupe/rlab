#Ejercicio 5.
#1.a) Incorporad el dataset VaDeaths de R y generad un gráfico barplot.
library(datasets)
data("VADeaths")
head(VADeaths)
barplot(VADeaths)

#1.b) Usad la función pairs sobre el conjunto de datos iris.
data("iris")
head(iris)
pairs(iris)

#1.c) Generad unos datos inventados y cread un boxplot con ellos.
x = rnorm(300)
boxplot(x)

#1.d) Dibujad una parábola y=x^2 con valores que van de x entre -10 y 10.
x = seq(-10, 10)
y = x^2
plot(x, y, type='l', xlab='eje de las x', ylab='eje de las y', main='Parabola')
plot(x, y, type='h', xlab='eje de las x', ylab='eje de las y', main='Parabola',
     axes=F)
plot(x, y, pch=18, col=2, type='b')

#2.a)Cargad (o instalad primero y luego cargad) el paquete UsingR. El conjunto 
#de datos brightness (incorporado en este paquete) contiene información sobre el
#brillo de 963 estrellas.Representad estos datos mediante un histograma y un
#gráfico de densidad superpuesto. Combinad los dos gráficos.
install.packages('UsingR')
library(UsingR)
data(package='UsingR')
data("brightness")
Bright <- data.frame(brightness)
hist(Bright, freq = F, main = 'Histograma', xlab='Brillo de las estrellas', 
     ylab= 'Numero de estrellas')
lines(density(Bright$brightness),lty=2, col='red')


#2.b)Representad gráficamente estos datos mediante un diagrama de caja (boxplot)

boxplot(brightness, data=Bright, main='Brillo de las estrellas',xlab='Porcentaje
        de estrellas', ylab='Valores',col='tomato')

#2.c)¿Diríais que los datos presentan «outliers»?
Si, hay varios datos alejados
