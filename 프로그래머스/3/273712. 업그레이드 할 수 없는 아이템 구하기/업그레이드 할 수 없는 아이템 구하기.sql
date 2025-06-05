select i.item_id, i.item_name, i.rarity
from ITEM_INFO as i
join ITEM_TREE as t
on i.item_id = t.item_id
where i.item_id not in (select if(parent_item_id is null, 0 , parent_item_id)
                        from item_tree)
order by item_id desc;