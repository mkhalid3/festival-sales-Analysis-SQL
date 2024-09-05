# Impact Analysis of Festive Promotionson Sales (SQL)
## Project Overview
This project involves the analysis of sales data during festive periods, specifically Diwali and Sankranti, to assess the impact of various promotional activities on sales performance across different product categories and store locations. The analysis focuses on key metrics such as Quantity Growth (QG) and Revenue Growth (RG).

## Objectives
Evaluate the effectiveness of different promotions (e.g., BOGOF, cashback offer, and discount offers) on sales.  
Identify top-performing product categories and stores during the festivals.  
Provide insights into regional sales trends and product-specific revenue growth.  

## Data
The analysis is conducted using data sourced from AtliQ Mart's internal databases. The primary datasets utilized include fact_events, dim_products, dim_stores, and fact_sales. These datasets provide comprehensive details on product sales, store locations, promotional activities, and campaign-generated revenues.  

Store Location: The city where the store is located (e.g., Bengaluru, Chennai, Mysuru).  
Product Category: Categories such as Home Appliances, Grocery and Staples, Home Care, etc.  
Quantity Sold: Number of units sold.  
Promotional Activities: Details of promotions applied (e.g., BOGOF, Cashback, discounts).  

## SQL Queries and Analysis
The analysis was conducted using SQL queries to extract, aggregate, and analyze the sales data. Key queries include:  

 Revenue Growth Analysis: Calculation of Revenue Growth (RG) for each product and store.  
 Quantity Growth Analysis: Determination of Quantity Growth (QG) across different product categories and store locations.  
 Promotional Impact: Analysis of the effectiveness of promotional activities on sales performance.  

## Key Insights
### Regional Performance:

Stores in Bengaluru, Chennai, Hyderabad, and Mysuru recorded significant increases in quantities sold.
Vishakhapatnam, Mangalore, and Trivandrum showed lower performance during the promotional period.

### Category Performance:

Diwali: Combo1, Home Appliances, and Home Care had the highest QG.  
Sankranti: Grocery and Staples, Home Appliances, and Home Care led in QG.

### Promotional Effectiveness:

'500 Cashback' and 'Buy One Get One Free (BOGOF)' promotions were most effective in driving both Quantity and Revenue Growth.
Discount-based promotions were less effective.

### Top Products by Revenue Growth:

Atliq Waterproof Immersion Rod  
Atliq High Glo 15W LED Bulb  
Atliq Double Bedsheet Set  
Atliq Curtains  
Atliq Farm Chakki Atta

## Conclusion
This project provides actionable insights into the impact of festive promotions on sales performance at Atliq Mart. The findings can guide future promotional strategies and inventory management during peak sales periods.
