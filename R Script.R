#Importing data
library(readxl)
customer_data <- read.csv('C:/Users/admin/Downloads/Customer_Data_Table.csv')

#viewing first few rows of table
head(customer_data)

# Data processing

# Load necessary libraries

library(dplyr)
library(tidyr)

# Read the CSV data
View(customer_data)

# Handle any missing values (if necessary)
customer_data <- customer_data %>%
  drop_na()

# Bar graph: CustomerID vs TotalPurchase
library(ggplot2)

ggplot(customer_data, aes(x = factor(CustomerID), y = TotalPurchase)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "CustomerID vs Total Purchase", x = "CustomerID", y = "Total Purchase") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Bar graph: CustomerID vs Frequency
ggplot(customer_data, aes(x = factor(CustomerID), y = Frequency)) +
  geom_bar(stat = "identity", fill = "lightgreen") +
  labs(title = "CustomerID vs Frequency", x = "CustomerID", y = "Frequency") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Bar graph: CustomerID vs CLV
ggplot(customer_data, aes(x = factor(CustomerID), y = CLV)) +
  geom_bar(stat = "identity", fill = "lightcoral") +
  labs(title = "CustomerID vs CLV", x = "CustomerID", y = "Customer Lifetime Value (CLV)") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Correlations

# Load necessary libraries
library(ggplot2)

# Create the dataset
data <- data.frame(
  CustomerID = c(1, 2, 3, 4, 5),
  TotalPurchase = c(780.3532318, 1903.892897, 1477.388187, 1217.384044, 354.2363489),
  Frequency = c(9, 62, 37, 97, 51),
  Recency = c(277, 304, 135, 195, 128),
  CLV = c(70.23179086, 1180.413596, 546.633629, 1180.862523, 180.6605379)
)

# 1. Calculate correlations and p-values using cor.test
cor1 <- cor.test(data$TotalPurchase, data$CLV)
cor2 <- cor.test(data$Frequency, data$CLV)
cor3 <- cor.test(data$TotalPurchase, data$Frequency)

# Print correlations and p-values
cat("Correlation between TotalPurchase and CLV:\n")
cat("Correlation coefficient:", cor1$estimate, "\n")
cat("P-value:", cor1$p.value, "\n\n")

cat("Correlation between Frequency and CLV:\n")
cat("Correlation coefficient:", cor2$estimate, "\n")
cat("P-value:", cor2$p.value, "\n\n")

cat("Correlation between TotalPurchase and Frequency:\n")
cat("Correlation coefficient:", cor3$estimate, "\n")
cat("P-value:", cor3$p.value, "\n\n")

# 2. Generate scatter plots for all three pairs
# Plot 1: TotalPurchase vs CLV
plot1 <- ggplot(data, aes(x=TotalPurchase, y=CLV)) +
  geom_point(color='blue') +
  geom_smooth(method='lm', color='red') +
  ggtitle('TotalPurchase vs CLV') +
  xlab('Total Purchase') +
  ylab('CLV')

# Plot 2: Frequency vs CLV
plot2 <- ggplot(data, aes(x=Frequency, y=CLV)) +
  geom_point(color='green') +
  geom_smooth(method='lm', color='red') +
  ggtitle('Frequency vs CLV') +
  xlab('Frequency') +
  ylab('CLV')

# Plot 3: TotalPurchase vs Frequency
plot3 <- ggplot(data, aes(x=TotalPurchase, y=Frequency)) +
  geom_point(color='purple') +
  geom_smooth(method='lm', color='red') +
  ggtitle('TotalPurchase vs Frequency') +
  xlab('Total Purchase') +
  ylab('Frequency')

# Print the plots
print(plot1)
print(plot2)
print(plot3)
