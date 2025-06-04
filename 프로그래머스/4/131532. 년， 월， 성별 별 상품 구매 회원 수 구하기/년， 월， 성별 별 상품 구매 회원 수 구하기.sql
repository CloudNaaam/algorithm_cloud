with USERS as (select USER_ID, GENDER
               from USER_INFO
               where GENDER is not null)

select date_format(o.SALES_DATE, "%Y") as YEAR, month(date_format(o.SALES_DATE, "%Y-%m-%d")) as MONTH, u.GENDER, count(distinct u.USER_ID) as USERS
from USERS as u
join ONLINE_SALE as o
on u.USER_ID = o.USER_ID
group by YEAR, MONTH, GENDER
order by YEAR, MONTH, GENDER;