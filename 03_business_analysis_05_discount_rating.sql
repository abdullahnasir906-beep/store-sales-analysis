-- =========================================================
-- 03_business_analysis_05_discount_rating.sql
-- Purpose: Discount & Item Rating Analysis
-- =========================================================

-- 1. Discount Tier Analysis
SELECT 
    CASE 
        WHEN discount_percentage = 0 THEN 'No Discount (0%)'
        WHEN discount_percentage BETWEEN 1 AND 10 THEN '1 - 10%'
        WHEN discount_percentage BETWEEN 11 AND 20 THEN '11 - 20%'
        ELSE '21% and Above' 
    END AS discount_tier,
    COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY discount_tier
ORDER BY total_purchase_amount DESC;


-- 2. Item Rating Analysis
SELECT 
    item_rating,
    COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY item_rating
ORDER BY item_rating DESC;