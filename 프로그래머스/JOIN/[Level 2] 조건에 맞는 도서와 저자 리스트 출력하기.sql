SELECT a.book_id, b.author_name, DATE_FORMAT(a.published_date, '%Y-%m-%d') AS published_date
FROM BOOK AS a
INNER JOIN author AS b
ON a.author_id = b.author_id
WHERE a.category = '경제'
ORDER BY published_date ASC;