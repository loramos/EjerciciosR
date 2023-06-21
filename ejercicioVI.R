#Crea una dataframe con los siguientes valores: 
#Nombre = Lucía, Antonio, Juan, María y Pedro 
#Edad = 23, 34, 56, 65 y 22
#Suscrito = T, F, F, T y F
Nombre <- c("Lucia","Antonio","Juan","Maria","Pedro")
Edad <- c(23,34,56,65,22)
Suscrito <- c(T,F,F,T,F)
df <- data.frame(Nombre,Edad,Suscrito)



rm(Nombre)
rm(Edad)
rm(Suscrito)

#Añade el campo id con los números del 1 al 5
df$id <- 1:5



#Añade el campo id con los números del 1 al 5 en la posición 1

install.packages("tibble")

library("tibble")

df = add_column(df, id = 1:5, .before = 1)






#Selecciona los registros cuya edad es mayor de 25 años
condicion = df$Edad > 25

df[condicion,]

df[df$Edad > 25,]


#Selecciona los registros mayores de 25 años y que están suscritos 

df[df$Edad > 25 & df$Suscrito,]


data(iris)






