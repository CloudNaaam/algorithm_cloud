select E.DEPT_ID,D.DEPT_NAME_EN,E.AVG_SAL
from HR_DEPARTMENT as D
join (select DEPT_ID,round(avg(SAL),1-1) as AVG_SAL 
      from HR_EMPLOYEES 
      group by DEPT_ID) as E
on D.DEPT_ID = E.DEPT_ID
order by E.AVG_SAL desc;
