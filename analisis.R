library(stats)
library(TTR)
library(dplyr)
library(zoo)

datos <- arrange(datos, Date)  # Ordena por fecha ascendente
ts_datos <- zoo(datos$Close, order.by = datos$Date)  # Crea una serie temporal


mean_close <- mean(ts_datos)
median_close <- median(ts_datos)
sd_close <- sd(ts_datos)

hist(ts_datos, main = "Distribución de Precios de Cierre", xlab = "Precio de Cierre", col = "blue")
