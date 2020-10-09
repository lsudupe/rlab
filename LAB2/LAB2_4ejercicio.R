#Ejercicio 4.En este ejercicio realizaremos paso a paso la creación de gráficos
#y modificación de sus opciones para que veáis cómo se pueden generar:
library(datasets)
data('iris')
head(iris)

stem(iris$Sepal.Length) #grafico de tallo y hojas
boxplot(iris$Petal.Width) #grafico de cajas
hist(iris$Sepal.Length) #grafico de histogramas
plot(iris$Sepal.Width) #grafico de puntos

#modificaciones varias
stem(iris$Sepal.Length, scale =1, width =80) 
boxplot(iris$Petal.Width, col='tomato', title='Diagrama de caja')
hist(iris$Sepal.Length, breaks=20, col='cadetblue3')
plot(iris$Sepal.Width, col='dark red', xlab='SepalWidth', ylab='Y')

