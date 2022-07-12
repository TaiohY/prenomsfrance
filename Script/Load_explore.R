# Load_explore 
# Taioh Y 11.07.22

# Charger la base de données et explorer son contenu

# Packages ####
library(tidyverse)

# Database ####
DB_dpt2020 <- read.csv(file="./BDD/dpt2020.csv", sep = ";")

# Objets ####
tbl_dpt2020 <- DB_dpt2020 %>%
  mutate(sexe = as.factor(sexe),
         preusuel = as.factor(preusuel),
         annais = as.numeric(annais),
         dpt = as.factor(dpt),
         nombre = as.numeric(nombre))

# Scripts ####

names(tbl_dpt2020)
length(levels(tbl_dpt2020$preusuel))
