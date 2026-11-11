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


-- =========================================================
-- 3. Product Performance & Volume Analysis
-- Purpose: Classify items by purchase volume and revenue contribution
--          (Addressing High-Selling vs Slow-Moving items)
-- =========================================================

SELECT
    category,
    item_purchased,
    COUNT(*) AS purchase_volume,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_value,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount,
    ROUND(AVG(item_rating), 2) AS avg_item_rating
FROM vw_cleaned_store_sales
GROUP BY
    category,
    item_purchased
ORDER BY
    total_purchase_value DESC;


-- =========================================================
-- 4. Discount Banding & Revenue Impact Analysis
-- Purpose: Evaluate how different discount ranges affect
--          average purchase amounts and ratings
-- =========================================================

SELECT 
    CASE 
        WHEN discount_percentage BETWEEN 0 AND 10 THEN '01. 0 - 10%'
        WHEN discount_percentage BETWEEN 11 AND 20 THEN '02. 11 - 20%'
        WHEN discount_percentage BETWEEN 21 AND 30 THEN '03. 21 - 30%'
        ELSE '04. Above 30%'
    END AS discount_band,
    COUNT(*) AS total_transactions,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_value,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount,
    ROUND(AVG(item_rating), 2) AS avg_item_rating
FROM vw_cleaned_store_sales
GROUP BY discount_band
ORDER BY discount_band;