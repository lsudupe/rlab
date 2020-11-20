#Ejercicio 7.Representad gráficamente los datos contenidos en los
#conjuntos de datos (incorporados en UsingR) bumpers, firstchi, math 
#con un histograma y/o un boxplot usando ggplot2.
library(UsingR)
a <- data.frame(bumpers)
b <- data.frame(firstchi)
c <- data.frame(math)

par(mfrow=c(1,2))
hist(bumpers, breaks=30, col='cadetblue3')
plot(bumpers, col='dark red', xlab='Bumpers', ylab='value')

par(mfrow=c(1,2))
hist(firstchi, breaks=30, col='cadetblue3')
plot(firstchi, col='dark red', xlab='Firstchi', ylab='values')

par(mfrow=c(1,2))
hist(math, breaks=30, col = 'cadetblue3')
plot(math, col='dark red', xlab='math', ylab='values')
