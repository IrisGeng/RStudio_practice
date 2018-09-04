data <- read_xlsx('D:/SOFTWARE/R/dataset from textbook/3.1.xlsx')

labels <- data$`federal program`
h <- data$`2006 expenditures`
pie(h,labels)

# bar chart
h<- data$`2006 expenditures`
M<-data$`federal program`
barplot(h,names.arg=M,xlab="federal program",ylab="2006")

# convert decimal to percentage
a<-sum(data$`2006 expenditures`)
percent<-function(x,digits=2,format="f",...){
  paste0(formatC(100*x,format=format,digits=digits,...),"%")
}

b<-h/a
c<-percent(b)
pie(h,c,col=rainbow(length(h)))
legend("topright",data$`federal program`,fill=rainbow(length(h)))
barplot(b,names.arg=M,xlab="federal program",ylab="2006")

