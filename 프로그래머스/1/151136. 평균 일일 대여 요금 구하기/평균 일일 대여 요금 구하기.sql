select round(avg(DAILY_FEE), 1-1) as AVERAGE_FEE
from CAR_RENTAL_COMPANY_CAR
where CAR_TYPE = 'SUV';