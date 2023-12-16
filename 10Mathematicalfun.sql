select abs(-83.34)

select ceiling(15.2)
select ceiling(-15.2)

select floor(15.2)
select floor(-15.2)

select power(2,2)
select power(2,4)
select power(2,8)

select square(2)
select square(15)

select SQRT(4)
select sqrt(121)

select rand(1)
select rand(2)

select ceiling(rand(8))
select floor(rand(8))

--To print 10 random number:
declare @count int
set @count=1
while @count<=10
begin
	print ceiling(rand()*100)
	set @count = @count + 1
end