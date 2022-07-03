palette(heat.colors(15))
hist(airmiles,freq = T,col = 15:1)
hist(airmiles,freq = F,col = 15:1)

a <-BJsales[c(1:50)]
b <-BJsales[c(51:100)]
c <-BJsales[c(101:150)]
plot(a ,col = "red" , type="l",xlab="apple",ylab="banana")
lines(b , col = "green", type = "l")
lines(c , col = "blue" , type="l")
plot(a, col = "red" , type="p",xlab="apple",ylab="banana")
lines(b , col = "green", type = "p")
lines(b , col = "green", type = "p")

plot(a,cex=3,col=1:15,type="l",lwd=1,lty=1,xlab="A",ylab="B",ylim=c(190,270))
lines(b , col = "green", type = "l")
lines(c , col = "blue" , type="l")
