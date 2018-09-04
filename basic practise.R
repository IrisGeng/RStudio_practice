list1 <- list(c(2,3,5),21.3)
print(list1)
apple <- c('red','green','yellow')
print(apple)

# byrow=TURE means the matrix should be filled by rows. 
# byrow=FALSE, filled by column
m<- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2,byrow=TRUE)
print(m)

a<-array(c(1,2,3),dim=c(3,3,2))
print(a)

# factors
apple_colors<- c('green','green','yellow','red','red','red','green')
factor_apple<-factor(apple_colors)
print(factor_apple)
print(nlevels(factor_apple))

# data frame, can contrain different modes of data
BMI<- data.frame(
  gender=c("Male","Male","Female"),
  height=c(152,171.5,165),
  weight=c(81,93,78),
  age=c(42,38,26)
)
print(BMI)

# Assign variables
var.1=c(0,1,2,3)
var.2 <-c("learn","r")
c(TRUE,1)->var.3

cat("var.1 is",var.1,"\n")
cat("var.2 is",var.2,"\n")
print(class(var.1))
# "ls" current variables, start with dot(.) are hidden 
print(ls())
print(ls(all.name=TRUE))
# use rm to delete variables
rm(var.1)
print(var.1)
rm(list=ls())  # delete all variables

b <2
c<- 3
d<-b+c

# matrix multification
m<- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2,byrow=TRUE)
n<- matrix(c(3,2,5,1,4,6),nrow=2,ncol=3,byrow=TRUE)
z<- m%*%n
print(z)

# if, notice format needs to be like this
x<- -5
if(x>0){
  print("positive")
} else if(x==0){
    print("zero")
} else{
    print("negative")
}

# repeat loop
v <- c("hello","loop")
cnt<-2
repeat{
  print(v)
  cnt<- cnt+1
  if(cnt>6){
    break
  }
}

# while loop
while(cnt<7){
  print(v)
  cnt<-cnt+1
}

# for loop
v<- LETTERS[1:4]
for(i in v){
  print(i)
}

x<- c(1,2,3,4,5,6,7)
count<-0
for(var in x){
  if(var%% 2==0){
   next
  }
  print(var)
}

# function
new.function <-function(a){
  for(i in 1:a){
    b<- i^2
    print(b)
  }
}
new.function(6)

# string
a<-"start"
b<-'learn'
print(paste(a,b,sep="-"))
result<- format("hello",width=8,justify="c")
print(result)
result<- substring("extract",5,7)
print(result)

# list
list_data<-list(c("jan","feb","mar"),matrix(c(3,9,5,1,-2,8),nrow=2),list("green",12.3))
names(list_data)<c("1st quarter","a_matrix","a inner list")
print(list_data[1])
print(list_data[3])
print(list_data$a inner list)
list1<- list(1,2,3)
list2<-list("sun","mon","tue")
merged.list<-c(list1,list2)
print(merged.list)
v1<-unlist(list1)
print(v1)
v2<-unlist(list2)
print(v2)

# matrix
m<-matrix(c(3:14),nrow=4,byrow=TRUE)
rownames=c("row1","row2","row3","row4")
colnames=c("col1","col2","col3")
p<-matrix(c(3:14),nrow=4,byrow=TRUE,dimname=list(rownames,colnames))
print(p)
print(p[1,2])
print(p[,2])

# vector
vector1<-c(5,9,3)
vector2<-c(10,11,12,13,14,15)
new.array<-array(c(vector1,vector2),dim=c(3,3,2))
print(new.array)
result<-apply(new.array,c(1),sum)
print(result)

#factor
data<-c("east","west","east","north","north","east","west","west")
print(is.factor(data))
factor_data<-factor(data)
print(factor_data)
print(is.factor(factor_data))
new_order_data<-factor(factor_data,levels=c("east","west","north"))
print(new_order_data)
height<-c(132,151,162,139,166,147,122)
weight<-c(48,49,66,53,67,52,48)
gender<-c("m","m","fe","fe","m","fe","m")
input_data<-data.frame(height,weight,gender)
print(is.factor(input_data$gender))

# generate factor levels
v<-gl(3,4,labels=c("tampa","seattle","boston"))
print(v)

# data frame
str(input_data)           # structure of data frame
print(summary(input_data)) # summary of data frame
result<- data.frame(input_data$height,input_data$weight)
print(result)
input_data$age<-c(18,19,13,17,18,20,21)
print(input_data)
