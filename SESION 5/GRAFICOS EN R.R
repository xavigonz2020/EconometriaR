#Grafico Univariable

slices = c(10, 12, 4, 16, 8) # Valores
lbls = c("US", "UK", "Australia", "Germany", "France") #Etiquetas
pie(slices, labels=lbls)

#Cargando Base de datos

library(haven)
auto <- read_dta("SESION 4/auto.dta")
View(auto)

#RECATEGORIZANDO LAS VARIABLES
auto$extran [auto$foreign ==1] = "Extranjero"
auto$extran [auto$foreign ==0] = "Nacional"

#HACIENDO EL GRAFICO
pie(table(auto$extran))

#CARGANDO BASE DATOS SUMARIA

library(haven)
sumaria_2015 <- read_dta("SESION 5/sumaria-2015.dta")
View(sumaria_2015)

#CREANDO GRAFICO DE BARRAS

barplot(table(sumaria_2015$dominio), main = "Gráfico de barras para el dominio", col = "red")

#CREANDO TABLA DE VARIABLES 

counts = table(sumaria_2015$dominio, sumaria_2015$pobreza)

#CREANDO BARRAS DE GRAFICOS MULTIPLES

barplot(counts, main = "condicion de pobreza de hogares por dominio", 
        xlab = "numero de hogares", legend = rownames(counts))

barplot(counts, main = "condicion de pobreza de hogares por dominio", 
        xlab = "numero de hogares", legend = rownames(counts), beside = TRUE)

#CREANDO DIAGRAMAS DE CAJAS

boxplot(sumaria_2015$gashog2d)

boxplot(auto$price ~ auto$extran, main = "Diagrama de cajas para los precios
        \n de acuerdo a la procedencia del vehiculo")
#CREANDO HISTOGRAMAS

hist(auto$price, col = "green", xlab = "precio", 
     main = "Histograma de precio")

hist(auto$price, col = "green", xlab = "precio", 
     main = "Histograma de precio", prob = TRUE)

lines(dnorm(auto$price))

#HISTOGRAMA CON CURVA NORMAL

m = mean(auto$price)          #calculando la media
std = sqrt(var(auto$price))   #calculando la desviacion estandar

hist(auto$price, probability = TRUE, col = "RED", main = "Histograma
     con curva normal", border = "BLACK")

curve(dnorm(x, mean = m, sd = std), col = "DARKBLUE", add = TRUE)
