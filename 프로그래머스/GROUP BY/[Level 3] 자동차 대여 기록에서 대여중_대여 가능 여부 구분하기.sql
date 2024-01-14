SELECT car_id,
(CASE WHEN car_id IN (
    SELECT car_id
    FROM car_rental_company_rental_history
    WHERE '2022-10-16' BETWEEN DATE_FORMAT(start_date, '%Y-%m-%d') AND DATE_FORMAT(end_date, '%Y-%m-%d'))
THEN '대여중'
ELSE '대여 가능'
END) AS 'AVAILABILITY'
FROM car_rental_company_rental_history
GROUP BY car_id
ORDER BY car_id DESC;