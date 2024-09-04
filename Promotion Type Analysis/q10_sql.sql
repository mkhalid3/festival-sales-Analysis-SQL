/* what are the botoom two promotion types in terms of their impact on Quantity Growth (QG) */

SELECT
	Promo_type,
	SUM(QG) AS QG
FROM
	fact_sales
GROUP BY promo_type
ORDER BY QG LIMIT 2;
