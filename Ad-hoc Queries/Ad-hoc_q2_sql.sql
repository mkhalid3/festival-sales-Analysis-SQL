
# provide a report outlinig the number of stores situated in each city

SELECT 
	City, 
    COUNT(store_id) AS Total_stores
FROM dim_stores
GROUP BY city
ORDER BY total_stores DESC;