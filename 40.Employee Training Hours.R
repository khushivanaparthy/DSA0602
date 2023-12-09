employee<-c("john","alice","bob","sarah")
department<-c("HR","Sales","IT","Finance")
training_hours<-c(10,8,12,6)
df<-data.frame(employee,department,training_hours)
#1
hist(df$training_hours, col = "skyblue", 
     xlab = "Training Hours", ylab = "Frequency",
     main = "Distribution of Training Hours")
#2
total_training_hours <- sum(df$training_hours)
percentage_training_hours <- (df$training_hours / total_training_hours) * 100
pie(percentage_training_hours, labels = paste(df$employee, "\n", df$training_hours, " hours"), col = rainbow(length(employee)))
legend("topright", legend = df$employee, fill = rainbow(length(employee)), title = "Employee")
title(main = "Overall Employee Training Hours")
#3
library(tidyr)
df_long <- gather(df, key = "Employee", value = "Training_Hours", -department)

# Create a stacked bar chart using ggplot2
ggplot(df_long, aes(x = department, y = Training_Hours, fill = Employee)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Training Hours by Employee",
       x = "Department",
       y = "Training Hours",
       fill = "Employee") +
  theme_minimal()