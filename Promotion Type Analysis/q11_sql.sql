/* Is there a significant difference in the performance of discount based
promotions versus BOGOF or cashback promotions */

SELECT
	Promo_type,
    CONCAT(ROUND(SUM(RG)/1000000,2), " M") AS RG,
    CONCAT(ROUND(SUM(QG)/1000,2), " K") AS QG
FROM
	Fact_sales
GROUP BY Promo_type
ORDER BY RG DESC;