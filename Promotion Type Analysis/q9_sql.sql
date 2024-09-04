/* what are the two promotion types that resulted in the highest Revenue Growth */

SELECT 
	Promo_type,
    CONCAT(ROUND(SUM(RG)/1000000, 2), " M") AS Revenue_Growth
FROM
	fact_sales
GROUP BY promo_type
ORDER BY Revenue_Growth DESC LIMIT 2;