--VIEW IS VIRTUAL TABLE 
-- iT CAN BE STORED SEPERATELY IN A DB VIEW

--for example we have any 2 tables:
--we have 1st table as:
select * from tblemployee


--next table is given as: 
create table tbldepartment
(
	deptid int identity(1,1),
	DeptName nvarchar(20)
);

insert into tbldepartment values('Health'),('Security'),('Engineering'),('Management')
select * from tbldepartment
select * from tblemployee

create view vw_tblemp_tbldeprtmt
as
select ID, Name, Gender, DeptName 
from tblemployee
join tbldepartment
on tblemployee.Departmentid= tbldepartment.deptid

select * from vw_tblemp_tbldeprtmt

sp_helptext vw_tblemp_tbldeprtmt

--VIEW FOR SECURITY
create view vw_for_security
as
select ID, Name, Gender, DeptName 
from tblemployee
join tbldepartment
on tblemployee.Departmentid=tbldepartment.deptid
where DeptName='Security'

select * from vw_for_security

--another view example
alter view vw_exampleofindexview
as
select ID, Name, Gender, DeptName 
from tblemployee
join tbldepartment
on tblemployee.Departmentid=tbldepartment.deptid
where DeptName = 'Health' or DeptName='Security'


select * from vw_exampleofindexview

select * from tbldepartment
select * from tblemployee