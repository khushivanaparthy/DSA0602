# Sample data
customer_ratings <- c(4, 3, 5, 2)

#a
# Create a histogram
hist(customer_ratings, breaks = seq(1.5, 5.5, by = 1), col = "skyblue", 
     xlab = "Customer Ratings", ylab = "Frequency",
     main = "Distribution of Customer Ratings")

#b
# Count the frequency of each rating
rating_counts <- table(customer_ratings)

# Generate a pie chart
pie(rating_counts, labels = paste("Rating", names(rating_counts)), 
    col = c("skyblue", "lightgreen", "lightcoral", "lightpink"),
    main = "Overall Distribution of Customer Ratings")

#c

library(ggplot2)

# Sample data with feedback
customer_data <- data.frame(
  Customer = c("Customer 1", "Customer 2", "Customer 3", "Customer 4"),
  Rating = c(4, 3, 5, 2),
  Feedback = c("Great service!", "Decent but could improve.", "Excellent experience!", "Not satisfied at all.")
)

# Create a ggplot stacked bar chart
ggplot(customer_data, aes(x = factor(Rating), fill = Feedback)) +
  geom_bar(position = "stack") +
  labs(title = "Distribution of Feedback by Customer Rating",
       x = "Customer Rating", y = "Count",
       fill = "Feedback") +
  theme_minimal()
