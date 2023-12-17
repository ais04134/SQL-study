SELECT month(start_date) AS month, car_id, count(history_id) AS records
FROM car_rental_company_rental_history
WHERE start_date>="2022-08-01" AND start_date<"2022-11-01" AND car_id IN 
    (
        SELECT car_id 
        FROM car_rental_company_rental_history 
        WHERE start_date>="2022-08-01" AND start_date<"2022-11-01" 
        GROUP BY car_id 
        HAVING count(history_id)>4
    ) 
GROUP BY month, car_id
HAVING records >0
ORDER BY month, car_id DESC;