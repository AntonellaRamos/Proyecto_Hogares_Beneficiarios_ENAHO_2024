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