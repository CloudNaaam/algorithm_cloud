select p.PRODUCT_ID, p.PRODUCT_NAME, sum(p.PRICE * o.sa) as TOTAL_SALES
from FOOD_PRODUCT as p
join (select PRODUCT_ID,sum(AMOUNT) as sa
      from FOOD_ORDER 
      where date_format(PRODUCE_DATE,'%Y-%m') = '2022-05' 
      group by PRODUCT_ID) as o
on p.PRODUCT_ID = o.PRODUCT_ID
group by p.PRODUCT_ID
order by TOTAL_SALES desc, p.PRODUCT_ID;

# SELECT
#     o.PRODUCT_ID,
#     p.PRODUCT_NAME,
#     SUM(o.AMOUNT * p.PRICE) AS TOTAL_SALES
# FROM
#     FOOD_PRODUCT p INNER JOIN FOOD_ORDER o
#     ON p.PRODUCT_ID = o.PRODUCT_ID
# WHERE
#     o.PRODUCE_DATE REGEXP '2022-05'
# GROUP BY
#     o.PRODUCT_ID
# ORDER BY
#     TOTAL_SALES DESC,
#     PRODUCT_ID ASC;

