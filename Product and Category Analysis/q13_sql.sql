# Which product category provide most significant lift in sales from the promotions

SELECT 
	Category,
    CONCAT(ROUND(SUM(QG)/1000, 2), " K") AS Quantity_Growth
FROM
	Fact_sales
GROUP BY category
ORDER BY SUM(QG) DESC;
