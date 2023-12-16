--CTE == COMMON TABLE EXPRESSION
--CTE IS TEMPORARY RESULT SET

select * from tblemployee
select * from tbldepartment

--We create CTE to count the employee w.r.t. departmentid

with cte_countempbydepartmentid(Departmentid, Totalemployees)
as
(
	select Departmentid, count(*) as Totalemployees 
	from tblemployee
	group by Departmentid
)
--Now the CTE is created. then we merge cte and tbldepartment
select DeptName, Totalemployees
from tbldepartment
join cte_countempbydepartmentid
on tbldepartment.Deptid=cte_countempbydepartmentid.Departmentid

select * from tblemployee
select * from tbldepartment

