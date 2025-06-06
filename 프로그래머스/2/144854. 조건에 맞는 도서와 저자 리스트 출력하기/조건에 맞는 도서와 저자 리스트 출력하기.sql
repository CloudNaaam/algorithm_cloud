select B.BOOK_ID, A.AUTHOR_NAME, date_format(B.PUBLISHED_DATE,'%Y-%m-%d') as PUBLISHED_DATE
from BOOK as B
join AUTHOR as A 
on B.AUTHOR_ID = A.AUTHOR_ID
where B.CATEGORY = '경제'
order by B.PUBLISHED_DATE;