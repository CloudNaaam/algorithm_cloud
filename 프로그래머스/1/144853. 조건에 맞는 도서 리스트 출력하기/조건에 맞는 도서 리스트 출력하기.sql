select BOOK_ID,date_format(PUBLISHED_DATE,"%Y-%m-%d") as PUBLISHED_DATE
from BOOK
where PUBLISHED_DATE between '2021-01-01' and '2021-12-31' and CATEGORY = '인문'
order by PUBLISHED_DATE;