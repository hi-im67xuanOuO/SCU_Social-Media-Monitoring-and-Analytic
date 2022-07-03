##統計量分析  
mean(AirPassengers)
mean(AirPassengers, trim=0) # trim：從排序的向量的兩端刪除觀測值，trim=0.3代表10個刪除3個
mean(AirPassengers, trim=0, na.rm = FALSE) ## na.rm：移除na

median(x, na.rm = FALSE) ##中位數
conc
as.numeric(names(table(conc)))[which.max(table(conc))] ##眾數

range(x) ##全距
range(x,na.rm=FALSE)

sd(x) ##標準差
sd(x,na.rm=FALSE)

cv <- 100 * sd(x) / mean(x) ##變異係數
cv