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


