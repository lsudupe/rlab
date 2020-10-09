#Ejercicio 2.Se quiere estudiar la posible asociación entre el hecho de que una 
#gestante fume durante el embarazo y que el bebé presente bajo peso al nacer. Se 
#realiza un estudio de seguimiento de 2.000 embarazadas. 

Si = c(43, 105)
No = c(207, 1645)
tabla = data.frame(Si, No)
rownames(tabla) <- c("Fumadora", "No fumadora")
tabla
#Test Chi-cuadrado para la asociacion entre las dos variables.
Chi_test <- chisq.test(tabla)
Chi_test
#La conclusión es que hay una asociación significativa entre las variables 
#(Chi2=38.42, gl = 1, p-value<0.05).