-- =========================================================
-- 03_business_analysis.sql
-- Purpose: Business Analysis (Overall & Category Performance)
-- =========================================================

-- Part 1: Overall Purchase Metrics
SELECT 
    COUNT(customer_id) AS total_transactions,
    SUM(purchase_amount) AS total_revenue,
    AVG(purchase_amount) AS average_order_value,
    MIN(purchase_amount) AS min_purchase_amount,
    MAX(purchase_amount) AS max_purchase_amount
FROM vw_cleaned_store_sales;


-- Part 2: Category Performance Analysis
SELECT 
    category,
    COUNT(customer_id) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM vw_cleaned_store_sales
GROUP BY category
ORDER BY total_revenue DESC;