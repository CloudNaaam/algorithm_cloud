select distinct C.CAR_ID
from CAR_RENTAL_COMPANY_CAR as C
join CAR_RENTAL_COMPANY_RENTAL_HISTORY as H
on C.CAR_ID = H.CAR_ID
where C.CAR_TYPE = '세단' and date_format(START_DATE,'%m') = '10'
order by CAR_ID desc;
