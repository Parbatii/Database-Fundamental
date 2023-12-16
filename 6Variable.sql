use [practise]

declare @Dep nvarchar(20)
set @Dep = 'Bob'
declare @num int
set @num=1
select [Name],[Gender] from tblemployee where Departmentid=@num
select [Name], [Gender], [Departmentid] from tblemployee where [Name] = @Dep


select * from [tblemployee]
UNION ALL
Select ID, Name, Gender, Departmentid from tblemployee where Departmentid=3

select * from [tblemployee]
UNION
Select ID, Name, Gender, Departmentid from tblemployee where Departmentid=3