select a.ID,b.FISH_NAME,a.LENGTH 
from FISH_INFO as a
join FISH_NAME_INFO as b
on a.FISH_TYPE = b.FISH_TYPE
where (b.FISH_TYPE, a.LENGTH) in (select FISH_TYPE,max(LENGTH) 
                                from FISH_INFO 
                                group by FISH_TYPE)
order by a.ID;

