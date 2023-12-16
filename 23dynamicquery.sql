-- it is used to create a query as string and to express dynamically
--dynamic query is used to create and execute sql statement in runtime that allows to construct
--flexible query based on input parameter

declare @dynamic_query nvarchar(max)
select @dynamic_query= 'select * from Customer'
exec (@dynamic_query)

