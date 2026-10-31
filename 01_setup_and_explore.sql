-- Nak Tengok Semua Data Dalam Satu Jadual--
SELECT * FROM store_sales LIMIT 10;
-- Nak Tapis Data Aatau Kira Jumlah--
-- Kira Jumlah Total Jualan Mengikut Kategori Barang --
SELECT Category, Round(Sum(Amount), 2) As TotalSales
FROM store_sales
GROUP BY Category
ORDER BY TotalSales Desc;