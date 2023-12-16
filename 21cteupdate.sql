
--example with 1 table only
select * from tblemployee

with cte_getNameandgender(ID, Name, Gender)
as
(
	select ID, Name, Gender from tblemployee
)

update cte_getNameandgender
set Name='Sama' where ID=6

--another example with 2 table
select * from tblemployee
select * from tbldepartment

with cte_changename(ID, Name, Gender, DeptName)
as
(
	select ID, Name, Gender, DeptName
	from tblemployee
	join tbldepartment
	on tblemployee.Departmentid=tbldepartment.deptid
)
update cte_changename
set name='Mona' where ID=11