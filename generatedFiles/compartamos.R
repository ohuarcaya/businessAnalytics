setwd("D:/ONPE/businessAnalytics")
deudores <- read.csv("data/dataOriginal.csv", sep = ";")
# deudores <- read.csv("data/data.csv")

# cabeceras <- read.csv("data/Cabeceras.csv")
# cabeceras
str(deudores)
head(deudores)
deudores$cCompApr<-NULL
deudores$cestado<-NULL
deudores$ctipcuo<-NULL
deudores$fechaTermino<-NULL
str(deudores)

c(deudores$fechaApertura, deudores$fechaUltimoPago, deudores$fechaVigencia, deudores$fechaVencimiento)
deudores$fechaApertura
