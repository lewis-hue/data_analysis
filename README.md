# DATA ANALYSIS
## Data Analysis with R Studio

In this analysis, we are looking at various metrics for a set of customers to understand patterns related to `TotalPurchase`, `Frequency`, and `Customer Lifetime Value (CLV)`.

### Bar graph: CustomerID vs TotalPurchase
![CustomerID vs Total Purchase](https://github.com/lewis-hue/data_analysis/blob/main/CustomerID%20vs%20Total%20Purchase.png)

#### Analysis:
The bar graph above visualizes the relationship between `CustomerID` and `TotalPurchase`. It shows how much each customer has spent, providing a direct way to assess high-spending customers.

#### Business Implication:
- Companies can use this information to identify high-value customers. By focusing on these customers, businesses can tailor marketing campaigns to increase loyalty and repeat purchases.
- Offering targeted incentives, such as discounts or personalized deals, could drive more revenue from high-value customers.

### Bar graph: CustomerID vs Frequency
![CustomerID vs Frequency](https://github.com/lewis-hue/data_analysis/blob/main/CustomerID%20vs%20Frequency.png)

#### Analysis:
This bar graph illustrates how frequently each customer makes purchases. Customers with higher frequency may represent loyal buyers.

#### Business Implication:
- Businesses can create loyalty programs or rewards for frequent buyers to keep them engaged.
- Understanding purchasing behavior can help businesses develop retention strategies, leading to a higher lifetime value for each customer.

### Bar graph: CustomerID vs Customer Lifetime Value
![CustomerID vs CLV](https://github.com/lewis-hue/data_analysis/blob/main/CustomerID%20vs%20CLV.png)

#### Analysis:
The bar graph displays `Customer Lifetime Value (CLV)` for each customer, which quantifies the total value a customer brings to the business over time.

#### Business Implication:
- High CLV customers are essential for long-term business success. Companies should focus efforts on retaining these customers.
- CLV can also help businesses decide how much to invest in acquiring new customers based on expected returns.

### Correlation Co-efficients and P-values

#### TotalPurchase vs Frequency

# Correlation between TotalPurchase, CLV, and Frequency
![TotalPurchase, CLV, and Frequency](https://github.com/lewis-hue/data_analysis/blob/main/Correlation%20Co-efficients%20and%20P-values.png)

### Scatterplot: TotalPurchase vs Frequency
![TotalPurchase vs Frequency](https://github.com/lewis-hue/data_analysis/blob/main/TotalPurchase%20vs%20Frequency.png)

### Scatterplot: TotalPurchase vs CLV
![TotalPurchase vs CLV](https://github.com/lewis-hue/data_analysis/blob/main/TotalPurchase%20vs%20CLV.png)

### Scatterplot: Frequency vs CLV
![Frequency vs CLV](https://github.com/lewis-hue/data_analysis/blob/main/Frequency%20vs%20CLV.png)
```{r}
