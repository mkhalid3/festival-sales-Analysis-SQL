/* Which promotions strike the best balance Quantity Growth and maintaining
healthy margins */

SELECT
	Promo_type,
    CONCAT(ROUND(SUM(RG)/1000000, 2), " M") AS Revenue_Growth,
    CONCAT(ROUND(SUM(QG)/1000, 2), " K") AS QG
FROM
	Fact_sales
GROUP BY Promo_type
HAVING SUM(RG) > SUM(revenue_before_promo) OR SUM(QG) > SUM(qty_sold_before);
