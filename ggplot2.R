library(ggplot2)
library("palmerpenguins")
data("penguins")

#bisa pakai syntax dibawah tinggal menyesuaikan datanya  aja
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,size=year))
ggplot(data = penguins)

#untuk menambah warna 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species))

#untuk mengubah bentuk sesuai dengan spesies
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,shape=species))

#warna+bentuk
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species,shape=species))

#warna+bentuk+size
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species,shape=species,size=species))

#kyk gradasi,semakin jelas warnannya semakin banyak datanya
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,alpha=species))

#untuk membuat warna tertentu
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g),color="blue")

#Grafik garis lurus cocok untuk menujukan trend
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm,y = body_mass_g))

#menggabungkan dua grafik
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm,y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g))

#grafik yg membedakan setiap species
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm,y = body_mass_g,linetype=species))

#Grafik Bar,tidak usah menggunakan Y karena sudah akan otomatis di hitung
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut,fill=cut))#fill=warna sak dalam2nya

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut,fill=clarity))