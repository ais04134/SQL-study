SELECT a.product_code AS product_code, SUM(a.price*b.sales_amount) AS sales
FROM product AS a
INNER JOIN offline_sale AS b
ON a.product_id = b.product_id
GROUP BY a.product_code
ORDER BY sales DESC, product_code ASC;