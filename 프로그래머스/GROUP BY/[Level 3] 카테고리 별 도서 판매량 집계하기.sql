SELECT a.category AS category
    , SUM(b.sales) AS total_sales
FROM book AS a
INNER JOIN book_sales AS b
ON a.book_id = b.book_id
WHERE b.sales_date LIKE '2022-01%'
GROUP BY category
ORDER BY category ASC;