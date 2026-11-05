-- =========================================================
-- 03_business_analysis_04_season_payment.sql
-- Purpose: Season & Payment Method Analysis
-- =========================================================

SELECT 
    Season,
    COUNT(CustomerID) AS total_orders,
    ROUND(SUM(Amount), 2) AS total_revenue,
    ROUND(AVG(Amount), 2) AS avg_order_value
FROM store_sales
GROUP BY Season
ORDER BY total_revenue DESC;