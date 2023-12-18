SELECT DISTINCT a.car_id
FROM car_rental_company_car AS a
INNER JOIN car_rental_company_rental_history AS b
ON a.car_id = b.car_id
WHERE a.car_type = '세단' AND start_date LIKE '_____10%'
ORDER BY a.car_id DESC;