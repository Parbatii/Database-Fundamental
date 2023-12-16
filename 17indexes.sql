use[practise]
go
-- Create the table
CREATE TABLE tblwithsalary (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dateofbirth DATE,
    departmentid INT,
    gender VARCHAR(10),
    salary DECIMAL(10,2)
);

-- Insert 10 values into the table
INSERT INTO tblwithsalary (id, name, dateofbirth, departmentid, gender, salary)
VALUES
    (21, 'John Doe', '1990-01-01', 1, 'Male', 50000.00),
    (12, 'Jane Doe', '1992-05-15', 2, 'Female', 60000.00),
    (3, 'Bob Smith', '1985-12-25', 1, 'Male', 75000.00),
    (4, 'Alice Johnson', '1998-07-04', 3, 'Female', 40000.00),
    (5, 'Tom Lee', '1995-03-20', 2, 'Male', 55000.00),
    (6, 'Sara Kim', '1991-11-11', 1, 'Female', 65000.00),
    (7, 'Mike Brown', '1988-09-30', 3, 'Male', 80000.00),
    (8, 'Emily Davis', '1993-06-12', 2, 'Female', 45000.00),
    (9, 'David Wilson', '1987-02-28', 1, 'Male', 70000.00),
    (10, 'Linda Chen', '1994-08-18', 3, 'Female', 50000.00);

	create index idx_tblwithsalary_salary 
	on tblwithsalary(salary asc)

	sp_Helpindex tblwithsalary
	drop index tblwithsalary.idx_tblwithsalary_salary 
	select * from [tblwithsalary]

	--clustered index //// PK automatically create clustered index there is not any index
	sp_helpindex tblfilms
	select * from tblfilms

	select * from tblemployee
	--composite clustered index:
	insert into tblemployee values(11,'Maria','Female',4)

	create clustered index ix_tblemployee_gender_deptid
	on tblemployee(Gender asc, Departmentid desc)