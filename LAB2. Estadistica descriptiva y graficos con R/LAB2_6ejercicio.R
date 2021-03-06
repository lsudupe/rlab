#Ejercicio 6.
#2.a)Cargad (o instalad primero y luego cargad) el paquete UsingR. El conjunto 
#de datos brightness (incorporado en este paquete) contiene informaci�n sobre el
#brillo de 963 estrellas.Representad estos datos mediante un histograma y un
#gr�fico de densidad superpuesto. Combinad los dos gr�ficos.
  install.packages('UsingR')
library(UsingR)
data(package='UsingR')
data("brightness")
Bright <- data.frame(brightness)
hist(Bright, freq = F, main = 'Histograma', xlab='Brillo de las estrellas', 
     ylab= 'Numero de estrellas')
lines(density(Bright$brightness),lty=2, col='red')


#2.b)Representad gr�ficamente estos datos mediante un diagrama de caja (boxplot)

boxplot(brightness, data=Bright, main='Brillo de las estrellas',xlab='Porcentaje
        de estrellas', ylab='Valores',col='tomato')

#2.c)�Dir�ais que los datos presentan �outliers�?
Si, hay varios datos alejados