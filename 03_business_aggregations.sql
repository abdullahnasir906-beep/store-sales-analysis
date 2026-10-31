-- ==============================================================================
-- 03_business_aggregations.sql
-- penerangan: fasa pengiraan metrik perniagaan untuk analisis jualan mengikut kategori.
-- ==============================================================================

-- kira jumlah keseluruhan jualan mengikut kategori produk
select 
    category, 
    round(sum(amount), 2) as total_sales
from store_sales
group by category
order by total_sales desc;