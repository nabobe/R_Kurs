Hühner<-read.csv2("chickweight.csv")
str(Hühner)
table(Hühner)
table(Hühner$diet)
table(Hühner$age)

options(contrasts=c("contr.sum","contr.poly"))
options("contrasts")
str(Hühner)
Hühner$diet<-as.factor(Hühner$diet)
Hühner$age<-as.factor(Hühner$age)
Hühner$id<-as.factor(Hühner$id)

oneway.test(weight~diet,Hühner)
tapply(Hühner$weight, Hühner$diet,mean)
tapply(Hühner$weight, Hühner$diet,sd)

pairwise.t.test(Hühner$weight,Hühner$diet,pool.sd=FALSE)

Hühner2<-Hühner[,3]==20
Hühnersub<-Hühner[Hühner2,]

library(RcmdrMisc)
plotMeans(Hühnersub$weight,Hühnersub$diet,error.bars=c("conf.int"), level=.95,ylim=c(0,300))

Ergebnis<-aov(Hühner$weight~Hühner$diet*age + Error(id/age),data=Hühner)

interaction.plot(Hühner$age,Hühner$diet,Hühner$weight)
d