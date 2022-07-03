data<-read.csv("/Users/liuqingxuan/Downloads/flight.csv")
data<-read.csv("/Users/liuqingxuan/Downloads/flight.csv")
View(data)
data<-na.omit(data)

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

ind<-which(data$GENDER=="男")
ind
data[ind,]
female<-data[-ind,]
View(female)
female<-na.omit(female)
female

female$date_female<-strftime(female$FIRST_FLIGHT_DATE,format="%Y/%m/%d")
female$date2_female<-substr(female$LAST_FLIGHT_DATE, start=1,stop=10)

female$time<-as.Date(female$date2_female)-as.Date(female$date_female)
female<-na.omit(female)
female$time<-female$time[complete.cases(female$time)]
female$time

female$freq<-female$time/female$FLIGHT_COUNT
female$freq

female$far<-female$SEG_KM_SUM/female$FLIGHT_COUNT
female$far

library(qcc)
pareto.chart(table(female$AGE),ylab="次數",ylab2="Cum%",main='Pareto Chart')#年齡

pareto.chart(table(male$EXCHANGE_COUNT),ylab="次數",ylab2="Cum%",main='Pareto Chart')



plot(table(male$EXCHANGE_COUNT),type="l",main="Exchange Counts",col="blue",ylab="amount")
par(new=T)
plot(table(female$EXCHANGE_COUNT), axes=F,col="red",type="l",ylab="")

plot(table(male$far),type="l",main="Flight Far",col="blue",ylab="times")
par(new=T)
plot(table(female$far), axes=F,col="red",type="l",ylab="")
