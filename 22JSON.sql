select * from Customer


select 'Parbati' Firstname, 'Thapa' Lastname
for json path
go


select 'Parbati' Firstname, 'Thapa' Lastname
for json auto
go-----it didn't run. Because it need a table to work

select * from dbo.Customer where CustomerID=1
for json path
go

select * from dbo.Customer where CustomerID=1
for json auto
go