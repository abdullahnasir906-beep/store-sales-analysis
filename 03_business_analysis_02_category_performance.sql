-- =========================================================
-- 03_business_analysis_02_category_performance.sql
-- Purpose: Category Performance Analysis
-- =========================================================

SELECT 
    Category,
    COUNT(CustomerID) AS total_orders,
    ROUND(SUM(Amount), 2) AS total_revenue,
    ROUND(AVG(Amount), 2) AS avg_order_value
FROM store_sales
GROUP BY Category
ORDER BY total_revenue DESC;