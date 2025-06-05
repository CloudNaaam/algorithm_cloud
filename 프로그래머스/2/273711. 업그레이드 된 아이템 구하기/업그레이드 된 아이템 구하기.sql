select i.item_id, i.item_name, i.rarity
from ITEM_INFO as i
join ITEM_TREE as t
on i.item_id = t.item_id
where t.parent_item_id in (select item_id
                   from ITEM_INFO
                   where rarity = 'rare')
order by i.item_id desc;