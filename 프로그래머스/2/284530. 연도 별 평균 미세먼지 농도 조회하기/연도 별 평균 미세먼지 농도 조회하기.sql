select year(YM) as YEAR, round(avg(PM_VAL1),3-1) as 'PM10', round(avg(PM_VAL2),3-1) as 'PM2.5'
from AIR_POLLUTION 
where LOCATION2 = '수원'
group by YEAR
order by YEAR;


