use [practise]

--This is output parameter

create proc spgettotalcount1
@totalcount int out
as
begin
	select @totalcount = count(ID) from [tblemployee]
end

declare @total int
execute spgettotalcount1 @total out
print @total 


--This is return values

create proc spgettotalcount2
as
begin
	return (select count(ID) from tblemployee)
end

declare @total int
execute @total = spgettotalcount2
select @total


/*
alter proc spgetnamebyid
@ID int,
@Name varchar(50) output
as 
begin
	select   @Name = [Name]  from [tblemployee] where ID = @ID
end

declare @Empname varchar(50)
execute spgetnamebyid 3, @Empname output
print @Empname
*/

/*
alter proc spgetgenderbyid
@ID int,
@Gender varchar(50) output
as
begin
		select @Gender = Gender from [tblemployee] where ID = @ID
end

declare @findgender varchar(50)
execute  3, @findgender output
print @findgender

drop proc spgetgenderbyid
*/
select * from tblemployee


