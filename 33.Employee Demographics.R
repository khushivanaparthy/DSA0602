
employee_data <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Age = c(32, 28, 35, 29),
  Gender = c("Male", "Female", "Male", "Female"),
  Department = c("HR", "Sales", "IT", "Finance"),
  Salary = c(60000, 70000, 75000, 68000)
)
#1
barplot(employee_data$Age, 
        names.arg = employee_data$Employee,
        col = "skyblue",
        main = "Distribution of Employee Ages",
        xlab = "Employee",
        ylab = "Age")
#2
gender_counts <- table(employee_data$Gender)
pie(gender_counts, 
    labels = paste(names(gender_counts), ": ", gender_counts),
    main = "Distribution of Customers by Gender",
    col = c("skyblue", "pink"))
#3
library(knitr)
library(kableExtra)
employee_table <- kable(employee_data, format = "html", caption = "Demographic Information for Each Customer") %>%
  kable_styling(bootstrap_options = "striped", full_width = FALSE)
print(employee_table)
