use [practise]
go
CREATE TABLE tblempoffset (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dateofbirth DATETIME2,
    gender VARCHAR(10),
    departmentid INT
);

INSERT INTO tblempoffset (id, name, dateofbirth, gender, departmentid)
VALUES
    (1, 'John Doe', '1990-01-01 00:00:00.0000000', 'Male', 1),
    (2, 'Jane Smith', '1995-05-15 00:00:00.0000000', 'Female', 2),
    (3, 'Bob Johnson', '1985-12-31 00:00:00.0000000', 'Male', 1),
    (4, 'Alice Lee', '1998-07-04 00:00:00.0000000', 'Female', 3),
    (5, 'Mike Brown', '1992-03-22 00:00:00.0000000', 'Male', 2),
    (6, 'Sara Davis', '1991-11-11 00:00:00.0000000', 'Female', 1),
    (7, 'Tom Wilson', '1988-09-05 00:00:00.0000000', 'Male', 3),
    (8, 'Emily Chen', '1997-02-14 00:00:00.0000000', 'Female', 2),
    (9, 'David Kim', '1994-06-30 00:00:00.0000000', 'Male', 1),
    (10, 'Amy Nguyen', '1993-09-20 00:00:00.0000000', 'Female', 3)
--MULTI STATEMENT TABLE VALUED FUNCTION

create function multistat()
returns @table table (ID int, NAME NVARCHAR(20), DATEOBIRTH DATE)--THis is structure of table
as
begin
	insert into @table
	select id, name, cast(dateofbirth as date) from tblempoffset
	return
end

select * from multistat()
--INLINE TABLE VALUED FUNCTION
----------drop function getemp
alter function getemp(@gender nvarchar(20))
returns table
as
return (select name, cast(dateofbirth as date) as DOB, gender=@gender from tblempoffset)
select * from getemp('male')


select * from tblempoffset