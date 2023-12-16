--1st connection

--TEMPTABLE--TEMOPRARY TABLE is like permanent table given as:
-- THis temp table is only fot this query. It will not found for another query

use [tempdb]
go
create table #Class1
(
	Rollno int identity(1,1) not null,
	Name nvarchar(20) 
);

insert into #class1 values('Ram'),('Sagar'), ('Pramila'),('Mohan'),('Padukone'),('Kapoor')

select * from #class1
