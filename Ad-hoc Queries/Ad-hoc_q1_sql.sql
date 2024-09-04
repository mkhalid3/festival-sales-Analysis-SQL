/* Provide a list with a base price greater than 500 and that
are featured in promo_type of BOGOF(Buy one get one free). */
use atliq_mart;
SELECT 
	DISTINCT p.Product_name, 
    f.Base_price
FROM fact_events f JOIN dim_products p
	ON f.product_code = p.product_code
WHERE f.promo_type = 'BOGOF' AND f.base_price>500;