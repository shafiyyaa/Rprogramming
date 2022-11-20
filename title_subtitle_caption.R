#judul plot
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species)) +
  labs(title = "palmer penguins : Body mass vs. Flipper length")
ggsave("palmer penguins.png")

#sub judul
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species)) +
  labs(title = "palmer penguins : Body mass vs. flipper length",subtitle = "Sample of 3 species")

#caption
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species)) +
  labs(title = "palmer penguins : Body mass vs. flipper length",subtitle = "Sample of 3 species",
       caption="Data collected by Dr.Kristen Gorman")

#anotasi
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species)) +
  labs(title = "palmer penguins : Body mass vs. flipper length",subtitle = "Sample of 3 species",
       caption="Data collected by Dr.Kristen Gorman") +
  annotate("text", x=220,y=3500,label="The Gento are the largest", color="purple",
           fontface="bold",size=4.5,angle=25)

#untk mudahin buat variabel
gg <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color=species)) +
  labs(title = "palmer penguins : Body mass vs. flipper length",subtitle = "Sample of 3 species",
       caption="Data collected by Dr.Kristen Gorman")

gg + annotate("text", x=220,y=3500,label="The Gento are the largest", color="purple",
              fontface="bold",size=4.5,angle=25)
