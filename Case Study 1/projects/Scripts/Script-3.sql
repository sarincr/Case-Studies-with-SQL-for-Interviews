select  count(*) from  TR_OrderDetails tod ;

select  max(Quantity) from  TR_OrderDetails tod ;

select  max(Quantity) , count(*) from  TR_OrderDetails tod ;

select  count(*) from  TR_OrderDetails tod  WHERE  Quantity = 3;

select distinct ProductID from TR_OrderDetails tod order by ProductID asc ;

select distinct ProductID, Quantity from TR_OrderDetails tod order by ProductID asc ;

select distinct ProductID, Quantity from TR_OrderDetails where Quantity = 1 order by ProductID asc ;

select distinct PropertyID from TR_OrderDetails;

select distinct PropertyID, Quantity from TR_OrderDetails where Quantity = 1 order by PropertyID asc ;

select ProductCategory, count(*) as COUNTS from TR_Products group by ProductCategory order by 2 desc;

select ProductCategory, count(*) as COUNTS from TR_Products group by ProductCategory order by 2 desc limit 1;

select ProductID, sum(Quantity) as Total_Quantity from TR_OrderDetails tod group by ProductID order by 2 desc limit 5;

select * from TR_OrderDetails as o left join TR_Products as p on o.ProductID = p.ProductID;

select 
o.*
, p.ProductName
, p.ProductCategory
, p.Price from TR_OrderDetails tod as o left join TR_Products tp as p on o.ProductID = p.ProductID;


