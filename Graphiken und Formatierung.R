##Daten3<-data(anscombe) ist schon R objekt, darum darf man das so nicht machen
str(Daten3)
str(anscombe)
Daten3<-anscombe
detach
attach(Daten3)
plot(y1~x1, data=anscombe, xlab=expression(italic(x[1])),ylab=expression(y[1]))
plot(x1,y1,xlab=quote(italic("x")),ylab="y")
## quote oder expression gehen um spezifische Texte zu machen

#Horizontale Labels
plot(y1~x1, data=anscombe, xlab=expression(italic(x)[1]),ylab=expression(italic(y)[1]),las=1, bty="l", xlim=c(0,20),ylim=c(0,15),pch="x")
abline(lm(y1~x1,data=anscombe))

Graphiken<-par(mfrow=c(2,2))
plot(y1~x1, data=anscombe, xlab=expression(italic(x)[1]),ylab=expression(italic(y)[1]),las=1, bty="l", xlim=c(0,20),ylim=c(0,15),pch="x")
abline(lm(y1~x1,data=anscombe))

plot(y2~x2, data=anscombe, xlab=expression(italic(x)[1]),ylab=expression(italic(y)[1]),las=1, bty="l", xlim=c(0,20),ylim=c(0,15),pch="x")
abline(lm(y2~x2,data=anscombe))

plot(y3~x3, data=anscombe, xlab=expression(italic(x)[1]),ylab=expression(italic(y)[1]),las=1, bty="l", xlim=c(0,20),ylim=c(0,15),pch="x")
abline(lm(y3~x3,data=anscombe))

plot(y4~x4, data=anscombe, xlab=expression(italic(x)[1]),ylab=expression(italic(y)[1]),las=1, bty="l", xlim=c(0,20),ylim=c(0,15),pch="x")
abline(lm(y4~x4,data=anscombe))

##kopieren in pdf
dev.copy2pdf(file="Graphiken.pdf")
