SELECT a.member_name, b.review_text, DATE_FORMAT(b.review_date, "%Y-%m-%d") AS review_date
FROM member_profile a 
INNER JOIN rest_review b
ON a.member_id = b.member_id
WHERE a.member_id = (
    SELECT member_id FROM rest_review
    GROUP BY member_id
    ORDER BY COUNT(*) DESC LIMIT 1
    )
ORDER BY review_date ASC, review_text ASC;