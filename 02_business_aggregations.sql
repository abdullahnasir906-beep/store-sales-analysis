-- Kira Total Jualan Mengikut Kategori Barang --
SELECT CATEGORY, ROUND(SUM(AMOUNT), 2) AS TotalSales
FROM store_sales
GROUP BY Category
ORDER BY TotalSales DESC;
