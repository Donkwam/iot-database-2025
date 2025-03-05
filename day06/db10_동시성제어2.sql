START TRANSACTION;

SELECT * FROM Book;

INSERT INTO Book VALUE(98, '데이터베이스','한빛', 25000);	-- 트렌잭션

UPDATE Book SET
	   price = 30000
 WHERE bookid = 98;

COMMIT;