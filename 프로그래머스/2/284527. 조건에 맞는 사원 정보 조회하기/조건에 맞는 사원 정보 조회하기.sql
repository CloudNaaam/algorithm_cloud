select sum(a.SCORE) as SCORE, b.EMP_NO, b.EMP_NAME, b.POSITION, b.EMAIL  
from HR_GRADE as a
join (select e.EMP_NO,e.EMP_NAME,e.POSITION,e.EMAIL
      from HR_DEPARTMENT as d
      join HR_EMPLOYEES as e
      on d.DEPT_ID = e.DEPT_ID) as b
on a.EMP_NO = b.EMP_NO
group by b.EMP_NO
order by SCORE desc
limit 1;

