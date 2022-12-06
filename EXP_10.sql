CREATE PROCEDURE Operation(IN Book_id INT,IN Title VARCHAR(20),IN Language_id INT,IN MRP INT,IN Publisher_id INT,IN Published_date DATE,IN Volume INT,IN
Status VARCHAR(20),INOUT op INT) 
BEGIN
IF (op=1) THEN 
INSERT INTO BOOK VALUES(Book_id,Title,Language,MRP,Publisher_id,Published_date,Volume,Status); 
ELSEIF (op=2) THEN 
UPDATE BOOK SET Title=Title,Language=Language,MRP=MRP,Publisher_id=Publisher_id,Published_date=Published_date,Volume=Volume,Status=Status WHERE Book_id=Book_id;
ELSE IF (op=3) THEN  
DELETE FROM BOOK WHERE BOOK.Book_id=Book_id; 
END
$
 
