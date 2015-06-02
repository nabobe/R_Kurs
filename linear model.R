dat2<-read.csv("lerndaten.csv")
str(dat2)
nrow(dat2)
ncol(dat2)
dim(dat2)
head(dat2)
tail(dat2)
summary(dat2)
dat2[5,]
cor(dat2,use="complete.obs") #oder auch pairwise
attach(dat2)
Modell<-lm(punkte~lernzeit+vorwissen)
summary(Modell)
plot(Modell)


ModellredModell<-lm(punkte~vorwissen)
anova(redModell,Modell)

pairs.panels(dat2)

B<-read.spss("lerndaten.sav")

corr.test(dat2)

