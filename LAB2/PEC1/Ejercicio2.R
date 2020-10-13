#Ejercicio 2.Definid un data frame, dataHealthHeart_w, y otro data frame, 
#dataHealthHeart_m, que corresponderán a los conjuntos de datos de las mujeres y
#de los hombres, respectivamente. Posteriormente, exportad ambos data frame a 
#dos ficheros (HealthHeart_w,HealthHeart_m) de tipo csv.

health_heart <- read.csv("/Users/lsudu/code/rlab/LAB2/PEC1/heart.csv")
health_heart$sex <- factor(health_heart$sex, levels=c("0","1"),
                       labels=c("male","female"))

dataHealthHeart_w <- data.frame(subset(health_heart, 
                                       health_heart$sex == "female"))
dataHealthHeart_m <- data.frame(subset(health_heart, 
                                health_heart$sex == "male"))

write.csv(dataHealthHeart_w, file=
            "/Users/lsudu/code/rlab/LAB2/PEC1/HealthHeart_w.csv")
        
write.csv(dataHealthHeart_m, file =
            "/Users/lsudu/code/rlab/LAB2/PEC1/HealthHeart_m.csv")

