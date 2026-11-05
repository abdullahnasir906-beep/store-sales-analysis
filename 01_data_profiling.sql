-- =========================================================
-- 01_data_profiling.sql
-- Purpose: Data Profiling & Quality Audit on Raw Table
-- =========================================================

-- 1. Preview raw data to inspect columns and sample rows
SELECT *
FROM store_sales
LIMIT 10;


-- 2. Check total volume and unique CustomerID count
-- (To verify if CustomerID represents unique customers or repeating records)
SELECT 
    COUNT(*) AS total_records,
    COUNT(DISTINCT CustomerID) AS unique_customers
FROM store_sales;


-- 3. Check for NULL or missing values across all columns
SELECT
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS null_age,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS null_gender,
    SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS null_category,
    SUM(CASE WHEN ItemPurchased IS NULL THEN 1 ELSE 0 END) AS null_item_purchased,
    SUM(CASE WHEN Amount IS NULL THEN 1 ELSE 0 END) AS null_amount,
    SUM(CASE WHEN Season IS NULL THEN 1 ELSE 0 END) AS null_season,
    SUM(CASE WHEN PaymentMethod IS NULL THEN 1 ELSE 0 END) AS null_payment_method,
    SUM(CASE WHEN ItemRating IS NULL THEN 1 ELSE 0 END) AS null_item_rating,
    SUM(CASE WHEN `DiscountApplied(%)` IS NULL THEN 1 ELSE 0 END) AS null_discount,
    SUM(CASE WHEN PreviousPurchases IS NULL THEN 1 ELSE 0 END) AS null_previous_purchases
FROM store_sales;


-- 4. Check exact duplicate rows
SELECT 
    CustomerID, Age, Gender, Category, ItemPurchased, 
    Amount, Season, PaymentMethod, ItemRating, 
    `DiscountApplied(%)`, PreviousPurchases,
    COUNT(*) AS duplicate_count
FROM store_sales
GROUP BY 
    CustomerID, Age, Gender, Category, ItemPurchased, 
    Amount, Season, PaymentMethod, ItemRating, 
    `DiscountApplied(%)`, PreviousPurchases
HAVING COUNT(*) > 1;


-- 5. Check value ranges and distributions (Min, Max, Avg)
SELECT 
    MIN(Age) AS min_age,
    MAX(Age) AS max_age,
    ROUND(AVG(Age), 2) AS avg_age,
    
    MIN(Amount) AS min_amount,
    MAX(Amount) AS max_amount,
    ROUND(AVG(Amount), 2) AS avg_amount,
    
    MIN(ItemRating) AS min_rating,
    MAX(ItemRating) AS max_rating,
    ROUND(AVG(ItemRating), 2) AS avg_rating,
    
    MIN(`DiscountApplied(%)`) AS min_discount,
    MAX(`DiscountApplied(%)`) AS max_discount,
    ROUND(AVG(`DiscountApplied(%)`), 2) AS avg_discount
FROM store_sales;