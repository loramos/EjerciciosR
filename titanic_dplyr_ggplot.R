#1
install.packages('titanic')
library(dplyr)
library(titanic)
library(stringr)
library(ggplot2)


#titanic = read.csv("ejercicios/Datos/titanic_train.csv")

?titanic
# 2
titanic_train %>% head()




titanic = titanic_train



titanic %>% names() 

#[1] "PassengerId" "Pclass"      "Name"        "Sex"         "Age"         "SibSp"       "Parch"       "Ticket"     
#[9] "Fare"        "Cabin"       "Embarked"    "Survived" 

titanic %>% head()

titanic %>% filter(is.na(Survived)) %>% count()

## Filtra el dataset para los viajeros que sobrevivieron y haz un conteo
titanic %>% count()
titanic %>% filter(Survived==1) %>% count()
titanic %>% filter(Survived==1) %>% summarise(n=n())


# crea un dataframe con los nombres y la edad

nombres_edad <- titanic %>% select(Name,Age) #%>% as_tibble()

titanic[c("Name","Age")] %>% head()


#selecciona lospasajeros cuyos apellidos empiecen por G

nombres_edad %>% filter(Name %>% str_detect('^G'))

nombres_edad %>% filter(Name %>% substr(1,1)=='G')

nombres_edad %>% filter(startsWith(Name,"G"))

# distribución por sexo
titanic %>% 
  group_by(Sex) %>% 
  #summarise(conteo=n())
count()

#¿Cuál era la edad con mayor frecuencia?
titanic %>% 
  group_by(Age) %>% 
  filter(!is.na(Age)) %>% 
  summarise(conteo=n()) %>%
  #arrange(desc(conteo)) %>% 
  arrange(-conteo) %>% 
  head(1)


# ¿Eran más joven los supervivientes o los fallecidos?

titanic %>% 
  group_by(Survived) %>% 
  summarise(media_edad = mean(Age,na.rm = T))

#Crea una nueva columna que nos diga si el pasajero era mayor o menor de edad

titanic %>% 
  mutate(mayoria_edad = case_when(Age < 18 ~ 'Menor',T ~ 'Mayor')) -> titanic
head(titanic %>% filter(Age > 18))

titanic %>% 
  mutate(mayoria_edad = case_when(Age < 18 ~ 'Menor', Age >= 18 ~ 'Mayor')) 

# ¿Quiénes fueron los 10 pasajeros que más pagaron por el billete?

titanic %>% 
  arrange(desc(Fare)) %>% 
  select(Name, Fare,Sex,Survived) %>% 
  head(10)

# grafico por sexo y clase

ggplot(titanic) +
  geom_count(mapping = aes(x = Sex, y = Pclass )) +
  ggtitle("Total de pasajeros por sexo y clase")


#Supervivientes por clase
ggplot(titanic) +
  geom_bar(mapping = aes(x = Survived, fill = factor(Pclass))) +
  ggtitle("Gráfico de supervivencia")

#Supervivencia por precio del billete
ggplot(titanic) +
  geom_jitter(mapping = aes(x = Fare, y = Sex, color = factor(Survived))) +
  ggtitle("Muertos y vivos por precio del ticket y sexo")

# gráfico de supervivencia por sexo y clase
ggplot(titanic %>% filter(!is.na(Survived))) +
  geom_jitter(mapping = aes(x = Sex, y = Pclass, color = factor (Survived))) + 
  ggtitle("Vivos y muertos por clase y sexo")




