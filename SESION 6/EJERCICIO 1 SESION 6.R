# EJEMPLO 1 SESION 6

#CARGANDO BASE DE DATOS
library(haven)
womenwk <- read_dta("C:/Users/carlosg/Desktop/R/SESION 6/01-ARCHIVOS UTILIZADOS-DATA/DATA-ECONR-BAS-SESION 6-EJEMPLO 1.dta")
View(womenwk)

#DIAGRAMA DE DISPERSION
attach(womenwk)
plot(education, wage, main = "Dispersión entre educación y salario")

#CREANDO EL MODELO LINEAL SIMPLE
modelo = lm(wage ~ education, data = womenwk)
summary(modelo)

#CREANDO LINEA DE REGRESION AL GRAFICO
abline(modelo, col ="red")
