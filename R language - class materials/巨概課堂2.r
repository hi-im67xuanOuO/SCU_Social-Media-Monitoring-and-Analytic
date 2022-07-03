data() #可以看見內建data 但未出現全部 需複製最底下那行並執行
AirPassengers #可直接打內建data的名字 不用另外read
show(AirPassengers) #也可以打這樣
list(AirPassengers) #或是這樣
View(AirPassengers) #或是這樣
list(CO2)

boxplot(AirPassengers) #製作盒鬚圖
boxplot(CO2$conc) #指定CO2裡的conc欄位的數據做成盒鬚圖
x<-CO2$conc #等同上列方法
boxplot(x)
x<-CO2$conc[c(1:30)] #取1~30的數據
boxplot(x)
rm(x) #刪除x整筆數據 但仍有暫存
gc() #查看暫存的數據
y<-CO2$uptake
z<-x-y

is.character(x) #判斷是不是字串
is.numeric(x) #判斷是不是數值
is.integer(x) #判斷是不是整數
is.logical(x) #判斷邏輯

bigdata<-"巨量資料"
is.character(bigdata)

zz<-20
yy<-20L
is.character(zz)
is.numeric(zz)
is.numeric(yy)
is.integer(zz)
is.integer(yy)

as.character(zz) #轉換為字串型變數
is.character(as.character(zz))

hist(x,freq=T) #次數分配直方圖
hist(x,freq=F,col=rainbow(15)) #頻率分配直方圖
hist(x,freq=F,col=rainbow(15),xlab="Bigdata",ylab="ABC") #xlab改x軸名稱ylab改y軸名稱

plot(x,col=1:15) #繪製p點圖
plot(CO2$con,type="l",lwd = 3,lty=1)#lty改變線的型態
plot(CO2$con,type="l",lwd = 3,lty=2)#lty改變線的型態
plot(CO2$con,type="l",lwd = 3,lty=3)#lty改變線的型態

plot(CO2$con,type="l",lwd = 2,lty=1)#lwd改變線的粗細
plot(CO2$con,type="l",lwd = 1,lty=1)#lwd改變線的粗細

plot(CO2$con,type="p",lwd = 1,lty=1,cex=1) #cex改變圈的大小
plot(CO2$con,type="p",lwd = 1,lty=1,cex=2) #cex改變圈的大小
plot(CO2$con,type="p",lwd = 1,lty=1,cex=3) #cex改變圈的大小
