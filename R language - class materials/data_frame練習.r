#主題一（日期時間函數）

#使用讀取系統當前日期時間的3個函數

sysdate <- Sys.Date()
sysdate
systime <- Sys.time()
systime
date <- date()
date

class(sysdate)
class(systime)
class(date)

#將年月日格式的日期時間值轉換為月日年格式的字串
date2<-strftime(sysdate,format="%m/%d/%y")
#將轉換後的結果進行類型診斷，判定是否轉換成功
class(date2)

seq(1,-9)
seq(1,-9,length=5)
x<-c(5.1,4.9,4.7,4.6,5.0,3.5,3.0,3.2,3.1,3.6)
x[c(3,6,9)]
which(x<5 &x>4) #顯示位子

#創建一個向量Petal.Length，內含等差序列：首位為1.7，等差為0.1，長度為5
Petal.Length<-seq(1.7, by=0.1, length.out = 5)
Petal.Length
#創建一個向量Petal.Width，內含重複序列：重複0.2五次
Petal.Width<-rep(0.2,5)
Petal.Width
#創建一個向量為重複因子序列Species：水平數為3，各水平重複2次
#序列長度為5，三個水平：setosa,versicolor,virginica
Species<- gl(3,2,5,labels = c("setosa","versicolor","virginica"))
class(Species)#因限制總數為5所以最後一項被截掉
Species

A<-matrix(x,5,2)
A
A[,1]
A[1,]

data_iris<-data.frame(A)
data_iris
class(data_iris)
names(data_iris)<-c("Sepal.Length","Sepal.Width")
class(data_iris)
names(data_iris)

#將向量Petal.Length,Petal.Width,Species按列合併至數據框data_iris中
data_iris<-cbind(data_iris,Petal.Length,Petal.Width,Species)
View(data_iris)
#將數據框data_iris保存為txt文件檔案，保存到工作空間的data目錄下
write.table(data_iris,file="/Applications/巨量資料概論/data_iris.txt",row.names=TRUE)

#讀取主題二寶存在data目錄下的txt文件data_iris
data_iris<-read.table("/Applications/巨量資料概論/data_iris.txt",header = TRUE)
#將R的數據集iris中第6到第10行寫入數據框data_iris1中
data_iris1<-data.frame(iris[c(6:10),])
data_iris1
#將data_iris與data_iris1合併為數據框data_iris2，並保存為csv文件
data_iris2<-rbind(data_iris,data_iris1)
View(data_iris2)
write.csv(data_iris2,"/Applications/巨量資料概論/data_iris2.csv",row.names=TRUE)


#主題四k-means
iris2<-iris
kmeans.result<-kmeans(iris2[,1:4],3)#kmeans(用哪些做分群,分幾群)
kmeans.result
table(iris$Species,kmeans.result$cluster)
plot(iris2[c("Sepal.Length","Sepal.Width")],col=kmeans.result$cluster)
points(kmeans.result$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=8,cex=2)

#關聯規則
install.packages("arules")
library(arules)
#獲取數據
data(Adult)
#查看前五個項目
inspect(Adult[1:5])
#查看數據結構和數據狀況
summary(Adult)
#查看Adult中各個項目的支持度，並單獨查看"age=Young"和"sex = Male"的支持度
itemFrequency(Adult)
itemFrequency(Adult[,c("age=Young","sex=Male")])
#對支持度最大的前10個項目做支持度頻率圖（稀疏矩陣圖）
itemFrequencyPlot(Adult,topN=10)
#以最小支持度為0.01,最小置信度為0.5建立apriori關聯規則，得到的關聯規則記為rule1
rule1<-apriori(Adult,parameter=list(support=0.01,confidence=0.5))
#以最小支持度為0.01,最小置信度為0.6建立apriori關聯規則，得到的關聯規則記為rule2
rule2<-apriori(Adult,parameter=list(support=0.01,confidence=0.6))
#以最小支持度為0.01,最小置信度為0.5，同時指定關聯規則的前項為"age=Young"建立關聯規則rule3
rule3<-apriori(Adult,parameter = list(support=0.01,confidence=0.5),appearance = list(lhs="age=Young"))

#按提升度對rule1排序
sort(rule1,bu="support")
#查看排序後的前10項規則
inspect(sort(rule1,by="support")[1:10])
#提取後項目為relationship=Wife並且提升度大於1.5的關聯規則
s1<-subset(rule1,subset=rhs %in% "relationship=Wife"&lift>=1.5)#%in%代表字串的相等
inspect(s1)
#對rule1的10項規則做關聯圖和矩陣圖
library(grid)
install.packages("arulesViz")
library(arulesViz)
plot(rule1[1:10],method="graph")
plot(rule1[1:10],method="matrix")
