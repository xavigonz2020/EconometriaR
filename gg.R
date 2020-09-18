# CARGANDO BASE DE DATOS
library(haven)
sumaria_2015 <- read_dta("C:/Users/carlosg/Desktop/R/SESION 9/sumaria-2015.dta")
View(sumaria_2015)

# CREANDO NUESTRO MODELO DE REGRESION LINEAL MULTIPLE
modelo = lm(gashog2d ~ inghog2d + mieperho, data = sumaria_2015)

# VIENDO LOS ESATIDISTICOS DE NUESTRO MODELO
summary(modelo)
# - ES SIGNIFICATIVO A NIVEL INDIVIDUAL
# - ES SINGINIFICATIVO A NIVEL GLOVAL
# - TIENE UN R CUADRADO ALTO DE 63.49 %

# CREANDO VECTOR DE RESIDUOS
resid = modelo$residuals 

# CREANDO VECTOR DE OBSERVACIONES
obs = c(1:32188)

# CREANDO GRAFICO DE LINEAS
plot(obs, resid, type = "l")

# CREANDO VECTOR RESIDUOS AL CUADRADO
cuadres = resid^2

# CRANDO GRAFICO DE PUNTOS
plot(cuadres, sumaria_2015$gashog2d)

# CONTRASTES DE HETEROSCEDASTICIDAD
# CARGANDO PAQUETE LMTEST
library(lmtest)
# TEST DE BREUSCH-PAGAN
bptest(modelo)

#TEST DE GOLDFELD-QUANDT
gqtest(modelo, order.by = ~gashog2d, data = sumaria_2015)

