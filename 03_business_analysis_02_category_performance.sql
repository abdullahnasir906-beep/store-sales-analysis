
-- =========================================================
-- 03_business_analysis_02_category_performance.sql
-- Purpose: Category Performance Analysis
-- =========================================================


-- =========================================================
-- 1. Purchase Performance by Category
-- Purpose: Compare purchase volume and value across categories
-- =========================================================

SELECT 
    category,
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY category
ORDER BY total_purchase_amount DESC;
