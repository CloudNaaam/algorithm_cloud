select date_format(DATETIME,'%H') as HOUR, count(ANIMAL_ID) as COUNT
from ANIMAL_OUTS
group by date_format(DATETIME,'%H')
having HOUR between '09' and '19'
order by date_format(DATETIME,'%H');
