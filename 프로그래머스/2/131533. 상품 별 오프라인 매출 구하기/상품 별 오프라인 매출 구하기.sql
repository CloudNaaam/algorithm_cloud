select P.PRODUCT_CODE as PRODUCT_CODE, (P.PRICE*sum(O.SALES_AMOUNT)) as SALES
from PRODUCT as P
join OFFLINE_SALE as O
on P.PRODUCT_ID = O.PRODUCT_ID
group by P.PRODUCT_CODE
order by SALES desc, PRODUCT_CODE