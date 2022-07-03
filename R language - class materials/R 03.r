# ?後打有疑問的程式碼，可喚出help功能
file.choose() #選擇檔案
setwd("/home/R") #設定工作目錄
getwd() #目前工作目錄
detach("package:class") #取消載入套件
# control+L 清除控制欄
# control+1將光標移動到命令控制台處
# contol+Shift+C 對代碼進行註釋或去掉代碼註釋
# install.packages()

data() ##檢視內建資料表 但未出現全部 需複製最底下那行並執行
AirPassengers #可直接打內建data的名字 不用另外read
show(AirPassengers) #也可以打這樣
list(AirPassengers) #或是這樣
View(AirPassengers) #或是這樣
list(CO2)
conc <- CO2$conc ##呼叫CO2裡面的conc變數
conc <- CO2[,'conc'] ##呼叫CO2裡面的conc變數
conc <- CO2$conc[c(1,5,7,9)] ##呼叫CO2裡面的conc變數1, 5, 7, 9
conc <- CO2$conc[c(1:10)] ##呼叫CO2裡面的conc變數1~10筆
cor(CO2$conc, CO2$uptake) ##conc和uptake的相關係數
rm(conc) ##清除conc變數
rm(list = is()) ##清除資源欄變數
gc() ##清除所有暫存

palette(rainbow(15))   ##R默認8種顏色，可以使用palette函數進行修改彩虹色
palette(heat.colors(15))   ##R默認8種顏色，可以使用palette函數進行修改紅色至黃色
palette(terrain.colors(15))   ##R默認8種顏色，可以使用palette函數進行修改綠、棕至白
palette(topo.colors(15))   ##R默認8種顏色，可以使用palette函數進行修改深藍色至淺棕色
palette(cm.colors(15))   ##R默認8種顏色，可以使用palette函數進行修改淺藍、白至淺紫
palette(grey(15))   ##R默認8種顏色，可以使用palette函數進行修改灰色

plot(CO2$conc[c(1:15)],col=1:15) ##繪製p點圖
barplot(CO2$conc[c(1:15)],col=1:15) ##繪製barchart
barplot(rnorm(15,5,3),col = heat.colors(15)) #隨機做出長條圖 限定平均數為5 標準差為3 顏色15種
# 上一行也可打成barplot(rnorm(15,5,3),col = 1:15)
plot(CO2$conc,type = "p" ,cex =3, col=1:15, type = "l", lwd = 3, lty =1, xlab = "A", ylab = "B") ##繪製p點圖、l折線圖、o點加折
lines(airmiles, col=1) ## 加上對比線
pie(table(CO2$Treatment)) ## 餅圖
boxplot(AirPassengers) ## 箱型圖(盒鬚圖)
boxplot(CO2$conc) #指定CO2裡的conc欄位的數據做成盒鬚圖
x<-CO2$conc #等同上列方法
boxplot(x)
x<-CO2$conc[c(1:30)] #取1~30的數據
boxplot(x)
rm(x) #刪除x整筆數據 但仍有暫存
y<-CO2$uptake
z<-x-y
hist(CO2$uptake, freq = F) ##頻率分配直方圖 F是頻率
hist(CO2$uptake, freq = T) ##次數分配直方圖 T是次數

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