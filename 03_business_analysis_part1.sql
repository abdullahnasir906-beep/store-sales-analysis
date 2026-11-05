-- =========================================================
-- 03_business_analysis_part1.sql
-- Purpose: Overall Sales Performance & Transaction Metrics
-- Uses: vw_cleaned_store_sales VIEW
-- =========================================================

-- 1. Overall Purchase Metrics (Total Sales, Total Transactions, Average Order Value)
SELECT 
    COUNT(customer_id) AS total_transactions,
    SUM(purchase_amount) AS total_revenue,
    AVG(purchase_amount) AS average_order_value,
    MIN(purchase_amount) AS min_purchase_amount,
    MAX(purchase_amount) AS max_purchase_amount
FROM vw_cleaned_store_sales;