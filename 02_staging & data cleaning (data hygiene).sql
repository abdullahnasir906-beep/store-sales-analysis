
-- ==============================================================================
-- 02_staging_and_cleaning.sql
-- Purpose: Initial data cleaning and duplicate handling
-- ==============================================================================

CREATE OR REPLACE VIEW vw_cleaned_staging AS

SELECT DISTINCT
    customerid,
    age,
    TRIM(gender) AS gender,
    TRIM(category) AS category,
    TRIM(itempurchased) AS itempurchased,
    amount,
    TRIM(season) AS season,
    TRIM(paymentmethod) AS paymentmethod,
    itemrating,
    `discountapplied(%)`,
    previouspurchases

FROM store_sales

WHERE customerid IS NOT NULL
  AND amount IS NOT NULL
  AND amount > 0;
