library(ggplot2)
data <- data.frame(
  Student = c("Student A", "Student B", "Student C", "Student D"),
  Date = c("2023-01-01", "2023-01-01", "2023-01-02", "2023-01-02"),
  Attendance = c("Present", "Absent", "Present", "Present")
)
data$Date <- as.Date(data$Date)
#`1`
ggplot(data, aes(x = Student, fill = Attendance)) +
  geom_bar(position = "dodge", width = 0.7) +
  labs(title = "Attendance of Each Student",
       x = "Student",
       y = "Count") +
  scale_fill_manual(values = c("Present" = "green", "Absent" = "red")) +
  theme_minimal()
#2

ggplot(data, aes(x = Student, fill = Attendance)) +
  geom_bar(stat = "count", position = "stack", width = 0.7) +
  labs(title = "Stacked Bar Chart of Most Recent Attendance",
       x = "Student",
       y = "Count") +
  theme_minimal()

#3
ggplot(data, aes(x = Date, y = as.factor(Student), color = Attendance)) +
  geom_point(size = 3) +
  labs(title = "Relationship Between Class Date and Attendance",
       x = "Class Date",
       y = "Student",
       color = "Attendance") +
  theme_minimal()
