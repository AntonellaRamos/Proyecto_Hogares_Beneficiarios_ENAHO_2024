# Análisis del perfil sociodemográfico de hogares beneficiarios de programas de asistencia alimentaria utilizando datos de la ENAHO

## Descripción del proyecto
ste repositorio incluye el código y el flujo de trabajo completo del procesamiento de datos sobre hogares beneficiarios de programas de asistencia alimentaria en Perú.
Se utilizan datos de la Encuesta Nacional de Hogares (ENAHO) del año 2024 trabajado integramente en R.

El proyecto explora el perfil sociodemográfico de los hogares a partir de las siguientes dimensiones:
- **Demográficas**: Características de los miembros del hogar, nivel educativo, edad, sexo.
- **Programas sociales**: Participación en programas de asistencia alimentaria (Módulo 700).

## Programas y librerías utilizadas
El proyecto está desarrollado utilizando la versión 4.5.3 de **R**, con las siguientes librerías:
- `tidyverse`: para el procesamiento y gráficos (dplyr y ggplot2)
- `arrow`: exportación e importación de BD en formato parquet
- `readr`: importación eficiente de archivos de texto delimitados

La versión de todas las librerías se controla utilizando renv.

## Estructura del directorio
El directorio se organiza a través de la siguiente estructura de carpetas:

```
Proyecto_Hogares_Beneficiarios_ENAHO_2024/
├── 01_Data/ 
│   ├── 01_Originales/ # Módulos originales de la ENAHO en formato .csv
│   │   ├── enaho_m200_2024.csv # Base original descargada de la ENAHO 2024 del módulo 200
│   │   └── enaho_m700_2024.csv # Base original descargada de la ENAHO 2024 del módulo 700
│   └── 02_Procesados/ # Bases maestras procesadas en formato .parquet (Output de script `carga_union_de_modulos.R`)
│       └── enaho_2024_v1.parquet 
├── 02_Scripts/
│   └── carga_union_de_modulos.R # Carga masiva y cruce (merge) de los módulos 200 y 700
│
├── 03_Outputs/ # Outputs finales 
│
├── 04_Docs/ # Localización de archivos correspondientes al ENAHO 2024 (Ficha tecnica, diccionario de variables, etc.)
│
├── renv/ # Carpeta aislada del entorno local de paquetes 
├── renv.lock # "Cápsula del tiempo": Registro exacto de las versiones de las librerías 
├── .gitignore # Configuración de exclusión para evitar la subida de datos masivos al repositorio
├── Proyecto_Hogares_Beneficiarios_ENAHO_2024 # Archivo de inicialización del entorno R
└── creacion_de_carpetas_y_enlace_github.R  # Script principal: Configuración del entorno, creación de carpetas y enlace con GitHub
```
