#9

boxplot(mpg ~ cyl, data = mtcars, xlab = "Quantity of Cylinders",  
        ylab = "Miles Per Gallon", main = "R Boxplot Example")

#10

boxplot(mpg ~ cyl, data = mtcars,   
        xlab = "Quantity of Cylinders",  
        ylab = "Miles Per Gallon",   
        main = "Boxplot Example",  
        notch = FALSE,   
        varwidth = TRUE,   
        col = c("green","yellow","red"),  
        names = c("High","Medium","Low")  
)  
