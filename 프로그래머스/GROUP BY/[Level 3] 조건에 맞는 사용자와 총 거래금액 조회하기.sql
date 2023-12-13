SELECT b.user_id AS user_id
    , b.nickname AS nickname
    , SUM(a.price) AS total_sales
FROM used_goods_board AS a
    INNER JOIN used_goods_user AS b
    ON a.writer_id = b.user_id
WHERE a.status = 'DONE'
GROUP BY b.user_id
HAVING total_sales >= 700000
ORDER BY total_sales ASC;