-- =========================================================
-- 02_cleaned_staging.sql
-- Purpose: Create Cleaned Staging VIEW in snake_case 
--          without altering the raw underlying table.
-- =========================================================

CREATE OR REPLACE VIEW vw_cleaned_store_sales AS
SELECT 
    CustomerID AS customer_id,
    Age AS age,
    TRIM(Gender) AS gender,
    TRIM(Category) AS category,
    TRIM(ItemPurchased) AS item_purchased,
    Amount AS purchase_amount,
    TRIM(Season) AS season,
    TRIM(PaymentMethod) AS payment_method,
    ItemRating AS item_rating,
    `DiscountApplied(%)` AS discount_percentage,
    PreviousPurchases AS previous_purchases
FROM store_sales;