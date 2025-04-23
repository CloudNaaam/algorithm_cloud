select ID,EMAIL,FIRST_NAME,LAST_NAME
from DEVELOPERS 
where ((select CODE 
        from SKILLCODES 
        where NAME = 'C#') & SKILL_CODE) != 0 
       or ((select CODE 
           from SKILLCODES 
           where NAME = 'Python') & SKILL_CODE) != 0 
order by ID;
