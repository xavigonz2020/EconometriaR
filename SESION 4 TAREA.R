#CARGANDO BASE DE DATOS

library(haven)
invcap <- read_dta("SESION 4/01-ARCHIVOS UTILIZADOS-DATA/DATA-ECONR-BAS-SESION 4-TAREA 1.1.dta")
View(invcap)

#ETIQUETAR VARIABLES

library(Hmisc)
label(invcap$capital) = 'inversión en capital'
label(invcap$labor) = 'inversión en mano de obra'
label(invcap$lnoutput) = 'logaritmo de la produccion'

#CREANDO VARIABLE PRODUCCION LINEAL

invcap$prodlin = with(invcap, exp(lnoutput))
