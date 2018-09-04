library(reshape2)
library(ggplot2)
data <- read_xlsx('D:/SOFTWARE/R/dataset from textbook/3.2.xlsx')

df<-data.frame(data$years,data$`passenger car`,data$`SUV/Light Truck`)
df
data.m<-melt(df,id.vars='data.years')
ggplot(data.m,aes(x=data.years,y=value,fill=variable))+geom_bar(stat="identity",position=position_dodge())
