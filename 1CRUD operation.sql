create database practise

use [practise]
go
CREATE TABLE Employees (
  EmployeeID INT NOT NULL PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(50),
  PhoneNumber VARCHAR(20),
  HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (1, 'John', 'Smith', 'john.smith@example.com', '555-1234', '2022-01-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (2, 'Sarah', 'Johnson', 'sarah.johnson@example.com', '555-5678', '2022-02-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (3, 'Michael', 'Williams', 'michael.williams@example.com', '555-2468', '2022-03-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (4, 'Emily', 'Brown', 'emily.brown@example.com', '555-3698', '2022-04-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (5, 'David', 'Davis', 'david.davis@example.com', '555-7890', '2022-05-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (6, 'Jessica', 'Garcia', 'jessica.garcia@example.com', '555-1357', '2022-06-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (7, 'Christopher', 'Rodriguez', 'christopher.rodriguez@example.com', '555-2468', '2022-07-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (8, 'Ashley', 'Wilson', 'ashley.wilson@example.com', '555-8024', '2022-08-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (9, 'Matthew', 'Martinez', 'matthew.martinez@example.com', '555-9753', '2022-09-01');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES (10, 'Amanda', 'Anderson', 'amanda.anderson@example.com', '555-3579', '2022-10-01');

select * from Employees

-- C - create and R- read operation is done above 
-- now we discuss about UD( update and delete operation)

--UPDATE
update Employees set FirstName = 'Amara' where EmployeeID = 6;

--DELETE
delete from Employees where EmployeeID = 10;
delete from Employees where FirstName = 'Ashley';
delete from Employees where LastName = 'Martinez';
