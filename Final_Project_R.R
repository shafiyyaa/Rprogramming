install.packages('janitor')
library(janitor)
library(tidyverse)
flavors_df <- read_csv("flavors_of_cacao.csv")

head(flavors_df)

flavors_df <- flavors_df %>% clean_names()
head(flavors_df)

flavors_df %>% rename(brand = company_maker_if_known)

trimmed_flavors_df <- flavors_df %>% select(rating,cocoa_percent,company_location)
head(trimmed_flavors_df)

trimmed_flavors_df %>% summarize(mean(rating))

best_trimmed_flavors_df <- trimmed_flavors_df %>% filter(cocoa_percent >='80%', rating >= 3.75)
head(best_trimmed_flavors_df)

ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping=aes(x = company_location))

ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping=aes(x = cocoa_percent)) +
  facet_wrap(~cocoa_percent)