#Ejercicio 1.En este ejercicio construimos las variables en nuestro script, 
#recodificamos variables no numéricas y buscamos resúmenes estadísticos y tablas
#de frecuencias de nuestras variables y datos:

id=c(100,110,120,130,140,150,160,170,180,190)
edad=c(18,19,NA,18,24,27,22,25,22,15)
sexo=c(2,1,2,2,1,2,1,1,2,1)
peso=c(65,58,56,61,84,99,50,64,87,87)
altura=c(161,170,174,165,150,171,181,170,184,190)
niv_col=c(1,2,3,1,3,2,3,1,2,3)

tabla_datos = data.frame(id, edad, sexo, peso, altura, niv_col)

sexo = factor(sexo, levels = c(1, 2), labels = c("Hombre", "Mujer"))
niv_col = factor(niv_col, levels = c(1, 2, 3), labels = c("Colesterol alto", "COlesterol normal", "Colesterol bajo"))
tabla_datos_2 = data.frame(id, edad, sexo, peso, altura, niv_col)

edad = summary(edad) #datos estadisticos
edad_five_num = fivenum(edad) #5 numeros caracteristicos
edad_mean = mean(edad)
edad_var = var(edad)
peso_altura_cor = cor(peso, altura) #correlacion entre dos variables
edad_desviacion_estandar = sd(edad)
