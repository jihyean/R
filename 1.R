setwd("D:/source1")

library(ggplot2)
library(ggmap)
library(readxl)
library(treemap)

data <- read_excel("1.xlsx")
data

str(data)
summary(data)

treemap(data,
        index=c('지역명'),
        vSize = '인구',
        vColor = '인구밀도',
        type='value',
        title="대한민국 지역별 인구분포")