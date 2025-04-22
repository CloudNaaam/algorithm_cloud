select a.ID,a.NAME,a.HOST_ID
from PLACES as a
left outer join(select HOST_ID, count(HOST_ID) as cnt_host
                from PLACES
                group by HOST_ID
                ) as b
on a.HOST_ID = b.HOST_ID
where b.cnt_host > 1