# Descripción de los datos

## Descripción general

Esta carpeta contiene información sobre los datos utilizados en el análisis estadístico de los factores asociados a que el Real Madrid marque dos o más goles en un partido de La Liga.

El conjunto de datos comprende **228 partidos** disputados por el Real Madrid durante las temporadas comprendidas entre 2017 y 2022. Cada fila representa un partido.

## Estructura del conjunto de datos

La base de datos incluye:

- **228 observaciones:** partidos de La Liga disputados por el Real Madrid.
- **14 variables independientes:** métricas relacionadas con el juego que se utilizaron como posibles variables explicativas.
- **1 variable dependiente:** número de goles marcados por el Real Madrid, recodificado como una variable dicotómica para el análisis de regresión logística.

## Variable dependiente

La variable `goles_dico` se define de la siguiente manera:

| Valor | Definición |
|---|---|
| `0` | El Real Madrid marcó menos de dos goles (0 o 1). |
| `1` | El Real Madrid marcó dos o más goles. |

La variable original, que recogía el número de goles marcados, se recodificó en una variable binaria. En el informe se justifica esta decisión, entre otros motivos, por una media de 1,97 goles por partido.

## Análisis estadístico

Los datos se analizaron mediante **IBM SPSS Statistics**. El procedimiento incluyó:

- Análisis descriptivo de las variables.
- Análisis de correlaciones.
- Evaluación de la multicolinealidad.
- Ajuste de un modelo de regresión logística binaria.
- Selección progresiva de variables.
- Evaluación de posibles interacciones entre predictores.
- Evaluación de los supuestos y del ajuste del modelo final.

El modelo final incluyó los siguientes predictores:

- Número de disparos.
- Distancia media de los disparos.
- Penaltis a favor.
- Centros al área, en su versión categórica.
- Tarjetas rojas.
- Interacción entre el número de disparos y la posesión.

## Fuente y obtención de los datos

Los datos se obtuvieron mediante técnicas de scraping a partir de [FBref](https://fbref.com/), una plataforma de estadísticas de fútbol.

La base de datos recoge información de 228 partidos disputados por el Real Madrid en La Liga durante las temporadas comprendidas entre 2017 y 2022. Las variables recopiladas describen diferentes métricas del rendimiento del equipo y se utilizaron para estudiar los factores asociados a la probabilidad de marcar dos o más goles en un partido.

### Consideraciones sobre el uso de los datos

Se recomienda consultar la [web oficial de FBref](https://fbref.com/) para acceder a las estadísticas originales.

## Consideraciones y limitaciones

Este conjunto de datos se utilizó en un trabajo de modelización estadística. El análisis estudia la asociación entre determinadas métricas del juego y la probabilidad de que el Real Madrid marque dos o más goles en un partido.

Los resultados no demuestran relaciones causales ni constituyen una validación de un modelo destinado a apuestas deportivas.
