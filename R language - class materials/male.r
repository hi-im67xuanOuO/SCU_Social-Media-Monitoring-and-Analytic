data<-read.csv("/Users/liuqingxuan/Downloads/flight.csv")
View(data)

ind<-which(data$GENDER=="女")
ind
data[ind,]
male<-data[-ind,]
View(male)
male<-na.omit(male)
male

male$date_male<-strftime(male$FIRST_FLIGHT_DATE,format="%Y/%m/%d")
male$date2_male<-substr(male$LAST_FLIGHT_DATE, start=1,stop=10)

male$time<-as.Date(male$date2_male)-as.Date(male$date_male)
male$time<-male$time[complete.cases(male$time)]
male$time#去空值

male$freq<-male$time/male$FLIGHT_COUNT
male$freq

male$far<-male$SEG_KM_SUM/male$FLIGHT_COUNT
male$far

library(qcc)
pareto.chart(table(male$AGE),ylab="次數",ylab2="Cum%",main='Pareto Chart')#年齡

pareto.chart(table(male$EXCHANGE_COUNT),ylab="次數",ylab2="Cum%",main='Pareto Chart')