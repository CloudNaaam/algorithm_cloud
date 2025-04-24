select count(FISH_TYPE) as FISH_COUNT, month(TIME) as MONTH
from FISH_INFO
group by month(TIME)
having FISH_COUNT > 0
order by MONTH;
