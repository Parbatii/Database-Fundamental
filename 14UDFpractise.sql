--scalar function is different it return only 1 value

create function  tbl1calculateage(@dob date)
returns int
as
begin
declare @age int
set @age=datediff(year,@dob,getdate())-
case
when (month(@dob)>month(getdate())) or
(month(@dob)=month(getdate()) and day(@dob)>day(getdate()))
then 1
else 0
end
return @age	
end

select name, dateofbirth, dbo.tbl1calculateage(dateofbirth) as agee from tblempoffset
where dbo.tbl1calculateage(dateofbirth)>=20
order by agee---optional

--inline table valued function
create function tbl2getempbygender(@gender nvarchar(20))
returns table
as
return(select name, dateofbirth, gender from tblempoffset where gender=@gender)

select * from tbl2getempbygender('Male')

-- multi statement table valued funcion === is like inline table valued function
alter function tbl3getemp()
returns @table table(ID int, NAME nvarchar(20), DOB date, GENDER nvarchar(10))
as
begin
	insert into @table
	select id, name, cast(dateofbirth as date) as DOB, gender from tblempoffset
	where gender='male'
	return
end

select *from tbl3getemp()

select * from tblempoffset