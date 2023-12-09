Date<-c("2023-01-01","2023-01-02","2023-01-03")
StockA<-c(100,105,110)
StockB<-c(150,152,148)
StockC<-c(120,118,122)
df<-data.frame(Date,StockA,StockB,StockC)
df

#a
plot(StockA,type = "o",col="green",main = "Stock Analysis",xlab = "Date",ylab = "stock")  
lines(StockB, type = "o", col = "red")  
lines(StockC, type = "o", col = "blue") 

#b
barplot(StockA,xlab = "StockA",ylab = "Percentage",col = "red",main = "Stock Analysis")

