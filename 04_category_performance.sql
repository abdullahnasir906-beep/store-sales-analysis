
-- ==============================================================================
-- 04_category_performance.sql
-- Purpose: Analyse sales performance by product category
-- ==============================================================================

-- 1. Create category sales view
CREATE OR REPLACE VIEW vw_category_sales AS

SELECT
    Category,
    ROUND(SUM(Amount), 2) AS total_sales,
    COUNT(*) AS total_purchases,
    ROUND(AVG(Amount), 2) AS average_purchase

FROM vw_cleaned_staging

GROUP BY Category;


-- 2. Retrieve category performance
SELECT *
FROM vw_category_sales
ORDER BY total_sales DESC;
