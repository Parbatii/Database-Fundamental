use [practise]
go 

CREATE TABLE tblemployee (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Departmentid INT
);

INSERT INTO tblemployee (ID, Name, Gender, Departmentid)
VALUES
    (1, 'John', 'Male', 1),
    (2, 'Jane', 'Female', 2),
    (3, 'Bob', 'Male', 3),
    (4, 'Alice', 'Female', 1),
    (5, 'Mike', 'Male', 2),
    (6, 'Sara', 'Female', 3),
    (7, 'Tom', 'Male', 1),
    (8, 'Emily', 'Female', 2),
    (9, 'David', 'Male', 3),
    (10, 'Linda', 'Female', 1);

	select * from tblemployee

alter procedure spgetemployeewithgenderanddepartment
@Gender varchar(50),
@Departmentid int
WITH ENCRYPTION
-- with encryption donot allow to see the sql code of the sp
as
begin
	select [Name], Gender, Departmentid from [tblemployee] where Gender = @Gender and Departmentid = @Departmentid
end

sp_helptext spgetemployeewithgenderanddepartment
spgetemployeewithgenderanddepartment 'Female',3

select * from tblemployee

/*
create proc spgetemployeewithdep
@Departmentid int
as
begin
	select [Name], Departmentid from tblemployee where Departmentid = @Departmentid
end

exec spgetemployeewithdep 1
exec spgetemployeewithdep 3

--to see the code of procedure
sp_helptext spgetemployeewithdep

drop proc spgetemployeewithdep
*/