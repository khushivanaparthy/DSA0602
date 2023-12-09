inventory <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220),
  Category = c("Category1", "Category2", "Category1", "Category3", "Category2")
)
library(ggplot2)
bar_chart <- ggplot(inventory, aes(x = ProductName, y = QuantityAvailable)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Quantity of Each Product in Inventory", x = "Product Name", y = "Quantity Available") +
  theme_minimal()
print(bar_chart)

stacked_bar_chart <- ggplot(inventory, aes(x = ProductName, y = QuantityAvailable, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product within Categories", x = "Product Name", y = "Quantity Available", fill = "Category") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set3")  
print(stacked_bar_chart)
pie_chart_data <- with(inventory, pie(QuantityAvailable, labels = ProductName, main = "Quantity Distribution"))
pie_chart_data