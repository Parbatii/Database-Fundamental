--GLOBAL TEMP TABLE

use [tempdb]
go
create table ##class2
(
	ROLLNO int identity(1,1),
	NAME NVARCHAR(20)
);
insert into ##class2 values ('Peter'),('Harry'),('Lorek'),('Lyra'),('COulter'),('Willson')

select * from ##class2