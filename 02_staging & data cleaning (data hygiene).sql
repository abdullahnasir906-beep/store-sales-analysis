-- ==============================================================================
-- 02_staging_and_cleaning.sql
-- penerangan: fasa data hygiene untuk tapisan awal, buang nilai kosong/negatif,
--             serta mengesan dan membuang rekod bertindih (duplicates).
-- ==============================================================================

with cleaned_staging as (
    select 
        customerid,
        age,
        gender,
        -- guna trim untuk elak ruang kosong tersembunyi pada teks
        trim(category) as category,
        trim(itempurchased) as itempurchased,
        amount,
        season,
        paymentmethod,
        itemrating,
        `discountapplied(%)`,
        previouspurchases,
        -- guna window function untuk kenal pasti baris berulang berdasarkan customerid
        row_number() over (
            partition by customerid 
            order by customerid desc
        ) as row_num
    from store_sales
    where customerid is not null 
      and amount is not null
)
select 
    customerid,
    age,
    gender,
    category,
    itempurchased,
    amount,
    season,
    paymentmethod,
    itemrating,
    `discountapplied(%)`,
    previouspurchases
from cleaned_staging
-- tapis hanya rekod unik pertama dan pastikan nilai jualan positif (> 0)
where row_num = 1 
  and amount > 0;