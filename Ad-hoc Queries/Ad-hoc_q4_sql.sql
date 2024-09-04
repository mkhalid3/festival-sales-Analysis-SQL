# produce a report that calculates the change in sold qty percentage (QC%) for each category during the
# Diwali campaign, Additionally provide rankings for the categories based on thier QC%

SELECT
	Category, 
    `QG%` , 
    RANK() OVER(ORDER BY `QG%` DESC) AS Ranking
FROM
(
	SELECT Category,
    ROUND((SUM(QG)/SUM(qty_sold_before))*100, 2) AS `QG%`
    FROM fact_sales
	WHERE campaign_name="Diwali"
	GROUP BY category
) AS subquery;
