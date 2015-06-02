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

oneway.test(weight~diet,Hühner)
tapply(Hühner$weight, Hühner$diet,mean)
tapply(Hühner$weight, Hühner$diet,sd)

