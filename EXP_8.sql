CREATE DATABASE TRANSACTION;
USE TRANSACTION;
CREATE TABLE Book_Issue(Issue_id int,Date_of_issue date,Book_id int,Member_id int,Expected_date_of_return date,PRIMARY KEY(Issue_id));
CREATE TABLE Book_Return(Issue_id int,Actual_date_of_return date,late_days int,late_fee int,FOREIGN KEY(Issue_id) REFERENCES Book_Issue(Issue_id));
