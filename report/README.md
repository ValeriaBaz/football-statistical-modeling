# Informe del análisis estadístico

## Descripción general

Esta carpeta contiene el informe metodológico de un proyecto cuyo objetivo es estudiar los factores asociados a la probabilidad de que el Real Madrid marque dos o más goles en un partido de La Liga.

## Objetivo del estudio

El objetivo fue desarrollar un modelo estadístico que explicara la probabilidad de que el Real Madrid marcara dos o más goles en un partido de La Liga, a partir de diferentes métricas del rendimiento del equipo, como el número de disparos, la posesión y otras variables relacionadas con el juego.

## Metodología

El análisis se llevó a cabo mediante **IBM SPSS Statistics** e incluyó los siguientes procedimientos:

- Análisis descriptivo de las variables.
- Análisis de correlaciones y evaluación de la multicolinealidad.
- Ajuste de un modelo de regresión logística binaria.
- Selección progresiva de variables.
- Evaluación de posibles efectos de interacción.
- Evaluación de los supuestos y del ajuste del modelo.
- Interpretación de los coeficientes y de la capacidad de clasificación.

La variable dependiente, `goles_dico`, se codificó como `1` cuando el Real Madrid marcó dos o más goles y como `0` cuando marcó menos de dos goles.

## Principales resultados

El modelo logístico final incluyó seis predictores: número de disparos, distancia media de los disparos, penaltis a favor, centros al área en su versión categórica, tarjetas rojas e interacción entre el número de disparos y la posesión.

| Indicador del modelo | Resultado |
|---|---:|
| Prueba de razón de verosimilitudes | χ²(6) = 72,741; *p* < 0,001 |
| R² de Cox y Snell | 0,273 |
| R² de Nagelkerke | 0,371 |
| Porcentaje global de clasificación correcta | 69,7 % |
| Clasificación correcta: menos de dos goles | 51,7 % |
| Clasificación correcta: dos o más goles | 80,9 % |

Estos resultados corresponden al modelo ajustado sobre la muestra analizada. No demuestran relaciones causales ni garantizan el mismo rendimiento al aplicarlo a partidos nuevos.

## Informe completo

El informe metodológico completo se encuentra disponible en esta carpeta.

**Nombre de archivo :** `informe_regresion_logistica_futbol.pdf`

## Limitaciones

- El análisis se centra exclusivamente en partidos del Real Madrid en La Liga durante el periodo estudiado.
- Los resultados describen asociaciones estadísticas y no permiten establecer relaciones causales.
- El porcentaje de clasificación obtenido no demuestra, por sí solo, que el modelo generalice adecuadamente a partidos no analizados.
- El proyecto tiene una finalidad de modelización estadística y no constituye un sistema de apuestas deportivas validado.
