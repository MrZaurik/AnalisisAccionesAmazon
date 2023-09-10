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


# Gráfico de líneas de los precios de cierre
plot(ts_datos, main = "Precio de Cierre de Amazon a lo Largo del Tiempo", xlab = "Fecha", ylab = "Precio de Cierre", type = "l")

# Gráfico de promedio móvil de 50 días
sma_50 <- SMA(ts_datos, n = 30)
lines(sma_50, col = "red")
