# Autor: Soeldad Represa
# Fecha: 13/06/2017
# Codigo utilizado para elaborar presentacion
###########################################################


dnorm(5) # devuelve la probabilidad

a <- rnorm(n=200, mean=53, sd=21) #genera 200 números con distribucion normal
plot(rnorm(20)) 
hist(rnorm(20), breaks=20)
a <- round(a)
hist(a, breaks=17, xlab="", ylab="Frecuencia", main="Histograma", col="dodgerblue2")

# Genero una muestra aleatoria de distribucion normal
muestra <- rnorm(n=200, mean=53, sd=21)
muestra <- round(muestra)

summary(muestra) # median= 57; mean=53.35 no cambio mucho
sd(muestra)      # sd= 21.3
hist(muestra, breaks=17, xlab="", ylab="Frecuencia", main="Histograma", col="dodgerblue2")


# Generar grafica de distribucion normal
a <- seq(from= 0, to=100, by= 0.25)    # genero valores
dens <- dnorm(a, mean= 53, sd =20.56 ) # genero los valores de distribución 
plot(a, dens, type="l", xlab="", ylab="Probabilidad" )
abline(v=53, col= "blue")              # para ver la media


a <- seq(from= 0, to=100, by= 0.25)
dens <- dnorm(a, mean= 50, sd =1 )
plot(a, dens, type="l", xlab="", ylab="Probabilidad" )

# visualizar un dato extremo
a_extrem <- c(47, 41, 31, 65, 76, 49, 25, 20, 24, 69, 41, 43, 62, 43, 41, 51, 52, 35, 1)
boxplot(a_extrem)

# Para comparar 3 sitios
A <- c(3.8, 6.8, 8.0, 3.6, 3.9, 5.9, 6.0, 5.7, 5.6, 4.5)
B <- c(4.2, 4.8, 4.8, 2.3, 6.5, 4.9, 3.6, 2.4, 3.2, 4.9)
C <- c(3.9, 4.5, 8.1, 5.7, 3.6, 2.4, 6.3, 4.6, 5.1, 7.2)

data <- data.frame(A,B,C)
boxplot(data)
abline(h=4, col= "dodgerblue2")

# �Como se comporta una serie temporal real? 
setwd("/home/usuario/Sol/UNLU/TESIS")    
bb <- read.csv("bb.csv", header = TRUE, sep=",", na.strings = NA)
bb$date <- as.POSIXct(bb$date, tz="GMT")


