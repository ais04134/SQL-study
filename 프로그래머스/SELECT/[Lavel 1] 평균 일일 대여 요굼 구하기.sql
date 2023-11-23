'''

출처: https://school.programmers.co.kr/learn/courses/30/lessons/151136

'''



SELECT ROUND(AVG(DAILY_FEE)) AS "AVERAGE_FEE"  
    FROM CAR_RENTAL_COMPANY_CAR
    WHERE CAR_TYPE = 'SUV';
    
    
-- AVG 함수를 사용하여 DAILY_FEE 평균 구함.
-- ROUND 함수를 사용하여 소스점 첫 번째 자리에서 반올림.
-- AS를 사용하여 컬럼명 지정.