data() ##檢視內建資料表
View(CO2)
conc <- CO2$conc #呼叫CO2裡面的conc變數
conc <- CO2$conc[c(1:10)] #呼叫CO2裡面的conc變數1~10筆
conc
cumsum(conc) #cumsum累積相加
cum_per <- cumsum(conc)/sum(conc)
cum_per

table(conc)

par(mar=c(5,5,5,5)+0.1) #par(參數名=取值)設定或詢問繪圖參數
bar <- barplot(conc,ylab="Total",col="skyblue",col.axis="green",col.lab="red")#col.axis座標名稱藍色 col.lab標題名稱藍色
mtext(LETTERS[1:10],side=1,line=1,at=bar,col="black")# mtext("",side=1,line=3,col="black")
#side=下左上右1234 line=第幾行的位置 at bar=在每個bar旁邊
par(new=T)
plot(bar, cum_per, axes=F, xlab="",ylab="",col="red",type="b") #axes=有無表格的框
axis(4,col="orange",col.ticks="purple",col.axis="yellow")# col.ticks=座標的橫線顏色 col.axis=座標值的顏色
mtext("Cum%",side=4,line=3,col="red")
title(main = "Pareto Chart")

##qcc
install.packages("qcc")
library(qcc)
names(conc) <- LETTERS[1:10]
pareto.chart(conc, ylab = "Total",ylab2 = "Cum%", main='Pareto Chart')

#fdth
install.packages("fdth")
library(fdth)
x <- rep(LETTERS[1:10], conc)
dc <- fdt_cat(x)
plot(dc,type='pa', main = "Pareto Chart")


table(conc)

library(qcc)
names(conc) <- LETTERS[1:10]
pareto.chart(conc, ylab = "Total",ylab2 = "Cum%", main='Pareto Chart')
