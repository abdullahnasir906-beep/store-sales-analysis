
-- =========================================================
-- 03_business_analysis_05_discount_rating.sql
-- Purpose: Discount & Item Rating Analysis
-- =========================================================


-- =========================================================
-- 1. Discount Tier Analysis
-- Purpose: Analyze purchase metrics by discount tier
-- =========================================================

SELECT 
    CASE 
        WHEN discount_percentage IS NULL THEN 'Unknown'
        WHEN discount_percentage < 0 OR discount_percentage > 100 THEN 'Invalid'
        WHEN discount_percentage = 0 THEN 'No Discount (0%)'
        WHEN discount_percentage > 0 AND discount_percentage <= 10 THEN '1 - 10%'
        WHEN discount_percentage > 10 AND discount_percentage <= 20 THEN '11 - 20%'
        WHEN discount_percentage > 20 AND discount_percentage <= 100 THEN '21% and Above'
        ELSE 'Unclassified'
    END AS discount_tier,
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY discount_tier
ORDER BY total_purchase_amount DESC;


-- =========================================================
-- 2. Item Rating Analysis
-- Purpose: Analyze purchase metrics by item rating
-- =========================================================

SELECT 
    item_rating,
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY item_rating
ORDER BY item_rating DESC;
