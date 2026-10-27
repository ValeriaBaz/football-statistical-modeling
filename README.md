# football-statistical-modeling

# Análisis del rendimiento ofensivo del Real Madrid

## Descripción del proyecto

Este proyecto analiza los factores asociados a la probabilidad de que el Real Madrid marque dos o más goles en un partido de La Liga, mediante un modelo de regresión logística binaria desarrollado en **IBM SPSS Statistics**.

El estudio parte de datos de 228 partidos entre las temporadas 2017 y 2022 y examina la relación entre distintas métricas del juego y el rendimiento ofensivo del equipo.

## Objetivos

- Analizar descriptivamente las variables relacionadas con el rendimiento en los partidos.
- Explorar las correlaciones entre predictores e identificar posibles problemas de colinealidad.
- Construir y depurar un modelo de regresión logística binaria.
- Evaluar posibles interacciones entre variables.
- Examinar los supuestos del modelo e interpretar los coeficientes y las *odds ratios*.
- Valorar el ajuste global y la capacidad de clasificación del modelo final.

## Metodología

El análisis se realizó en IBM SPSS Statistics y comprendió las siguientes etapas:

1. Preparación de los datos y definición de la variable dependiente dicotómica.
2. Análisis exploratorio y estadísticos descriptivos.
3. Análisis de correlaciones y diagnóstico de colinealidad.
4. Estimación del modelo logístico inicial.
5. Selección progresiva de variables y evaluación de interacciones.
6. Evaluación de supuestos y especificación del modelo final.
7. Interpretación de los resultados y elaboración de conclusiones.

## Resultados principales

El modelo final presentó los siguientes indicadores de ajuste:

| Indicador | Resultado |
|---|---:|
| Partidos analizados | 228 |
| R² de Cox y Snell | 0,273 |
| R² de Nagelkerke | 0,371 |
| Clasificación global correcta | 69,7 % |
| Clasificación correcta de la categoría de dos o más goles | 80,9 % |
| Clasificación correcta de la categoría de menos de dos goles | 51,7 % |

Los resultados muestran que las métricas de rendimiento ofensivo contienen información relevante para explicar la probabilidad del evento estudiado, aunque el modelo no recoge todos los factores que pueden influir en los goles marcados.

## Herramientas y técnicas

- **Software:** IBM SPSS Statistics.
- **Método principal:** regresión logística binaria.
- **Técnicas:** análisis descriptivo, correlaciones, diagnóstico de colinealidad, selección de variables, análisis de interacciones y evaluación del modelo.
- **Interpretación:** coeficientes, *odds ratios*, intervalos de confianza y medidas de ajuste y clasificación.

## Limitaciones

El análisis se basa en una muestra de 228 partidos de un único equipo y periodo temporal. Los resultados describen asociaciones estadísticas dentro de los datos analizados y no deben interpretarse como relaciones causales ni como garantía de rendimiento en partidos futuros.

El rendimiento del modelo debe interpretarse teniendo en cuenta su capacidad de clasificación por categoría y la información disponible en la muestra.


---

*Proyecto de estadística aplicada y modelado mediante SPSS.*
