
/* Generate report that displays each campaign along with the 
 total revenue generated before and after the campaign */
SELECT
	campaign_name,
    CONCAT(ROUND(SUM(revenue_before_promo)/1000000, 2), " M") AS Revenue_before_promo,
    CONCAT(ROUND(SUM(revenue_after_promo)/1000000, 2), " M") AS Revenue_after_promo
FROM fact_events
GROUP BY campaign_name;