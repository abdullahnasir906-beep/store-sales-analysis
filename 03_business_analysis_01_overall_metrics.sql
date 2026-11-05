-- =========================================================
-- 03_business_analysis_01_overall_metrics.sql
-- Purpose: Overall Purchase Metrics & KPIs
-- =========================================================

SELECT 
    COUNT(CustomerID) AS total_transactions,
    SUM(Amount) AS total_revenue,
    AVG(Amount) AS average_order_value,
    MIN(Amount) AS min_purchase_amount,
    MAX(Amount) AS max_purchase_amount
FROM store_sales;