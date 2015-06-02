#t-test
vorher<-c(3,9,1,7,5,6,4,8,2,10)
nachher<-c(6,12,4,10,8,7,5,9,3,11)
mean(vorher)
mean(nachher)

t.test(nachher,vorher,alternative="greater",paired=TRUE)

Geschlecht<-c(1,2,1,1,2,1,2,2,1,1)
Geschlecht2<-factor(c("m","f","m","f","m","f","m","f","m","f"))

ergebnis<-nachher
gruppenvergleich<-t.test(ergebnis~Geschlecht2,alternative="two.sided",paired=FALSE)
boxplot(ergebnis~Geschlecht2,alternative="two.sided",paired=FALSE,col=c("blue","pink"))


