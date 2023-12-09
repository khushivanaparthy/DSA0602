library(ggplot2)

# Your data
data <- data.frame(
  Region = c("North", "North", "South", "South"),
  Month = c("Jan", "Feb", "Jan", "Feb"),
  Sales = c(5000, 6200, 4800, 5600)
)
#1
ggplot(data, aes(x = Region, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales by Region for the First Quarter",
       x = "Region",
       y = "Sales (USD)",
       fill = "Month") +
  theme_minimal()
#3
library(knitr)
library(kableExtra)
employee_table <- kable(data, format = "html", caption = "table of the reigions") %>%
  kable_styling(bootstrap_options = "striped", full_width = FALSE)
print(employee_table)