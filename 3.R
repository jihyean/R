setwd("D:/source1")
library(ggplot2)

mydata1=c(1246,951,860)
barplot(mydata1,names=c("2020","2021","2022"))
par(new=TRUE)
plot(mydata2,type='b',
     xaxt='n', #x축 눈금 제거
     yaxt='n', #y축 눈금 제거
     ann=FALSE #축이름 제거
)