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
