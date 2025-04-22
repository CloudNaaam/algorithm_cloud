select a.CATEGORY, sum(b.SALES) as TOTAL_SALES
from (select BOOK_ID, CATEGORY from BOOK) as a
join BOOK_SALES as b
on a.BOOK_ID = b.BOOK_ID
where date_format(b.SALES_DATE,'%Y-%m') = '2022-01'
group by a.CATEGORY
order by a.CATEGORY;
