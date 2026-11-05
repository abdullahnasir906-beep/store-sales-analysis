-- =========================================================
-- Part 5: Discount & Item Rating Analysis
-- Purpose: Evaluate the impact of discounts and customer ratings on sales
-- =========================================================

-- 5.1 Sales Performance by Discount Percentage Range
SELECT 
    CASE 
        WHEN discount_percentage = 0 THEN 'No Discount (0%)'
        WHEN discount_percentage BETWEEN 1 AND 10 THEN '1 - 10%'
        WHEN discount_percentage BETWEEN 11 AND 20 THEN '11 - 20%'
        ELSE '21% and Above' 
    END AS discount_tier,
    COUNT(customer_id) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM vw_cleaned_store_sales
GROUP BY discount_tier
ORDER BY total_revenue DESC;

-- 5.2 Sales Performance by Item Rating Ranges
SELECT 
    CASE 
        WHEN item_rating < 3.0 THEN 'Low (< 3.0)'
        WHEN item_rating BETWEEN 3.0 AND 3.9 THEN 'Average (3.0 - 3.9)'
        WHEN item_rating BETWEEN 4.0 AND 4.5 THEN 'Good (4.0 - 4.5)'
        ELSE 'Excellent (4.6 - 5.0)' 
    END AS rating_tier,
    COUNT(customer_id) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM vw_cleaned_store_sales
GROUP BY rating_tier
ORDER BY total_revenue DESC;