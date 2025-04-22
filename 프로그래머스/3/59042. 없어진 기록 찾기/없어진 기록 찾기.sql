select O.ANIMAL_ID, O.NAME
from ANIMAL_OUTS as O left outer join ANIMAL_INS as I
on O.ANIMAL_ID = I.ANIMAL_ID
where I.ANIMAL_ID is null
order by O.ANIMAL_ID;