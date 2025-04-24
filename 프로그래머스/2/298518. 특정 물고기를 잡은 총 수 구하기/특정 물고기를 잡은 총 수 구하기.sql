select count(a.FISH_TYPE) as FISH_COUNT
from FISH_INFO as a
join FISH_NAME_INFO as b
on a.FISH_TYPE = b.FISH_TYPE
where b.FISH_NAME in ('BASS','SNAPPER')
