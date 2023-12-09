# Install and load required packages
install.packages(c("ggplot2", "tidyr", "knitr"))
library(ggplot2)
library(tidyr)
library(knitr)

# Sample data
sales_data <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

# a. Grouped Bar Chart
sales_data_long <- tidyr::gather(sales_data, key = "Month", value = "Sales", -Product_ID, -Product_Name)

ggplot(sales_data_long, aes(x = factor(Product_ID), y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Quarterly Sales by Product",
       x = "Product",
       y = "Sales",
       fill = "Month")

# b. Stacked Area Chart
sales_data_long <- tidyr::gather(sales_data, key = "Month", value = "Sales", -Product_ID, -Product_Name)

ggplot(sales_data_long, aes(x = factor(Product_ID), y = Sales, fill = Month)) +
  geom_area() +
  labs(title = "Overall Sales Trend",
       x = "Product",
       y = "Sales",
       fill = "Month")

# c. Table
kable(sales_data, caption = "Monthly Sales Data for Each Product") %>%
  kable_styling()
