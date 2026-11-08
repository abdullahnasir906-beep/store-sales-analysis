
-- =========================================================
-- 04_advanced_analysis.sql
-- Purpose: Advanced Purchase Analysis
-- =========================================================


-- =========================================================
-- 1. Category vs Payment Method Analysis
-- Purpose: Compare purchase performance by category
--          and payment method
-- =========================================================

SELECT
    category,
    payment_method,
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY
    category,
    payment_method
ORDER BY
    category,
    total_purchase_amount DESC;


-- =========================================================
-- 2. Electronics Product Performance
-- Purpose: Identify product-level purchase performance
--          within the Electronics category
-- =========================================================

SELECT
    item_purchased,
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount,
    ROUND(MAX(purchase_amount), 2) AS highest_purchase_amount
FROM vw_cleaned_store_sales
WHERE category = 'Electronics'
GROUP BY item_purchased
ORDER BY total_purchase_amount DESC;
