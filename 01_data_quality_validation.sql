
-- =========================================================
-- 01_data_quality_validation.sql
-- Purpose: Validate data quality in the raw dataset
-- =========================================================


-- 1. Check Blank Text Values
-- Identify empty or whitespace-only values

SELECT
    SUM(CASE WHEN TRIM(Gender) = '' THEN 1 ELSE 0 END) AS blank_gender,
    SUM(CASE WHEN TRIM(Category) = '' THEN 1 ELSE 0 END) AS blank_category,
    SUM(CASE WHEN TRIM(ItemPurchased) = '' THEN 1 ELSE 0 END) AS blank_item,
    SUM(CASE WHEN TRIM(Season) = '' THEN 1 ELSE 0 END) AS blank_season,
    SUM(CASE WHEN TRIM(PaymentMethod) = '' THEN 1 ELSE 0 END) AS blank_payment_method
FROM store_sales;


-- 2. Check Potentially Invalid Numeric Values
-- Age range reflects observed dataset values, not a confirmed business rule

SELECT
    SUM(CASE WHEN Age < 20 OR Age > 70 THEN 1 ELSE 0 END) AS age_outside_observed_range,
    SUM(CASE WHEN Amount < 0 THEN 1 ELSE 0 END) AS negative_amount,
    SUM(CASE WHEN ItemRating < 1 OR ItemRating > 5 THEN 1 ELSE 0 END) AS invalid_rating,
    SUM(CASE WHEN `DiscountApplied(%)` < 0
                  OR `DiscountApplied(%)` > 100
             THEN 1 ELSE 0 END) AS invalid_discount,
    SUM(CASE WHEN PreviousPurchases < 0 THEN 1 ELSE 0 END) AS invalid_previous_purchases
FROM store_sales;


-- 3. Check Categorical Value Consistency

SELECT DISTINCT Gender
FROM store_sales
ORDER BY Gender;

SELECT DISTINCT Category
FROM store_sales
ORDER BY Category;

SELECT DISTINCT Season
FROM store_sales
ORDER BY Season;

SELECT DISTINCT PaymentMethod
FROM store_sales
ORDER BY PaymentMethod;

SELECT DISTINCT ItemPurchased
FROM store_sales
ORDER BY ItemPurchased;


-- 4. Validate Category and Product Mapping
-- Identify product-category combinations in the dataset

SELECT
    TRIM(Category) AS category,
    TRIM(ItemPurchased) AS item_purchased,
    COUNT(*) AS total_records
FROM store_sales
GROUP BY
    TRIM(Category),
    TRIM(ItemPurchased)
ORDER BY
    category,
    item_purchased;
