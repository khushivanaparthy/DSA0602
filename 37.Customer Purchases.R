# Create a dataframe with the given customer and product data
customer_data <- data.frame(
  Customer = c("Customer A", "Customer B", "Customer A", "Customer C"),
  Product = c("Widget X", "Widget Y", "Widget Z", "Widget X"),
  Quantity = c(5, 3, 2, 4),
  Price = c(10.00, 15.00, 8.50, 9.00)
)

hist(df$Quantity, 
     main = "Distribution of Quantity",
     xlab = "Quantity",
     ylab = "Frequency",
     col = "lightblue",
     border = "black"
)


# b. Pie Chart for Distribution of Overall Quantity and Price
# Using pie() function from the 'plotrix' package


library(plotrix)

# Create a pie chart
quantity_sum <- sum(customer_data$Quantity)
price_sum <- sum(customer_data$Price)

pie(c(quantity_sum, price_sum), labels = c("Quantity", "Price"), col = c("blue", "green"))

#d
# Install and load necessary packages
install.packages(c("tm", "wordcloud"))
library(tm)
library(wordcloud)

# Create a dataframe with the given customer feedback data
customer_feedback_data <- data.frame(
  Customer = c("Customer A", "Customer B", "Customer A", "Customer C"),
  Product = c("Widget X", "Widget Y", "Widget Z", "Widget X"),
  Quantity = c(5, 3, 2, 4),
  Price = c(10.00, 15.00, 8.50, 9.00),
  Feedback = c("Great product!", "Not satisfied with the quality.", "Fast delivery, excellent service.", "Widget X is fantastic!")
)

# Display the dataframe
print(customer_feedback_data)

# Extract feedback text
feedback_text <- customer_feedback_data$Feedback

# Create a Corpus
corpus <- Corpus(VectorSource(feedback_text))

# Preprocess the text
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))

# Create a Document-Term Matrix (DTM)
dtm <- DocumentTermMatrix(corpus)

# Create a word cloud
wordcloud(words = names(sort(colSums(as.matrix(dtm)))), 
          freq = sort(colSums(as.matrix(dtm))), 
          max.words = 100, 
          scale=c(3,0.5), 
          colors=brewer.pal(8, "Dark2"))

# Label the word cloud elements accordingly.
