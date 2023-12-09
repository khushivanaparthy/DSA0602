# Order data
order_data <- data.frame(
  Order_ID = c(2001, 2002, 2003, 2004),
  Customer_Name = c("John", "Alice", "Bob", "Sarah"),
  Product = c("Widget X", "Widget Y", "Widget X", "Widget Z"),
  Quantity = c(10, 5, 8, 12),
  Price = c(5, 8, 5, 7)
)
#1
hist(order_data$Quantity, 
     main = "Distribution of Quantity of Products",
     xlab = "Quantity",
     ylab = "Frequency",
     col = "lightblue",
     border = "black"
)
#2
total_quantity <- sum(order_data$Quantity)
total_price <- sum(order_data$Price)
pie(c(total_quantity, total_price),
    labels = c("Quantity", "Price"),
    col = c("skyblue", "pink"),
    main = "Distribution of Overall Quantity and Price")

#3
# Install required packages
install.packages("tm")
install.packages("wordcloud")

# Load required libraries
library(tm)
library(wordcloud)

# Sample customer feedback
feedback <- c(
  "The product is great! I love it.",
  "Not satisfied with the quality.",
  "Excellent customer service.",
  "Could be better.",
  "Amazing value for the money."
)

# Create a data frame with the feedback
feedback_df <- data.frame(Feedback = feedback)

# Text preprocessing
corpus <- Corpus(VectorSource(feedback_df$Feedback))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))

# Perform sentiment analysis (using a simple rule-based approach)
sentiment <- sapply(corpus, function(x) {
  ifelse(length(grep("love|excellent|amazing", x)) > length(grep("not satisfied|could be better", x)), "positive", "negative")
})

# Add sentiment to the data frame
feedback_df$Sentiment <- sentiment

# Create a word cloud
positive_words <- feedback_df$Feedback[feedback_df$Sentiment == "positive"]
wordcloud(words = unlist(strsplit(positive_words, " ")), min.freq = 1, scale=c(3, 0.5), colors=brewer.pal(8, "Dark2"))

