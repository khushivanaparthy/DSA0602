month<-c("January","February","March","April","May")
sales<-c(15000,18000,22000,20000,23000)
df<-data.frame(month,sales)
write.csv(df,"Monthly Sales.csv")
m<-read.csv("Monthly Sales.csv")
plot(sales,type = "o",col="green",main = "Monthly sales")

barplot(sales,names.arg = month,col="blue",
        xlab = "month",ylab = "Sales",main = "Monthly Sales Data")

plot(sales,main = "monthly sales data",xlab = "month")

