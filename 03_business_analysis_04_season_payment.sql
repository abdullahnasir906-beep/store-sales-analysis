
-- =========================================================
-- 03_business_analysis_04_season_payment.sql
-- Purpose: Season & Payment Method Analysis
-- =========================================================


-- =========================================================
-- 1. Seasonal Purchase Analysis
-- Purpose: Compare purchase volume and value across seasons
-- =========================================================

SELECT 
    season,
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY season
ORDER BY total_purchase_amount DESC;


-- =========================================================
-- 2. Payment Method Analysis
-- Purpose: Compare purchase metrics across payment methods
-- =========================================================

SELECT 
    payment_method,
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_amount
FROM vw_cleaned_store_sales
GROUP BY payment_method
ORDER BY total_purchase_amount DESC;
