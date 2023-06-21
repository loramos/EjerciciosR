#Crea tres vectores numéricos de cinco elementos
x <- 1:5
y <- rep(1,5)
z <- c(2,4,3,7,10)
x
y
z

#Úsalos para crear una matriz
mr <- rbind(x,y,z)
mc <- cbind(x,y,z)

mr
mc


#otra forma de crearlos
matrix(c(x,y,z),3,5,byrow = T)
matrix(c(x,y,z),5,3,byrow = F)

matrix(c(x,y,z),byrow = T)
matrix(c(x,y,z))

#Comprueba su tipo y dimensiones 
class(mr)
dim(mr)
dim(mc)


#Súmale uno
mr <- mr + 1

#Comprueba el resultado 
mr
#Selecciona uno o varios de sus elementos 
mr[c(1,2),c(1,2)]

mr[1,]

mr[1,c(1,3)]

mr[c(1,3), c(2,4)]

mr[1:2,c(2,4)]

