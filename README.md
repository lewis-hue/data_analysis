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

#### Analysis:
The correlation coefficient of 0.286 indicates a weak positive correlation between TotalPurchase and Frequency. This suggests that, while there is a slight positive relationship, it is not strong. As the total purchase amount increases, the frequency of purchases increases slightly, but this trend is not very pronounced.

The p-value of 0.64 is much higher than 0.05, indicating that the correlation is not statistically significant. This means that the observed relationship between TotalPurchase and Frequency could be due to random chance, and therefore, it is not strong enough to base business decisions on.

#### Business Implication:
Since there is a weak and statistically insignificant relationship between TotalPurchase and Frequency, businesses should not solely rely on total purchase amounts to predict customer purchase frequency. Instead, other factors (such as product type, customer engagement, or promotions) might be influencing purchase frequency. Marketing efforts targeting frequent buyers might not see much impact from just increasing the total spend of customers.

### Scatterplot: TotalPurchase vs CLV
![TotalPurchase vs CLV](https://github.com/lewis-hue/data_analysis/blob/main/TotalPurchase%20vs%20CLV.png)

#### Analysis:
The correlation coefficient of 0.77 indicates a moderate to strong positive correlation between TotalPurchase and CLV. This suggests that customers who spend more tend to have higher lifetime values, which is an expected and logical relationship in most business contexts. Higher spending customers are likely to engage more with the company over time, contributing to their long-term value.

The p-value of 0.12, while above the usual threshold of 0.05, is still relatively close to statistical significance. However, since the p-value is not below 0.05, this correlation is not considered statistically significant in a strict sense, meaning there is still a chance that this correlation could be due to random factors.

#### Business Implication:
Despite the lack of statistical significance at the 0.05 level, the strong positive correlation (0.77) suggests that focusing on high-spending customers is likely to increase CLV over time. Businesses can prioritize these customers for loyalty programs or special offers, which could further encourage higher long-term spending and repeat purchases.

Additionally, while the relationship is not statistically significant in this small sample, it still offers valuable guidance to businesses that high total purchases are often associated with high CLV. This finding can be used as part of a broader strategy to target high-value customers.
### Scatterplot: Frequency vs CLV
![Frequency vs CLV](https://github.com/lewis-hue/data_analysis/blob/main/Frequency%20vs%20CLV.png)

#### Analysis:
The correlation coefficient of 0.81 indicates a strong positive relationship between Frequency and CLV. Customers who purchase more frequently are likely to have higher lifetime value, reflecting the notion that frequent engagement generally leads to longer customer retention and more spending over time.

The p-value of 0.09 is still above the typical threshold of 0.05, which suggests that this correlation is not statistically significant at the 5% level. However, it is very close to being significant, meaning it could still represent a meaningful trend, though more data would be needed for stronger conclusions.

#### Business Implication:
The strong positive correlation between frequency and CLV highlights the importance of customer retention. Businesses should focus on increasing purchase frequency through loyalty programs, personalized promotions, or subscription models to boost CLV. Even though the p-value isn't below the traditional threshold, the strength of the correlation suggests that investing in strategies to increase customer engagement and repeat purchases can be highly beneficial in increasing overall CLV.
```{r}
