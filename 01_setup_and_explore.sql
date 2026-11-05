
-- =========================================================
-- 01_setup_and_explore.sql
-- Purpose: Initial data exploration
-- =========================================================

-- 1. Preview raw data
SELECT *
FROM store_sales
LIMIT 10;


-- 2. Check total number of records
SELECT
    COUNT(*) AS TotalRecords
FROM store_sales;


-- 3. Explore sales by product category
SELECT
    Category,
    ROUND(SUM(Amount), 2) AS TotalSales,
    COUNT(*) AS TotalPurchases,
    ROUND(AVG(Amount), 2) AS AveragePurchase
FROM store_sales
GROUP BY Category
ORDER BY TotalSales DESC;
