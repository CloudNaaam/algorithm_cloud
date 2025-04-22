select I.ANIMAL_ID, I.NAME
from ANIMAL_INS as I
join ANIMAL_OUTS as O
on I.ANIMAL_ID = O.ANIMAL_ID
order by (O.DATETIME - I.DATETIME) desc
limit 2;

