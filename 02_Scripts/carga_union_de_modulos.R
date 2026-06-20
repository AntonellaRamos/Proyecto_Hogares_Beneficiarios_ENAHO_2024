# =========================================================
# Proyecto: ENAHO 2024 - Procesamiento de datos sobre hogares
# beneficiarios de programas de asistencia alimentaria en Perú
# Script: carga_union_de_modulos.R
# Propósito: Importar, limpiar y realizar merge de los módulos
# 200 y 700, y guardar en formato eficiente
# Fuente: INEI - ENAHO 2024
# Autor: Antonella Ramos
# Fecha: 19/06/2026
# =========================================================

# 1. Cargar librerías ----
library(tidyverse)
library(readr)
library(arrow)
renv::snapshot()

# 2. Importar datos ----

m200 <- read.csv(
  "01_Data/01_Originales/enaho_m200_2024.csv",
  fileEncoding = "latin1"
)

m700 <- read.csv(
  "01_Data/01_Originales/enaho_m700_2024.csv",
  fileEncoding = "latin1"
)

# 3. Unión de bases ----

# Llave de merge a nivel hogar
keys_hogar <- c("CONGLOME", "VIVIENDA", "HOGAR")

# Unión de Módulo 200 (características de los miembros del hogar)
# con Módulo 700 (participación en programas sociales)

enaho_2024 <- m200 %>%
  left_join(m700, by = keys_hogar)