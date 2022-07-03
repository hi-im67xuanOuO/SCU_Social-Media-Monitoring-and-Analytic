##週期性分析_時間序列趨勢
AirPassengers
apts <- ts(AirPassengers, frequency = 12) #創造時間序列
apts
f <- decompose(apts) ##季節性分解
f
print(f$figure)
plot(f$figure, type = "b", xaxt="n", xlab = "") #看出旺季淡季

monthNames <- months(ISOdate(1949,1:12,1))
axis(1,at=1:12, labels = monthNames, las=1) #axis：在圖表上加入軸線，允許上下左右四個方向
#1=below,2=left,3=above,4=right
#las=1水平 las=2垂直於座標軸
palette(rainbow(15))   ##R默認8種顏色，可以使用palette函數進行修改灰色
plot(f, col = 2)
#第一個圖表為原始時間序列數據 第二個圖表為數據的趨勢
#第三個圖表為季節性因素 第四個為剔除季節性及趨勢的因素

a<-ts(1:30,frequency=12,start=c(2011,3)) #時間序函數（ts(gm,frequency=12,start=c(year,month))）
print(a)
AirPassengers[121:140],co2[1:24]
cor(AirPassengers[121:140],co2[1:24])
