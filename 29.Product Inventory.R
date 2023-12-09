# Create a dataframe with the given inventory data
inventory_data <- data.frame(
  Product = c("Widget A", "Widget B", "Widget C", "Widget D"),
  Quantity = c(100, 75, 120, 50),
  Price = c(10.00, 15.00, 8.50, 20.00)
)

# Display the dataframe
print(inventory_data)

# a. Bar Chart for Quantity of Each Product
# Using ggplot2

# Install and load necessary packages
install.packages("ggplot2")
library(ggplot2)

# Create a bar chart
ggplot(inventory_data, aes(x = Product, y = Quantity, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product in Inventory",
       x = "Product",
       y = "Quantity",
       fill = "Product")

# b. Stacked Bar Chart for Quantity within Product Categories
# Assuming you have a column named 'Category' for different product categories

# Add a Category column to the dataframe
inventory_data$Category <- c("Category A", "Category B", "Category A", "Category B")

# Create a stacked bar chart
ggplot(inventory_data, aes(x = Category, y = Quantity, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product within Product Categories",
       x = "Product Category",
       y = "Quantity",
       fill = "Product")

# c. Table for Inventory Data
# Using the 'kable' function from the 'knitr' package

# Install and load necessary packages
install.packages("knitr")
library(knitr)

# Display the table
kable(inventory_data, caption = "Inventory Data for Each Product") %>%
  kable_styling()

# Label the table elements accordingly.
