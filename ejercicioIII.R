z <- 1:10
z

seq(1,10)

z =  z + 2 
z



y <- seq(from = 2, to = 30, by = 2)
y

#con el modulo
seq(1,30)[seq(1,30)%%2==0]

length(y)



y[c(1,15)]

y[c(T,F,F,F,F,F,F,F,F,F,F,F,F,F,T)]


#opcion más robusta
y[c(1,length(y))] 

y[c(1,length(y))]



y[1] <- 99 
y

coincidentes <- sort(intersect(z,y),decreasing = T)


sort(intersect(z,y),decreasing = T)


#install.packages("dplyr")



library(dplyr)



sort(intersect(z,y),decreasing = T)


###########

z %>% 
  intersect(y) %>% 
  sort(decreasing = T)  

z %>% 
  intersect(y) %>% 
  sort()  

################



# ejmplo de leaflet

#install.packages("leaflet")

library(leaflet)

leaflet() %>%
   addTiles() %>%  # Add default OpenStreetMap map tiles
   addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R") %>% 
  addMarkers(lng=3, lat=42)


z
y

sort(intersect(z,y),decreasing = T)

 z %>% 
  intersect(y) %>%
  sort(decreasing = T) 

 z %>% 
   intersect(y) %>%
   sort(decreasing = T) -> x
 
 iris %>% 
   select(Petal.Length, Species) %>% 
   filter(Petal.Length >4 ) -> x
 
 x %>% 
   mutate(columna = Petal.Length * 2) %>% 
   left_join(
     otro_dato %>% 
       select() %>% 
       filter
     
   )

 
 


   