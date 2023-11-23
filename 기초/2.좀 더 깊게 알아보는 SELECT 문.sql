SELECT 열_이름
    FROM 테이블_이름
    WHERE 조건식
    GROUP BY 열_이름
    HAVING 조건식
    ORDER BY 열_이름
    LIMIT 숫자


SELECT mem_id, mem_name, debut_date
    FROM member
    ORDER BY debut_date;  -- 결과가 출력되는 순서를 조절함(디폴트 - ASC, 오름차순). 


SELECT mem_id, mem_name, debut_date
    FROM member
    ORDER BY debut_date DESC; -- 내림차순


SELECT mem_id, mem_name, debut_date, height
    FROM member
    WHERE height >= 164
    ORDER BY height DESC;  -- ORDER BY는 WHERE과 같이 사용 가능.


SELECT mem_id, mem_name, debut_date, height
    FROM member
    WHERE height >= 164
    ORDER BY height DESC, debut_date ASC;  -- 평균 키가 큰 순서대로 정렬 후, 평균 키가 같으면 데뷔 일자 순으로 정렬


SELECT *
    FROM member
    LIMIT 3;  -- LIMIT <- 출력 개수를 제한


SELECT mem_name, debut_date
    FROM member
    ORDER BY debut_date
    LIMIT 3;  -- ORDER BY와 함께 사용 가능.


SELECT mem_name, height
    FROM member
    ORDER BY height DESC
    LIMIT 3, 2;  -- LIMIT 형식은 "LIMIT 시작, 개수". 중간부터 출력도 가능함.


SELECT DISTINCT addr
    FROM member;  -- DISTINCT는 중복된 결과를 제거함.


SELECT mem_id "회원 아이디", SUM(amount) "총 구매 개수"
    FROM buy 
    GROUP BY mem_id;  -- GROUP BY는 집계 함수. 


SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
    FROM buy 
    GROUP BY mem_id;  -- SUM을 이런 방식으로 사용 가능함.


SELECT AVG(amount) "평균 구매 개수"
    FROM buy;


SELECT AVG(amount) "평균 구매 개수"
    FROM buy
    GROUP BY mem_id;  -- mem_id를 기준으로 그룹을 묶고, 평균 구매 개수 도출.


SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
    FROM buy
    GROUP BY mem_id
    HAVING SUM(price*amount) > 1000;  -- HAVING은 WHERE와 비슷한 개념으로 조건을 제한하는 것이지만, 집계 함수에 대해서 조건을 제한함.


