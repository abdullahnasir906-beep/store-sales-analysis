-- =========================================================
-- 03_business_analysis_03_demographics.sql
-- Purpose: Age Group & Gender Analysis
-- =========================================================

SELECT 
    CASE 
        WHEN age BETWEEN 20 AND 30 THEN '20-30'
        WHEN age BETWEEN 31 AND 40 THEN '31-40'
        WHEN age BETWEEN 41 AND 50 THEN '41-50'
        WHEN age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '61+' 
    END AS age_group,
    gender,
    COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY age_group, gender
ORDER BY age_group, gender;