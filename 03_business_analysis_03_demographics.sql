-- =========================================================
-- 03_business_analysis_03_demographics.sql
-- Purpose: Age Group & Gender Analysis
-- =========================================================

SELECT 
    CASE 
        WHEN Age BETWEEN 20 AND 30 THEN '20-30'
        WHEN Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '61+' 
    END AS age_group,
    Gender,
    COUNT(CustomerID) AS total_orders,
    ROUND(SUM(Amount), 2) AS total_revenue,
    ROUND(AVG(Amount), 2) AS avg_order_value
FROM store_sales
GROUP BY age_group, Gender
ORDER BY age_group, Gender;