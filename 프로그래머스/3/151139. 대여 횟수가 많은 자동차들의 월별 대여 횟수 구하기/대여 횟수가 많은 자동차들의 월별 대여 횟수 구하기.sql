WITH COUNT_CAR as (SELECT car_id, count(history_id) as cnt 
                   FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                   WHERE date_format(start_date, "%Y-%m") BETWEEN "2022-08" and "2022-10"
                   GROUP BY CAR_ID
                   HAVING cnt >= 5)

SELECT month(h.start_date) as month, c.car_id, count(h.history_id) as records
FROM COUNT_CAR as c
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY as h
ON c.car_id = h.car_id
WHERE date_format(start_date, "%Y-%m") between "2022-08" and "2022-10"
GROUP BY month, car_id
ORDER BY month, car_id DESC;