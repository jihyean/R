setwd("D:/source1")
library(readxl)

data2 <- read_excel("2.xlsx")
data2

head(data2)
data<-data.frame(학과=data2$학과,성별=sample(c(data2$남,data2$여)))

mosaicplot(data,
           main="학과별 성별 비율",
           color = c("red","green"),
           off=1)