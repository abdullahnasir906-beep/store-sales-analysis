-- =========================================================
-- Part 4: Season & Payment Method Analysis
-- Purpose: Evaluate sales performance by season and payment method
-- =========================================================

-- 4.1 Sales by Season
SELECT 
    season,
    COUNT(customer_id) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM vw_cleaned_store_sales
GROUP BY season
ORDER BY total_revenue DESC;

-- 4.2 Sales by Payment Method
SELECT 
    payment_method,
    COUNT(customer_id) AS total_orders,
    ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM vw_cleaned_store_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;