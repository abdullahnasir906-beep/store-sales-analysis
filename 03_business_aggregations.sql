-- ==============================================================================
-- 03_business_aggregations.sql
-- penerangan: fasa pengiraan metrik global (KPI keseluruhan perniagaan).
-- ==============================================================================

-- kira jumlah keseluruhan prestasi perniagaan secara global tanpa pecahan kategori
SELECT 
    count(*) as total_transactions,
    round(sum(Amount), 2) as overall_total_sales,
    round(avg(Amount), 2) as average_order_value,
    round(sum(Amount * (`DiscountApplied(%)` / 100)), 2) as total_discount_given
FROM store_sales;