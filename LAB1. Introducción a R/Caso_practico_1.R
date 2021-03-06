#a) Importar los datos del fichero wisc_bc_data.csv y guardarlos en un data frame 
#llamado dataBreastCancer. Mostrar los datos resultantes

dataBreastCancer <- read.csv("/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/wisc_bc_data.csv", header=TRUE)
dataBreastCancer  

#b)Mostrar en qu� directorio ten�is ubicados los ficheros de datos que gener�is
#desde RStudio y cambiar el directorio para guardar los ejercicios del LAB1 en la
#carpeta SAD_LAB1.

getwd()
setwd('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/')

#c) Mostrar las caracter�sticas m�s importantes del data frame dataBreastCancer

names(dataBreastCancer)
str(dataBreastCancer)
dim(dataBreastCancer)

#d) Exportar el data frame dataBreastCancer a un fichero en formato texto y otro en
#formato *.dta (compatible con STATA ((http://www.stata.com)). Especificar la
#instrucci�n en R para realizar la exportaci�n desde RStudio y RCommander.
library(foreign)
library(Rcmdr)

write.table(dataBreastCancer, '/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/dataBreatCancer.txt', quote=FALSE)
write.dta(dataBreastCancer, '/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/dataBreatCancer.dta', quote=FALSE)

#e) Realizar las siguientes consultas a partir del data frame dataBreastCancer:
#. Mostrar de qu� tipo es la variable diagnosis y qu� niveles contiene.
class(dataBreastCancer$diagnosis)
factor(dataBreastCancer$diagnosis)

#. �Cu�ntos diagn�sticos de la muestra son benignos ("B") y cu�ntos malignos ("M")? 
table(dataBreastCancer$diagnosis)

#Mostrar los datos de los pacientes a los que se les ha diagnosticado un tumor benigno ("B")
data_B <- subset(dataBreastCancer, dataBreastCancer$diagnosis=='B')
data_B

#Definir un vector que guarde los datos del primer paciente y mostrad el valor de dicho vector.
paciente_1 <- c(dataBreastCancer[1,])
paciente_1

#. Definir un vector que guarde los area_mean de cada paciente y especificad cu�l es el valor m�nimo y m�ximo de estos valores. 
area_mean_pacients <- (dataBreastCancer$area_mean)
max_area_mean <- max(area_mean_pacients)
min_area_mean <- min(area_mean_pacients)
max_area_mean
min_area_mean

#�A qu� id de paciente corresponde el menor valor? �Y el m�ximo? 
id_max <- dataBreastCancer$id[dataBreastCancer$area_mean==max(dataBreastCancer$area_mean)]
id_min <- dataBreastCancer$id[dataBreastCancer$area_mean==min_area_mean]
id_max
id_min

#�Corresponden a un tumor benigno o maligno?
tumor_type_max_area <- dataBreastCancer$diagnosis[dataBreastCancer$id==id_max]
tumor_type_min_area <- dataBreastCancer$diagnosis[dataBreastCancer==id_min]
tumor_type_max_area
tumor_type_min_area


#Mostrad toda la informaci�n de los pacientes con menor y mayor area_mean.
max_area_pacient_info <- subset(dataBreastCancer, dataBreastCancer$id==id_max)
max_area_pacient_info
min_area_pacient_infor <- subset(dataBreastCancer, dataBreastCancer$id==id_min)
min_area_pacient_infor

#Crear un vector que incluya los id de los pacientes que tengan diagnosticado un tumor maligno, �cu�ntos pacientes hay con este diagn�stico?
#pacientesDM<-which(dataBreastCancer[,"diagnosis"]=='M')
#A <- length(pacientesDM)
#A

pacient_M <- which(dataBreastCancer$diagnosis=='M')
len_M <- length(pacient_M)
len_M


#f) En ocasiones puede ser necesario recorrer un fichero de caracteres y extraer informaci�n de estos. 
#Por ejemplo, leer la secuencia del grupo de prote�nas del fichero secProteinGroup extra�do de http://www.bioinformatics.org/sms2/group_protein.html 
#y mostrar dicha informaci�n. 
secuencia_proteinas <- 
  readChar('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/secProteinGroup', file.info('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/secProteinGroup')$size)
secuencia_proteinas
#otra manera de abrirlo
library(readr)
secuencia_proteina_prueba <-
  read_file('/Users/sudup/OneDrive/Documentos/UOC MATERIALES/SOFTWARE/LAB1_datos/SAD_LAB1_datos/secProteinGroup')
secuencia_proteina_prueba

#�Cu�ntos caracteres aparecen? 
library(stringr)
numero_caracteres_sp <-
  str_length(secuencia_proteinas)
numero_caracteres_sp
#otr manera de contar
nchar(secuencia_proteinas)

#�Cu�ntas veces aparece cada car�cter?
repeticion_caracteres <-
  table(strsplit(secuencia_proteinas,split=character(0)))
repeticion_caracteres

#�Cu�ntas veces se repite el patr�n "LL"?
secuencia <- 'LL'
str_count(secuencia_proteinas, secuencia)
