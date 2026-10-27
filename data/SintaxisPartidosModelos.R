rm(list = ls())

library(dplyr)
library(readr)

### 0. PREPROCESAMIENTO DE LA BASE DE DATOS ###

# Feature_Score <- read_csv("Desktop/Feature_Store_train_2017-2022.csv")
# View(Feature_Score)
# Feature_Score_Reducido <- Feature_Score %>% select(Venue, Poss, Shots_Total, SoT, Dist, Penal_afavor, Pass_Total_Complet, Ast, "1/3", PPA, CrsPA, TI, CK, Tarjeta_amarilla, Tarjeta_roja, Faltas_cometidas, Faltas_recibidas) 
install.packages("haven")
library(haven)
#Feature_Score_Reducido <- Feature_Score_Reducido %>% rename(Pases_tercio = "1/3")
write_sav(Feature_Score_Reducido, "Feature_Score_Reducido.sav")
# 1. Importar la base de datos que vamos a usar (es un .sav de spss)
library(haven)
Feature_Score_Reducido2 <- read_sav("Feature_Score_Reducido2SI.sav")
View(Feature_Score_Reducido2)
# Base de datos como df
df <- read_sav("Feature_Score_Reducido2SI.sav")  
# De la base de datos filtrar solo las estadísticas del Madrid
df_madrid <- Feature_Score_Reducido2SI[39:76, ]  # Extraer solo esas filas
View(df_madrid)
# Eliminar la columna del nombre del equipo:
df_madrid <- df_madrid[,-18]  # Elimina la columna
View(df_madrid)
# Convertimos este último dataset con las estadisticas solo del madrid en un .csv
write.csv(df_madrid, file = "df_madrid.csv", row.names = FALSE)
# Revisamos nuestros datos:
head(df_madrid)
str(df_madrid)


df_madridSINAST <- df_madrid[,-8]
df_madridSINAST
write.csv(df_madridSINAST, file = "df_madridSINAST.csv", row.names = FALSE, fileEncoding = "UTF-8")
# Convertimos este último dataset con las estadisticas solo del madrid en un .csv
write.csv(df_madridSINAST, file = "df_madridSINAST.csv", row.names = FALSE)


library(haven)
write_sav(df_madridSINAST, "df_madridSINAST.sav")



modelo_SINAST <- glm(formula = GF ~ Poss + Shots_Total + SoT + Dist + Penal_afavor +
                         Pass_Total_Complet + Pases_tercio + PPA + CrsPA +
                         TI + CK + Tarjeta_amarilla + Tarjeta_roja +
                         Faltas_cometidas + Faltas_recibidas,
                       data = df_madridSINAST,
                       family = poisson(link = "log"))

summary(modelo_SINAST)


step(glm(GF ~ ., data = df_madridSINAST, family = poisson), direction = "both")


library(car)
vif(modelo_SINAST)








#### 1. BASE DE DATOS UTILIZADA:
library(readr)
df_madrid <- read_csv("
                      /FUTB/df_madrid.csv")
View(df_madrid)
                                                                                 

### PRUEBA RAZÓN DE VEROSIMILITUDES ###

# DEFINIR MODELO NULO (SOLO CON INTERCEPTO)
modelo_nulo <- glm(formula = GF ~ 1,
                   data = df_madrid,
                   family = poisson(link = "log"))

# DEFINIR MODELO COMPLETO (TODAS LAS VARIABLES INDEPENDIENTES)

modelo_completo <- glm(formula = GF ~ Poss + Shots_Total + SoT + Dist + Penal_afavor +
                         Pass_Total_Complet + Ast + Pases_tercio + PPA + CrsPA +
                         TI + CK + Tarjeta_amarilla + Tarjeta_roja +
                         Faltas_cometidas + Faltas_recibidas + Venue,
                       data = df_madrid,
                       family = poisson(link = "log"))

summary(modelo_completo)

# PRUEBA RAZÓN DE VEROSIMILITUDES
anova(modelo_nulo, modelo_completo, test = "Chisq")