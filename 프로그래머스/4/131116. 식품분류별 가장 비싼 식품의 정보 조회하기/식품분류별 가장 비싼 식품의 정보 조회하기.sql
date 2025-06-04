select b.CATEGORY, b.MAX_PRICE, a.PRODUCT_NAME
from FOOD_PRODUCT as a  
join (select CATEGORY,max(PRICE) as MAX_PRICE 
      from FOOD_PRODUCT 
      group by CATEGORY 
      having CATEGORY in ('과자','국','김치','식용유') 
      order by MAX_PRICE desc) as b
on a.CATEGORY = b.CATEGORY
where a.PRICE = b.MAX_PRICE
order by b.MAX_PRICE desc;
