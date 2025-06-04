with count_table as (select count(MEMBER_ID) as cnt, MEMBER_ID 
                     from REST_REVIEW 
                     group by MEMBER_ID
                    ),
all_table as (select m.MEMBER_ID, m.MEMBER_NAME, r.REVIEW_TEXT, r.REVIEW_DATE 
              from MEMBER_PROFILE as m 
              join REST_REVIEW as r 
              on m.MEMBER_ID = r.MEMBER_ID
             )
select a.MEMBER_NAME, a.REVIEW_TEXT, date_format(a.REVIEW_DATE, "%Y-%m-%d") as REVIEW_DATE
from count_table as c
join all_table as a
on c.MEMBER_ID = a.MEMBER_ID
where cnt = (select max(cnt) from count_table)
order by REVIEW_DATE, REVIEW_TEXT;

