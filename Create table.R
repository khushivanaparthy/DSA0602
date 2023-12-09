data= matrix(c(1:16), ncol=4, byrow=TRUE)
colnames(data) = c('col1','col2','col3','col4')
rownames(data) <- c('row1','row2','row3','row4')
final=as.table(data)
final

#2
Month<-c("Jan","Feb","Mar","April")
Year<-c(2003,2003,2004,2001)
df<-data.frame(Month,Year)
table(df$Month, df$Month)
data= data.frame(col1=c(1:4),col2=c(5:8),
                 col3=c(9:12),col4=c(13:16))
Table=table(data$col1,data$col2)
Table