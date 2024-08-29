library(sf)
library(mapview)

df <- read_csv("https://raw.githubusercontent.com/iminoli/R_Course/main/Curso.R.2024/Practicos/df2_tp3_coordenadas.csv")
df
df_sf <- st_as_sf(df, coords = c("lon", "lat"), crs = 4326)
mapview(df_sf)
