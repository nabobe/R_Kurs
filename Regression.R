A1<-lm(punkte~vorwissen.st+lernzeit.st)
A2<-lm(punkte~vorwissen+lernzeit)
A3<-lm(punkte~vorwissen+lernzeit+vorwissen*lernzeit)

summary(A3)


anova(A2,A3)

A2.res<-residuals(A2)
A3.res<-residuals(A3)

shapiro.test(A2.res)
shapiro.test(A3.res)

hist(A2.res)
hist(A3.res)

par(mfrow=c(1,2))

distr<-read.csv("distributions.csv")
density(distr)

