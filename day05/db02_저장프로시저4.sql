-- 5-4 Order 테이블의 판매 도서에 대한 이익금을 계산하는 프로시저
DELIMITER //
CREATE PROCEDURE GetInterest(
)
BEGIN
	-- 변수 선언
    DECLARE myInteresst FLOAT DEFAULT 0.0;
    DECLARE price INTEGER;
    DECLARE endOfRow BOOLEAN DEFAULT FALSE;
    DECLARE InterestCursor CURSOR FOR
			SELECT saleprice FROM Orders;
	DEcLARE CONTINUE handler
			FOR NOT FOUND SET endOfRow = TRUE;
            
	-- 커서 오픈
    OPEN InterestCursor;
    cursor_loop:LOOP
		FETCH InterestCursorOrders INTO price;	-- select salprice from Orders의 테이블 한 행씩 읽어서 
    END LOOP cursor_loop;
END;