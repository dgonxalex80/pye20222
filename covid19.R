install.packages("tidyverse") #  instalacion de paquete para manejo de datos
library(tidyverse)   # libreria de librerias util en el manejo de datos

install.packages("RSocrata", dependencies = TRUE)   # instalación de paquete RSocrata
library(RSocrata)    # llamado de libreria
token <- "zxMsD6eXc0zlEMryRGW87Hwrz"  # token
Colombia <- read.socrata("https://www.datos.gov.co/resource/gt2j-8ykr.json", app_token = token) # lectura de manera remota 

# adecuación de la base de datos
Colombia$edad=as.integer(Colombia$edad)  # convertir en entoro la variable edad
Colombia$sexo=str_to_lower(Colombia$sexo) # pasar a minusculas todos valores de la variable sexo
Colombia$estado=str_to_lower(Colombia$estado) # pasar a minusculas todos lo valores de la variable estado
Colombia$estado[Colombia$estado=="n/a"]=NA   # cambiar el valor  n/a por NA - valores faltantes
Colombia$recuperado=str_to_lower(Colombia$recuperado) # pasar a minusculas todos los valores de la variable recuperado
Colombia$recuperado[Colombia$recuperado=="n/a"]=NA 

# seleccion de bases
Colombia22=subset(Colombia, Colombia$fecha_reporte_web>="2022-01-01") # data del 2022
Colombia21=subset(Colombia, Colombia$fecha_reporte_web>="2021-01-01" & Colombia$fecha_reporte_web<"2022-01-01") # data de 2021
Colombia20=subset(Colombia, Colombia$fecha_reporte_web>="2020-01-01" & Colombia$fecha_reporte_web<"2021-01-01") # data de 2020

Valle22=subset(Colombia22, departamento=="76") # data del valle del cauca de 2022
Cali22= subset(Colombia22, ciudad_municipio_nom=="CALI") # data de cali de 2022

table(Colombia22$estado)
table(Colombia21$estado)
table(Colombia20$estado)

summarytools::freq(Colombia22$estado, cumul = F)
summarytools::freq(Colombia21$estado, cumul = F)
summarytools::freq(Colombia20$estado, cumul = F)
summarytools::descr(Colombia22$edad)

saveRDS(Colombia, file = "data/Colombia.RDS")  # guardar base con modificaciones
#-----------------------------------------------------














