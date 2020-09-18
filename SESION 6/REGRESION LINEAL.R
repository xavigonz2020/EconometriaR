# CARGANDO BASE DE DATOS

library(haven)
bankloan <- read_dta("C:/Users/carlosg/Desktop/R/SESION 6/bankloan.dta")
View(bankloan)

# PRINCIPALES ESTADISTICOS DE VARIABLE EMPLEO E INGRESOS

summary(bankloan$empleo)
summary(bankloan$ingresos)

#CREANDO TABLA CON DOS VARIABLES

model1 = cbind(bankloan$empleo, bankloan$ingresos)
colnames(model1) = c("empleo" , "ingresos")
summary(model1)

#CREANDO EL MODELO DE REGRESION SIMPLE

reg_sim = lm(ingresos ~ empleo, data = bankloan)
print(reg_sim)

#CREANDO EL MODELO DE REGRESION MULTIPLE

reg_mul = lm(ingresos ~ empleo + edad + direccion, data = bankloan)
print(reg_mul)

# CREANDO BONDAD DE AJUSTE

summary(reg_mul)

