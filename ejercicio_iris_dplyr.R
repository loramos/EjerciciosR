library(dplyr)

data(iris)

iris %>% as_tibble() -> iris

iris %>% head()


iris %>% 
  select(Petal.Width,Species) %>% head()

iris %>% 
  filter(Sepal.Length > 5) %>% head()

iris %>% 
  filter(Sepal.Width < 8.3) %>% 
  filter(Species == 'virginica') %>% head()

# version con AND

iris %>% 
  filter(Sepal.Width < 8.3 & Species == 'virginica') %>% head()


iris %>% 
  mutate(Sepal = Sepal.Length / Sepal.Width) -> iris

iris %>% head()


iris %>% 
  group_by(Species) %>% 
  summarise(media = mean(Sepal.Width,na.rm = T))
