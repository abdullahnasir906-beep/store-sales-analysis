-- =========================================================
-- 03_business_analysis_02_category_performance.sql
-- Purpose: Category Performance Analysis
-- =========================================================

SELECT 
    category,
    COUNT(*) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY category
ORDER BY total_purchase_amount DESC;