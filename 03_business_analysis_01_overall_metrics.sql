
-- =========================================================
-- 03_business_analysis_01_overall_metrics.sql
-- Purpose: Overall Purchase Metrics & KPIs
-- =========================================================

USE store_sales_db;


-- =========================================================
-- 1. Overall Purchase Metrics
-- Purpose: Calculate key purchase metrics across all records
-- =========================================================

SELECT 
    COUNT(*) AS total_purchase_records,
    ROUND(SUM(purchase_amount), 2) AS total_purchase_amount,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount,
    MIN(purchase_amount) AS min_purchase_amount,
    MAX(purchase_amount) AS max_purchase_amount
FROM vw_cleaned_store_sales;
