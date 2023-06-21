#Crea una lista con valores numéricos, letras y lógicos 
lista <- list(10:15,c("Hola","Qué tal?","Adios"), c(T,F,F,T))
lista
#Comprueba su tipo 
class(lista)
#Da un nombre a cada uno de los elementos de las lista, por ejemplo: números, letras y lógicos
names(lista) <- c("numeros","letras","logicos")



lista
# Haz una selección por nombre de elementos ○ 
lista$letras
lista[["letras"]]
lista[[2]]
# Quítale los nombres a la lista
lista <- unname(lista)
lista


# Convierte la lista en un vector y comprueba lo que ha pasado 
vector <- unlist(lista)
vector

