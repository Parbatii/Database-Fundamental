--To get the table w.r.t. gender value by creating function
create function fn_getempbygender(@gender nvarchar(20))
returns table
as
	return ( select Name, Gender, Departmentid from tblemployee
	where gender=@gender)

--TO RUN:
select * from fn_getempbygender('Female')


select * from tblemployee