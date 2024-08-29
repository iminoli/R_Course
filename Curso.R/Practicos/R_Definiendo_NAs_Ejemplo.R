library(tidyverse)

# Leo el csv
df0 <- read_csv(
  "D:\\home\\ignacio\\Documents\\IBS\\Curso.R.Basico\\2024\\Clases.Practicas\\csv_missing_numbers.csv"
  )

# Exploro el csv
df0

####
# Intento hacer operaciones en los numeros del csv

# Leo el csv
df1 <- read_csv(
  "D:\\home\\ignacio\\Documents\\IBS\\Curso.R.Basico\\2024\\Clases.Practicas\\csv_missing_numbers.csv"
  ) %>% 
  slice(1:2) %>% 
  mutate(new_numero = numero * 2)

# Exploro el csv
df1


####
# Solucion 

# Leo el csv
df1 <- read_csv(
  "D:\\home\\ignacio\\Documents\\IBS\\Curso.R.Basico\\2024\\Clases.Practicas\\csv_missing_numbers.csv",
  na = c('NA', 'NULL', -9999)
  ) %>%
  mutate(new_numero = numero * 2)

# Exploro el csv
df1
