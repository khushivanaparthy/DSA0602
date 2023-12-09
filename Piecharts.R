#1
x <- c(20, 65, 15, 50)  
labels <- c("India", "America", "Shri Lanka", "Nepal")  
pie(x,labels)

#2
x <- c(20, 65, 15, 50)  
labels <- c("India", "America", "Shri Lanka", "Nepal")  
pie(x,labels,main="Country Pie chart",col=rainbow(length(x)))  

#3

x <- c(20, 65, 15, 50)  
labels <- c("India", "America", "Shri Lanka", "Nepal")  
pie_percent<- round(100*x/sum(x), 1)  
pie(x, labels = pie_percent, main = "Country Pie Chart",col = rainbow(length(x)))  
legend("topright", c("India", "America", "Shri Lanka", "Nepal"), cex = 0.8,  
       fill = rainbow(length(x))) 

#4

library(plotrix)    
x <- c(20, 65, 15, 50,45)  
labels <- c("India", "America", "Shri Lanka", "Nepal","Bhutan")  
pie3D(x,labels = labels,explode = 0.1, main = "Country Pie Chart")  

#5

library(plotrix)  
x <- c(20, 65, 15, 50,45)  
labels <- c("India", "America", "Shri Lanka", "Nepal","Bhutan")  
pie_percent<- round(100*x/sum(x), 1)  
pie3D(x, labels = pie_percent, main = "Country Pie Chart",col = rainbow(length(x)))  
legend("topright", c("India", "America", "Shri Lanka", "Nepal","Bhutan"), cex = 0.8,  
       fill = rainbow(length(x))) 