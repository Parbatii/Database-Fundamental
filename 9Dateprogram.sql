use [practise]
go
-- Create the table
CREATE TABLE myTable (
  Id INT,
  Name VARCHAR(50),
  Dateofbirth DATE
);

-- Insert 10 values
INSERT INTO myTable (Id, Name, Dateofbirth)
VALUES (1, 'John', '1990-01-01'),
       (2, 'Jane', '1995-02-14'),
       (3, 'Bob', '1985-03-15'),
       (4, 'Alice', '1992-04-20'),
       (5, 'Mike', '1998-05-25'),
       (6, 'Sara', '1991-06-30'),
       (7, 'Tom', '1994-07-04'),
       (8, 'Emily', '1989-08-10'),
       (9, 'David', '1997-09-12'),
       (10, 'Olivia', '1993-10-18');

select [Name], [Dateofbirth], datename(month,Dateofbirth) as Month, datename(day, Dateofbirth) as day, datename(weekday,Dateofbirth)as week, datename(Year,Dateofbirth)as Year 
from myTable

select * from myTable