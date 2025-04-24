WITH RECURSIVE hours AS (
  SELECT 0 AS HOUR
  UNION ALL
  SELECT hour + 1 FROM hours WHERE hour < 23
)
SELECT h.HOUR as HOUR, if(o.ANIMAL_ID is null, 0, count(o.ANIMAL_ID)) as COUNT
FROM hours as h
left outer join ANIMAL_OUTS as o
on h.HOUR = hour(o.DATETIME)
group by HOUR
order by HOUR;