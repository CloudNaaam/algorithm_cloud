select a.id, if(b.parent_id is null,0,count(b.parent_id)) as child_count
from ecoli_data as a
left outer join ecoli_data as b
on a.id = b.parent_id
group by a.id
order by a.id;