select distinct (truncate(PRICE,-4)) as PRICE_GROUP,count(PRODUCT_ID) as PRODUCTS
from PRODUCT
group by (truncate(PRICE,-4))
order by (truncate(PRICE,-4))