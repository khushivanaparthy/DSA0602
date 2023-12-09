# Create a dataframe with the given weather data
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04")),
  Temperature = c(12, 9, 15, 8),
  Precipitation = c(0.5, 2.0, 0.0, 5.0)
)

# Display the dataframe
print(weather_data)

# a. Map Chart for Distribution of Temperature
# Assuming you have geographic information (latitude and longitude) associated with each location, you can use the 'sf' and 'leaflet' packages.

# Install and load necessary packages
install.packages("sf")
install.packages("leaflet")
library(sf)
library(leaflet)

# Create a sample geographic dataframe with latitude and longitude
locations <- data.frame(
  Latitude = c(35.6895, 37.7749, 40.7128, 34.0522),
  Longitude = c(139.6917, -122.4194, -74.0060, -118.2437)
)

# Combine weather_data and locations dataframes
weather_locations <- cbind(weather_data, locations)

# Convert the dataframe to a Simple Features (sf) object
sf_weather <- st_as_sf(weather_locations, coords = c("Longitude", "Latitude"), crs = 4326)

# Create a map
leaflet(sf_weather) %>%
  addProviderTiles("CartoDB.Positron") %>%
  addCircleMarkers(radius = ~Temperature, color = "red", label = ~paste("Temperature:", Temperature, "°C"))

# Label the map elements accordingly.

# b. Scatter Plot for Relationship between Average Temperature and Precipitation
# Calculate the average temperature for each date
average_temp <- mean(weather_data$Temperature)

# Create a scatter plot
library(ggplot2)

ggplot(weather_data, aes(x = Temperature, y = Precipitation)) +
  geom_point() +
  geom_hline(yintercept = average_temp, linetype = "dashed", color = "red") +
  labs(title = "Relationship between Average Temperature and Precipitation",
       x = "Temperature (°C)",
       y = "Precipitation (mm)")

# Insights: Observe how precipitation changes with temperature. The dashed line represents the average temperature.

# c. Table for Weather Data
# Using the 'kable' function from the 'knitr' package

# Install and load necessary packages
install.packages("kableExtra")
library(kableExtra)

# Display the table with styling
kable(weather_data, caption = "Weather Data for Each Date") %>%
  kable_styling()


# Label the table elements accordingly.
