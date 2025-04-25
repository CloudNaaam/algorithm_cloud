with j_t as (select sum(TOTAL_ORDER) as TOTAL_ORDER, FLAVOR
             from JULY
             group by FLAVOR)

select f.FLAVOR
from FIRST_HALF as f
join j_t as j
on f.FLAVOR = j.FLAVOR
order by (f.TOTAL_ORDER+j.TOTAL_ORDER) desc
limit 3;