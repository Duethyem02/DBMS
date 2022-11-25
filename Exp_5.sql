--a
SELECT COUNT(*) FROM Book_Author WHERE Author_Id=1;
/*
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
*/
--b
SELECT Publisher.Name,COUNT(*)  FROM Publisher,BOOK WHERE Publisher.Publisher_id=BOOK.Publisher_id GROUP BY(Publisher.Publisher_id);
/*
+---------+----------+
| Name    | COUNT(*) |
+---------+----------+
| Amal    |        1 |
| Sathyan |        1 |
| Vinny   |        1 |
| Manu    |        2 |
| Ram     |        1 |
+---------+----------+
*/
--C

--D
SELECT BOOK.Title FROM BOOK,Book_Issue,Book_Return WHERE BOOK.Book_id=Book_Issue.Book_id AND Book_Issue.Issue_id!=Book_Return.Issue_id;
/*
+------------+
| Title      |
+------------+
| CHERUKADHA |
| JAVA       |
+------------+
*/
--E
SELECT Member.Name FROM Member,Language,BOOK,Book_Issue WHERE Member.Member_id=Book_Issue.Member_id AND BOOK.Book_id=Book_Issue.Book_id AND BOOK.Language_id=Language.Lang_id AND Language.Name='Malayalam' AND  Member.Member_id NOT IN (SELECT Member.Member_id FROM Member,Language,BOOK,Book_Issue WHERE Member.Member_id=Book_Issue.Member_id AND BOOK.Book_id=Book_Issue.Book_id AND BOOK.Language_id=Language.lang_id 
AND Language.Name != 'Malayalam');
/*
+--------+
| Name   |
+--------+
| Sharon |
+--------+
*/
--F
SELECT SUM(late_fee) AS Fine FROM Book_Return WHERE MONTH(Actual_date_of_return)=MONTH(CURDATE());
/*
+------+
| Fine |
+------+
| NULL |
+------+
*/
 SELECT SUM(late_fee) AS Fine FROM Book_Return WHERE QUARTER(Actual_date_of_return)=QUARTER(CURDATE());
/*
+------+
| Fine |
+------+
|  100 |
+------+
*/
--G
