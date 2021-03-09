# project of Maths for data science 
### 1th partie - Data exploration 
# the dataset is seatBelts 
data("Seatbelts")
force(Seatbelts)
class(Seatbelts)
# we can see that it is an mts file, so we have to convert it into a dataframe 
Seatbelts.df<- as.data.frame(Seatbelts)
View(Seatbelts.df)
# the time and the years are not indicated, it is necessary to make it appear 
Seatbelts.df$time <- time(Seatbelts)
Seatbelts.df$year <- floor(Seatbelts.df$time)
Seatbelts.df$Month <- round(12*(Seatbelts.df$time - Seatbelts.df$year))
# introduction of the dataset : 
help("Seatbelts")
#the number of accidents per month from January 1969 to December 1969.  
dim(Seatbelts.df)
# It display the dimension of the dataset showing the number of inscription (192) 
# and the number of categories (8)name (iris)
head(Seatbelts.df)
str(Seatbelts.df)
names(Seatbelts.df)
summary(Seatbelts.df)
Seatbelts.df$DriversKilled
Seatbelts.df$drivers
Seatbelts.df$front
Seatbelts.df$rear
Seatbelts.df$kms
attach(Seatbelts.df)
tapply(Seatbelts.df$DriversKilled,Seatbelts.df$front,summary)
tapply(Seatbelts.df$DriversKilled,Seatbelts.df$rear,summary)
tapply(Seatbelts.df$DriversKilled,Seatbelts.df$kms,summary)
tapply(Seatbelts.df$DriversKilled,Seatbelts.df$PetrolPrice,summary)
tapply(Seatbelts.df$DriversKilled,Seatbelts.df$law,summary)
#on constate que le nombre de personne morte est plus eleve quand le conducteur ne respecte pas la loi
tapply(Seatbelts.df$rear,Seatbelts.df$law,summary)
tapply(Seatbelts.df$front,Seatbelts.df$law,summary)
tapply(Seatbelts.df$VanKilled,Seatbelts.df$law,summary)
tapply(Seatbelts.df$DriversKilled,Seatbelts.df$law)

#graphique 
#part 1 : generale information 
plot(Seatbelts.df$year, Seatbelts.df$drivers, type="line")


hist(Seatbelts.df$PetrolPrice, 
     
     breaks = 10, 
     
     freq = F, 
     
     col = "red", 
     
     main = "Distribution  of petrol price") 

curve(dnorm(x, mean = mean(Seatbelts.df$PetrolPrice), sd = sd(Seatbelts.df$PetrolPrice)), 
      
      col = "green", 
      
      lwd = 3, 
      
      add = T) 

lines(density(Seatbelts.df$PetrolPrice),col = "blue", lwd = 3) 

rug(Seatbelts.df$PetrolPrice, lwd = 3, col = "grey") 




hist(Seatbelts.df$kms, 
     
     breaks = 10, 
     
     freq = F, 
     
     col = "red", 
     
     main = "Histogram of kms ") 

curve(dnorm(x, mean = mean(Seatbelts.df$kms), sd = sd(Seatbelts.df$kms)), 
      
      col = "green", 
      
      lwd = 3, 
      
      add = T) 

lines(density(Seatbelts.df$kms),col = "blue", lwd = 3) 

rug(Seatbelts.df$kms, lwd = 3, col = "grey") 



pie(table(Seatbelts.df$law))

# part 2 : death information 
hist(Seatbelts.df$DriversKilled, 
     
     breaks = 10, 
     
     freq = F, 
     
     col = "red", 
     
     main = "Number of drivers killed") 

curve(dnorm(x, mean = mean(Seatbelts.df$DriversKilled), sd = sd(Seatbelts.df$DriversKilled)), 
      
      col = "green", 
      
      lwd = 3, 
      
      add = T) 

lines(density(Seatbelts.df$DriversKilled),col = "blue", lwd = 3) 

rug(Seatbelts.df$DriversKilled, lwd = 3, col = "grey") 


hist(Seatbelts.df$front, 
     
     breaks = 10, 
     
     freq = F, 
     
     col = "red", 
     
     main = "Number of front killed") 

curve(dnorm(x, mean = mean(Seatbelts.df$front), sd = sd(Seatbelts.df$front)), 
      
      col = "green", 
      
      lwd = 3, 
      
      add = T) 

lines(density(Seatbelts.df$front),col = "blue", lwd = 3) 

rug(Seatbelts.df$front, lwd = 3, col = "grey") 





hist(Seatbelts.df$rear, 
     
     breaks = 10, 
     
     freq = F, 
     
     col = "red", 
     
     main = "Number of rear killed") 

curve(dnorm(x, mean = mean(Seatbelts.df$rear), sd = sd(Seatbelts.df$rear)), 
      
      col = "green", 
      
      lwd = 3, 
      
      add = T) 

lines(density(Seatbelts.df$rear),col = "blue", lwd = 3) 

rug(Seatbelts.df$rear, lwd = 3, col = "grey") 



plot((Seatbelts.df$rear)/Seatbelts.df$drivers, Seatbelts.df$Month, type="p")
plot((Seatbelts.df$front)/Seatbelts.df$drivers, Seatbelts.df$Month, type="p")
plot((Seatbelts.df$DriversKilled)/Seatbelts.df$drivers, Seatbelts.df$Month, type="p")
plot((Seatbelts.df$VanKilled)/Seatbelts.df$drivers, Seatbelts.df$Month, type="p")

# part 3 : crossing of parameters 
plot((Seatbelts.df$DriversKilled)/Seatbelts.df$drivers, Seatbelts.df$kms, type="p")


plot((Seatbelts.df$front)/Seatbelts.df$drivers, Seatbelts.df$kms, type="p")


plot((Seatbelts.df$rear)/Seatbelts.df$drivers, Seatbelts.df$kms, type="p")

boxplot(Seatbelts.df$DriversKilled~Seatbelts.df$law,names=c("before","after"),col=c("blue","pink"),main="before and after the law")
plot(Seatbelts.df$time, Seatbelts.df$kms, type="line") 

# statistical study 
Law0Sub <-filter(Seatbelts.df,Seatbelts.df$law ==0)
Law1Sub <- filter(Seatbelts.df,Seatbelts.df$law!=0)
summary(Law0Sub)
sd(Seatbelts.df$DriversKilled,na.rm = FALSE)
sd(Seatbelts.df$rear,na.rm = FALSE)
