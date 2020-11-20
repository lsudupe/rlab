#a) Importar los datos del fichero wisc_bc_data.csv y guardarlos en un data frame 
#llamado dataBreastCancer. Mostrar los datos resultantes

dataBreastCancer <- read.csv("/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/wisc_bc_data.csv", header=TRUE)
dataBreastCancer  

#b)Mostrar en qué directorio tenéis ubicados los ficheros de datos que generáis
#desde RStudio y cambiar el directorio para guardar los ejercicios del LAB1 en la
#carpeta SAD_LAB1.

getwd()
setwd('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/')

#c) Mostrar las características más importantes del data frame dataBreastCancer

names(dataBreastCancer)
str(dataBreastCancer)
dim(dataBreastCancer)

#d) Exportar el data frame dataBreastCancer a un fichero en formato texto y otro en
#formato *.dta (compatible con STATA ((http://www.stata.com)). Especificar la
#instrucción en R para realizar la exportación desde RStudio y RCommander.
library(foreign)
library(Rcmdr)

write.table(dataBreastCancer, '/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/dataBreatCancer.txt', quote=FALSE)
write.dta(dataBreastCancer, '/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/dataBreatCancer.dta', quote=FALSE)

#e) Realizar las siguientes consultas a partir del data frame dataBreastCancer:
#. Mostrar de qué tipo es la variable diagnosis y qué niveles contiene.
class(dataBreastCancer$diagnosis)
factor(dataBreastCancer$diagnosis)

#. ¿Cuántos diagnósticos de la muestra son benignos ("B") y cuántos malignos ("M")? 
table(dataBreastCancer$diagnosis)

#Mostrar los datos de los pacientes a los que se les ha diagnosticado un tumor benigno ("B")
data_B <- subset(dataBreastCancer, dataBreastCancer$diagnosis=='B')
data_B

#Definir un vector que guarde los datos del primer paciente y mostrad el valor de dicho vector.
paciente_1 <- c(dataBreastCancer[1,])
paciente_1

#. Definir un vector que guarde los area_mean de cada paciente y especificad cuál es el valor mínimo y máximo de estos valores. 
area_mean_pacients <- (dataBreastCancer$area_mean)
max_area_mean <- max(area_mean_pacients)
min_area_mean <- min(area_mean_pacients)
max_area_mean
min_area_mean

#¿A qué id de paciente corresponde el menor valor? ¿Y el máximo? 
id_max <- dataBreastCancer$id[dataBreastCancer$area_mean==max(dataBreastCancer$area_mean)]
id_min <- dataBreastCancer$id[dataBreastCancer$area_mean==min_area_mean]
id_max
id_min

#¿Corresponden a un tumor benigno o maligno?
tumor_type_max_area <- dataBreastCancer$diagnosis[dataBreastCancer$id==id_max]
tumor_type_min_area <- dataBreastCancer$diagnosis[dataBreastCancer==id_min]
tumor_type_max_area
tumor_type_min_area


#Mostrad toda la información de los pacientes con menor y mayor area_mean.
max_area_pacient_info <- subset(dataBreastCancer, dataBreastCancer$id==id_max)
max_area_pacient_info
min_area_pacient_infor <- subset(dataBreastCancer, dataBreastCancer$id==id_min)
min_area_pacient_infor

#Crear un vector que incluya los id de los pacientes que tengan diagnosticado un tumor maligno, ¿cuántos pacientes hay con este diagnóstico?
#pacientesDM<-which(dataBreastCancer[,"diagnosis"]=='M')
#A <- length(pacientesDM)
#A

pacient_M <- which(dataBreastCancer$diagnosis=='M')
len_M <- length(pacient_M)
len_M


#f) En ocasiones puede ser necesario recorrer un fichero de caracteres y extraer información de estos. 
#Por ejemplo, leer la secuencia del grupo de proteínas del fichero secProteinGroup extraído de http://www.bioinformatics.org/sms2/group_protein.html 
#y mostrar dicha información. 
secuencia_proteinas <- 
  readChar('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/secProteinGroup', file.info('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/secProteinGroup')$size)
secuencia_proteinas
#otra manera de abrirlo
library(readr)
secuencia_proteina_prueba <-
  read_file('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/secProteinGroup')
secuencia_proteina_prueba

#¿Cuántos caracteres aparecen? 
library(stringr)
numero_caracteres_sp <-
  str_length(secuencia_proteinas)
numero_caracteres_sp
#otr manera de contar
nchar(secuencia_proteinas)

#¿Cuántas veces aparece cada carácter?
repeticion_caracteres <-
  table(strsplit(secuencia_proteinas,split=character(0)))
repeticion_caracteres

#¿Cuántas veces se repite el patrón "LL"?
secuencia <- 'LL'
str_count(secuencia_proteinas, secuencia)
