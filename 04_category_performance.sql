-- Kemaskini semula View 04
CREATE OR REPLACE VIEW vw_category_sales AS
SELECT
    Category,
    ROUND(SUM(Amount), 2) AS total_sales
FROM store_sales
GROUP BY Category;

-- Panggil balik hasil View
SELECT * 
FROM vw_category_sales 
ORDER BY total_sales DESC;