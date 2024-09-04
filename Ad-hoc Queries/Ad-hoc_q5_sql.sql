/* Create a report featuring the top 5 products ranked by revenue change percentage(RC_percentage)
across all campaigns*/

SELECT 
	Product_name,
    ROUND((SUM(RG)/SUM(revenue_before_promo))*100, 2) AS `RG%`
FROM fact_sales
GROUP BY product_name
ORDER BY `RG%` DESC LIMIT 5;
