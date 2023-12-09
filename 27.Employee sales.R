# Create a dataframe with the given sales data
sales_data <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Sales = c(5000, 6200, 4500, 7400)
)

# Display the dataframe
print(sales_data)

# a. Line Chart for Monthly Sales
# Assuming the data has months associated with it, let's use a placeholder for months.
months <- c("Jan", "Feb", "Mar", "Apr")

# Add a month column to the dataframe
sales_data$Month <- months

# Create a line chart
library(ggplot2)

ggplot(sales_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line() +
  labs(title = "Monthly Sales",
       x = "Month",
       y = "Sales (in dollars)")

# b. Bar Chart for Top-Selling Products
# In this case, we'll consider products as employees for simplicity.

# Sort the data by Sales in descending order
sorted_sales_data <- sales_data[order(-sales_data$Sales),]

# Generate the bar chart
ggplot(sorted_sales_data, aes(x = Employee, y = Sales, fill = Employee)) +
  geom_bar(stat = "identity") +
  labs(title = "Top-Selling Products",
       x = "Employee",
       y = "Sales (in dollars)",
       fill = "Employee")

# c. Scatter Plot for Relationship between Advertising Budget and Monthly Sales
# Assuming you have a dataframe named 'advertising_data' with columns 'Month' and 'Advertising Budget'

# Create a sample advertising dataframe
advertising_data <- data.frame(
  Month = months,
  Advertising_Budget = c(2000, 2500, 1800, 3000)
)

# Merge sales_data and advertising_data based on Month
merged_data <- merge(sales_data, advertising_data, by = "Month")

# Create a scatter plot
ggplot(merged_data, aes(x = Advertising_Budget, y = Sales)) +
  geom_point() +
  labs(title = "Relationship between Advertising Budget and Monthly Sales",
       x = "Advertising Budget",
       y = "Sales (in dollars)")

# Insights: Examine the scatter plot to observe if there is any discernible pattern or correlation between advertising budget and monthly sales. A positive trend may suggest that higher advertising budgets are associated with higher sales.
