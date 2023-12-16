use [practise] go
select * from tblemployee

--stored procedure with output
/*
create proc spgetemployeecountbygender
@Gender varchar(50),
@Employeecount int output

as
begin
	select @Employeecount = count(ID) from [tblemployee] where Gender = @Gender;
end

declare @totalcount int
Execute spgetemployeecountbygender 'Male', @totalcount out
Print @totalcount

declare @totalfemale int
execute spgetemployeecountbygender 'Female' , @totalfemale out
print @totalfemale
*/

create proc opspgetgendercount
@Gender varchar(50),
@countgender int output
as
begin
	select @countgender = count(ID) from [tblemployee] where @Gender = Gender
end

declare @totalfemale int
execute opspgetgendercount 'Female' , @totalfemale output
print @totalfemale

select * from [tblemployee]
sp_help opspgetgendercount
sp_helptext opspgetgendercount
sp_depends opspgetgendercount

drop proc opspgetgendercount