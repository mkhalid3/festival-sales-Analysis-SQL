/* Are there specific products that respond exceptionally well or poor to promotions */


SELECT
	Product_name, 
    Revenue_Growth, 
    Ranking
FROM(
	SELECT
		Product_name,
		CONCAT(ROUND(SUM(RG)/1000000,2), " M") AS Revenue_Growth,
		RANK() OVER(ORDER BY SUM(RG) DESC) AS Ranking
	FROM
		Fact_sales
	GROUP BY Product_name
	ORDER BY Ranking) AS subquery
WHERE ranking<4 OR ranking>12;
