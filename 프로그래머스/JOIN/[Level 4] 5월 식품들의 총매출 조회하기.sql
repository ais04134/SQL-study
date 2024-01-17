SELECT a.product_id, b.product_name, (SUM(a.amount) * b.price) AS total_sales
FROM food_order a
JOIN food_product b ON a.product_id = b.product_id
WHERE YEAR(produce_date) = 2022 AND MONTH(produce_date) = 5
GROUP BY a.product_id
ORDER BY total_sales DESC, a.product_id ASC;