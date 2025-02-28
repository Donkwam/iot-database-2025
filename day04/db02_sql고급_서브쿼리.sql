-- 서브쿼리 고급
-- 4-12 Orders 테이블 평균 주문금액 이하의 주문에 대해 주문번호와 금액을 나타내시오.
SELECT *
  FROM Orders;
  
-- 집계함수는 GROUP BY가 없어도 테이블 전체를 집계할 수 있음
SELECT AVG(saleprice)
  FROM Orders;