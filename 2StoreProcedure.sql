use [practise]
go

/*
create procedure spGetEmployees
as
begin
	select concat(FirstName,' ', Lastname) as EmpName, Email, PhoneNumber from Employees
end
*/
--to alter above procedure
alter procedure spGetEmployees
as
begin
	select concat(FirstName,' ', Lastname) as EmpName, Email, PhoneNumber from Employees order by EmpName
end

spGetEmployees
Execute spGetEmployees
Exec spGetEmployees

drop procedure spGetEmployees