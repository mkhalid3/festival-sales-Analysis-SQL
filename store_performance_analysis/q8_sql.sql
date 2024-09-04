/* how does the performance of store vary by city? Are there any common charateristics among the 
top-performing stores that could be leveraged across the stores? */

SELECT
	Store_id, city,
    SUM(qty_sold_before) AS Quantity_sold_before,
    SUM(qty_sold_after) AS Quantity_sold_after,
    CONCAT(ROUND(SUM(revenue_before_promo)/1000000, 2), " M") AS Revenue_Before,
    CONCAT(ROUND(SUM(revenue_after_promo)/1000000, 2), " M") AS Revenue_After,
    CONCAT(ROUND(SUM(RG)/1000000, 2), " M") AS Revenue_Growth,
    CONCAT(ROUND(SUM(QG)/1000, 2), " K") AS Quantity_Growth
FROM
	fact_sales
GROUP BY
	store_id, city
ORDER BY Revenue_Growth DESC LIMIT 10;
