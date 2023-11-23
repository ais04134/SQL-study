SELECT mem_name FROM member; -- member 테이블에서 mem_name 칼럼만 가져옴.


SELECT addr, debut_date, mem_name FROM member; -- 여러 개의 열을 가져오고 싶으면 콤마(,)로 구분.


SELECT addr 주소, debut_date "대뷔 일자", mem_name FROM member; -- 열 이름에 별칭(alias)를 지정할 수 있음. 별칭에 공백이 있으면 큰따옴표(")로 묶어줌.


SELECT * FROM member WHERE mem_name = '블랙핑크';


SELECT * -- 열_이름
    FROM member -- 테이블_이름
    WHERE mem_name = '블랙핑크'; -- 조건식


SELECT mem_id, mem_name
    FROM member
    WHERE height <= 162; -- 조건식(관계연산자)


SELECT mem_name, height, mem_number
    FROM member
    WHERE height >= 165 AND mem_number > 6; -- 조건식(논리연산자)


SELECT mem_name, height
    FROM member
    WHERE height BETWEEN 163 AND 165; -- 조건식(BETWEEN ~ AND)


SELECT mem_name, addr
    FROM member
    WHERE addr IN('경기', '전남', '경감')  -- 조건식(IN)


SELECT *
    FROM member
    WHERE mem_name LIKE '우%';  -- 조건식(LIKE)


SELECT *
    FROM member
    WHERE mem_name LIKE '__핑크';  -- 조건식(LIKE)


SELECT mem_name, height
    FROM member
    WHERE height > (SELECT height FROM member WHERE mem_name = '에이핑크');  -- 서브쿼리