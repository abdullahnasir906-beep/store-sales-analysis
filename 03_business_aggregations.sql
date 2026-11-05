
-- ==============================================================================
-- 03_business_aggregations.sql
-- Purpose: Calculate global business KPIs
-- ==============================================================================

SELECT 
    COUNT(*) AS total_transactions,
    ROUND(SUM(Amount), 2) AS overall_total_sales,
    ROUND(AVG(Amount), 2) AS average_order_value,
    ROUND(
        SUM(Amount * (`discountapplied(%)` / 100)), 
        2
    ) AS total_discount_given

FROM vw_cleaned_staging;
