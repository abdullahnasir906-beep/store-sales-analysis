-- =========================================================
-- 03_business_analysis_05_discount_rating.sql
-- Purpose: Discount & Item Rating Analysis
-- =========================================================

SELECT 
    CASE 
        WHEN `DiscountApplied(%)` = 0 THEN 'No Discount (0%)'
        WHEN `DiscountApplied(%)` BETWEEN 1 AND 10 THEN '1 - 10%'
        WHEN `DiscountApplied(%)` BETWEEN 11 AND 20 THEN '11 - 20%'
        ELSE '21% and Above' 
    END AS discount_tier,
    COUNT(CustomerID) AS total_orders,
    ROUND(SUM(Amount), 2) AS total_revenue,
    ROUND(AVG(Amount), 2) AS avg_order_value
FROM store_sales
GROUP BY discount_tier
ORDER BY total_revenue DESC;