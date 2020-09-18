#CARGANDO BASE DE DATOS

library(readxl)
tobit1 <- read_excel("SESION 4/01-ARCHIVOS UTILIZADOS-DATA/DATA-ECONR-BAS-SESION 4-EJEMPLO 3-1.xlsx")
View(tobit1)
tobit2 <- read_excel("SESION 4/01-ARCHIVOS UTILIZADOS-DATA/DATA-ECONR-BAS-SESION 4-EJEMPLO 3-2.xlsx")
View(tobit2)

#FUSIONANDO DATOS
totaltobit = rbind(tobit1, tobit2)
