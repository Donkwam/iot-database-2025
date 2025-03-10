-- bookstbl - 59건
select * from bookstbl;

-- divtbl - 8건
select * from divtbl;

-- membertbl - 31건
select * from membertbl;

-- rentabltbl - 14건
select * from rentaltbl;

-- 1. 회원 테이블에서 이메일, 모바일, 이름, 주소 순으로 나오도록 검색하시오.
-- (결과는 아래와 동일하게 나와야 하며, 전체 행의 개수는 31개입니다)
select Email as email -- 컬럼설정
	 , Mobile as mobil
     , Names as names
     , Addr as addr
  from membertbl; -- 이 테이블에서
  
-- 2. 함수를 사용하여 아래와 같은 결과가 나오도록 쿼리를 작성하시오.
-- (전채 행의 개수는 59개입니다)
select Names as 저자 -- 컬럼출력 및 이름설정
	 , Author as 도서명
     , ISBN	
     , Price as 정가
  from bookstbl
 order by ISBN; -- 컬럼을 오름차순으로
 
-- 3. 다음과 같은 결과가 나오도록 SQL 문을 작성하시오.
-- (책을 한번도 빌린적이 없는 회원을 뜻합니다. 18명이 나옵니다.)
select m.Names as 비대여자명, m.Levels as 등급, m.Addr as 주소, r.rentalDate as 대여일
  from membertbl as m
  left join rentaltbl r on m.Idx = r.memberIdx -- 왼쪽을 중심으로 찾는다
 where r.rentalDate is null -- null인 값을 찾는다
 ORDER BY m.Levels, m.Names; -- 각각 오름차순
  
  
                
 -- 4. 다음과 같은 결과가 나오도록 SQL 문을 작성하시오.
select ifnull(d.Names, '--합계--') as 장르, concat(format(sum(b.Price), 0), '원') as 총합계금액 -- 이름컬럼이 null이면 '합계'출력 각각의 총 가격에 3번째 숫자마다 , 하고 원
  from divtbl d
  join bookstbl b on d.Division = b.Division -- 두개를 합친다
 group by d.Names -- 이름별로 나눈다
 with rollup; -- 총합계