-- ==============================================================================
-- 04_advanced_views.sql
-- penerangan: penciptaan virtual table (view) untuk menyimpan logik pengiraan
--             bagi kegunaan pelaporan dan integrasi dashboard luaran.
-- ==============================================================================

-- cipta atau kemaskini view untuk simpan logik agregasi jualan kategori
create or replace view vw_category_sales as
select
    category,
    round(sum(amount), 2) as total_sales
from store_sales
group by category;

-- panggil semula view yang telah siap dibina
select * 
from vw_category_sales 
order by total_sales desc;