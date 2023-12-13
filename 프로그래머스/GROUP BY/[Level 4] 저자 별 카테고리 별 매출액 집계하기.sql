SELECT b.author_id AS author_id
    , b.author_name AS author_name
    , a.category AS category
    , SUM(a.price * c.sales) AS sales
FROM book AS a
INNER JOIN author AS b
ON a.author_id = b.author_id
INNER JOIN book_sales AS c
ON a.book_id = c.book_id
WHERE c.sales_date LIKE '2022-01%'
GROUP BY b.author_name, a.category
ORDER BY b.author_id ASC, a.category DESC;