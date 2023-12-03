'''

출처: https://school.programmers.co.kr/learn/courses/30/lessons/131536

'''


SELECT USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE
GROUP BY 1, 2
HAVING COUNT(PRODUCT_ID) > 1
ORDER BY USER_ID ASC, PRODUCT_ID DESC;
출처: https://ittrue.tistory.com/396 [IT is True:티스토리]