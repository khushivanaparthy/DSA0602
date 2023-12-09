#6
H<- c(12,35,54,3,41)  
barplot(H)

#7
H<- c(12,35,54,3,41)  
M<- c("Feb","Mar","Apr","May","Jun") 
barplot(H,names.arg = M,xlab = "Month",ylab = "Revenue",col = "green",
        main = "Revenue BarChart",border = "red")

#8

library(RColorBrewer)  
months <- c("Jan","Feb","Mar","Apr","May")  
regions <- c("West","North","South")  
Values <- matrix(c(21,32,33,14,95,46,67,78,39,11,22,23,94,15,16),
                 nrow = 3, ncol = 5, byrow = TRUE)
color=c("cadetblue3","deeppink2","goldenrod1")
barplot(Values, main = "Total Revenue", names.arg = months, xlab = "Month",
        ylab = "Revenue", col =color)  
legend("topleft",regions,cex = 1.3,fill=color) 


