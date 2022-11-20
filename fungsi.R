penguins %>%
  select(-species)

penguins %>%
  rename(island_new=island) #rename nama kolom (namabarunya=namalama)

rename_with(penguins,toupper)#toupper=gede,tolower=kecil

clean_names(penguins)
