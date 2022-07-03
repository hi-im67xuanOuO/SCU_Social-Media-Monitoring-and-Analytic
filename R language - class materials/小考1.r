a<-AirPassengers[c(1:50)]
b<-AirPassengers[c(51:100)]

plot(a,col="red",type="p",xlab="abc",ylab="def")
lines(b,type="p",col="green")

plot(a,type="l",col="red",xlab="abc",ylab="def")#lty改變線的型態
lines(b,type="l",col="blue")#lty改變線的型態

palette(heat.colors(15))
hist(AirPassengers,freq=T,col=15:1) #黃到紅
#freq=T 次數
#freq=F 頻率