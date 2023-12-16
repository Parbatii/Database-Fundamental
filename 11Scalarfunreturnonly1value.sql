use [practise]
go

create function calculateage(@dob date)
returns int
as
begin
declare @age int
set @age=datediff(Year, @dob, getdate())-
	case
		when (month(@dob)>month(getdate())) or
			 (month(@dob)=month(getdate()) and day(@dob) > day(getdate()))
		then 1
		else 0
	end
return @age
end

select Name, Dateofbirth, dbo.calculateage(Dateofbirth) as age from myTable
where dbo.calculateage(Dateofbirth)>=30
order by age --optional

select * from myTable
--to filter a table by age where there is only dob.
--first we create a function to get age bu=y dob
/*
create function getage(@dob date)
returns int
as
begin
declare @age int
set @age= datediff(year,@dob,getdate())-
	case
		when (month(@dob)> month(getdate()) or
			 (month(@dob)=month(getdate()) and day(@dob)>day(getdate())))
		then 1
		else 0	
	end
return @age
end

select name, Dateofbirth, dbo.getage(Dateofbirth) as UMER from myTable 
where dbo.getage(Dateofbirth)>=20
order by UMER --optional
*/
select * from myTable

drop function getage