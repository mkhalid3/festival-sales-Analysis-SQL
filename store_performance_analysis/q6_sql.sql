/* Which are the top ten stores in terms of RG generated from the promotions*/

SELECT
	Store_id, 
    City,
    CONCAT(ROUND(SUM(RG)/1000000, 2), " M") AS RG
FROM fact_sales
GROUP BY store_id, city
ORDER BY RG DESC LIMIT 10;