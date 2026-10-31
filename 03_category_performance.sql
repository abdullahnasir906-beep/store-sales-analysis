-- Cipta View Untuk Simpan Logik Pengiraan Jualan Kategori --
CREATE OR REPLACE VIEW vw_category_sales AS
SELECT
	Category,
	ROUND(SUM(Amount), 2) AS TotalSales
FROM store_sales
GROUP BY Category;

-- Panggil Semula View Yang Telah Dicipta --
SELECT * FROM vw_category_sales ORDER BY TotalSales DESC;