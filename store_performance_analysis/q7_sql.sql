/* which are the bottom 10 stores when it comes to Quantity Growth (QG)
during the promotional period*/

SELECT 
	Store_id, 
    City, 
    SUM(QG) AS Qty_Growth
FROM fact_sales
GROUP BY store_id, city
ORDER BY SUM(QG) LIMIT 10;