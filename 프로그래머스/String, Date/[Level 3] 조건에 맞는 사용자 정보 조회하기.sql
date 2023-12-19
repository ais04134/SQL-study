SELECT b.user_id,b.nickname
,concat(b.city,' ',b.street_address1,' ',b.street_address2) AS 전체주소
,concat(LEFT(tlno,3), '-', MID(tlno,4,4),'-', RIGHT(tlno,4)) AS 전화번호
FROM used_goods_board a join used_goods_user b ON a.writer_id = b.user_id
GROUP BY writer_id
HAVING count(writer_id) >= 3
ORDER BY b.user_id DESC;