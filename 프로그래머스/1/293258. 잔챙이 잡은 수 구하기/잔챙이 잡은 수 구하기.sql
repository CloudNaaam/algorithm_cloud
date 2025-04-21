select count(ID) as FISH_COUNT
from FISH_INFO
where LENGTH <= 10 and LENGTH or LENGTH is null;
