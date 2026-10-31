<<<<<<< HEAD
-- ==============================================================================
-- 01_setup_and_explore.sql
-- penerangan: skrip awal untuk semak struktur jadual dan teroka data mentah.
-- ==============================================================================

-- semak 10 baris pertama data dalam jadual asal
select * 
from store_sales 
limit 10;
=======
-- Nak Tengok Semua Data Dalam Satu Jadual--
SELECT * FROM store_sales LIMIT 10;
-- Nak Tapis Data Aatau Kira Jumlah--
-- Kira Jumlah Total Jualan Mengikut Kategori Barang --
SELECT Category, Round(Sum(Amount), 2) As TotalSales
FROM store_sales
GROUP BY Category
ORDER BY TotalSales Desc;
>>>>>>> 5c57f1e5fb54c256249e337bf30c7c51f9892722
