# =========================================================
# Proyecto: ENAHO 2024 - Procesamiento de datos sobre el perfil
# sociodemográfico de hogares beneficiarios de programas de
# asistencia alimentaria en el Perú durante el año 2024
# Propósito: Crear sistema de carpetas y enlazar con GitHub
# Autor: Antonella Ramos
# Fecha: 19/06/2026
# =========================================================

# =========================================================
# 1. Crear carpetas ---------------------------------------
# =========================================================
-----------------------------------

dir.create("01_Data")
dir.create("01_Data/01_Originales")
dir.create("01_Data/02_Procesados")

dir.create("02_Scripts")

dir.create("03_Outputs")

dir.create("04_Docs")

# =========================================================
# 2. Enlace con GitHub ------------------------------------
# =========================================================

usethis::use_git()
usethis::use_github()