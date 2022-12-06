
 
CREATE PROCEDURE Operation(IN Bookid INT,IN Title VARCHAR(20),IN Language_id INT,IN MRP INT,IN Publisher_id INT,IN Published_date DATE,IN Volume INT,IN Status VARCHAR(20),IN op INT) 
 begin
 if op=1 then
  insert into BOOK values(Bookid,Title,Language_id,MRP,Publisher_id,Published_date,Volume,Status);
elseif op=2 then
update BOOK set MRP=MRP,Volume=Volume,Status=Status where Book_id=Bookid;
elseif op=3 then
delete from BOOK where Book_id=Bookid;
end if;
end $
