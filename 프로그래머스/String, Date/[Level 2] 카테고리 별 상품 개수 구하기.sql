SELECT LEFT(product_code, 2) AS category, COUNT(product_id)
FROM product
GROUP BY category
ORDER BY category;