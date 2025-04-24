select date_format(SALES_DATE,'%Y-%m-%d') as SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
from (select USER_ID,PRODUCT_ID,SALES_AMOUNT,SALES_DATE 
      from ONLINE_SALE
      union all
      select NULL,PRODUCT_ID,SALES_AMOUNT,SALES_DATE 
      from OFFLINE_SALE) as a
where date_format(SALES_DATE,'%Y-%m') = '2022-03'
order by SALES_DATE, PRODUCT_ID, USER_ID;
