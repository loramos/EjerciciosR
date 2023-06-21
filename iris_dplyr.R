iris

datasets::iris

head(iris)
iris = as_tibble(iris)

iris %>% 
  select(Petal.Width, Species) -> iris2

head(iris2)

iris %>% 
  filter(Sepal.Length > 5) %>% head()

iris %>% 
  filter(Sepal.Width < 8.3 & Species == 'virginica' )
  

iris %>% 
  mutate(Sepal = round((Sepal.Length / Sepal.Width) ,2)) -> iris

head(iris)


iris %>% 
  group_by(Species) %>% 
  summarise(media_sepalo = mean(Sepal.Width)) %>% 
  arrange(-(media_sepalo))
