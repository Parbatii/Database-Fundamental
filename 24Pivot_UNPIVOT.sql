use [practise]
go
-- Create the Product table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Insert 5 values into the Product table
INSERT INTO Product (ProductID, ProductName, Price)
VALUES (1, 'Product A', 10.00),
       (2, 'Product B', 20.00),
       (3, 'Product C', 30.00),
       (4, 'Product D', 40.00),
       (5, 'Product E', 50.00);

-- Create the Sales table
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    ProductID INT,
    Month VARCHAR(10),
    Revenue DECIMAL(10,2)
);

-- Insert 10 values into the Sales table
INSERT INTO Sales (SalesID, ProductID, Month, Revenue)
VALUES (1, 1, 'January', 100.00),
       (2, 1, 'February', 200.00),
       (3, 1, 'March', 300.00),
       (4, 2, 'January', 400.00),
       (5, 2, 'February', 500.00),
       (6, 2, 'March', 600.00),
       (7, 3, 'January', 700.00),
       (8, 3, 'February', 800.00),
       (9, 3, 'March', 900.00),
       (10, 4, 'January', 1000.00);

-- Select the data from the Sales table and pivot it to show the total revenue for each product in separate columns for each month
SELECT *
FROM
    (SELECT ProductID, Month, Revenue FROM Sales) AS SourceTable
PIVOT
    (SUM(Revenue) FOR Month IN ([January], [February], [March])) AS PivotTable;

-- Select the data from the pivoted Sales table and unpivot it to show the revenue for each month as rows
SELECT ProductID, Month, Revenue
FROM
    (SELECT ProductID, January, February, March FROM PivotedSales) AS SourceTable
UNPIVOT
    (Revenue FOR Month IN ([January], [February], [March])) AS UnpivotTable;