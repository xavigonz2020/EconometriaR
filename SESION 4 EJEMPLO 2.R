#CARGANDO BASE DE DATOS

library(haven)
bankloan <- read_dta("SESION 4/01-ARCHIVOS UTILIZADOS-DATA/DATA-ECONR-BAS-SESION 4-EJEMPLO 2.dta")
View(bankloan)

#RENOMBRAR VARIABLE

library(reshape)
bankloan = rename(bankloan, c(impago="deuda"))

#RECODIFICAR VARIABLE

bankloan$deudafin[ bankloan$deuda == 1 ] = "SI"
bankloan$deudafin[ bankloan$deuda == 0 ] = "NO"
