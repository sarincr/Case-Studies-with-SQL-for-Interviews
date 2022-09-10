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


SELECT  o.*, p.* from `TR_OrderDetails.csv`  as o left join TR_Products as p on o.ProductID = p.ProductID;

SELECT  o.*, p.* from TR_OrderDetails as o left join  TR_Products as p on o.ProductID = p.ProductID;


select p.ProductName, sum(o.Quantity) as Total_Quantity from TR_OrderDetails as o left join  TR_Products as p on o.ProductID = p.ProductID;


select p.ProductName , sum(o.Quantity * p.Price) as Sales from TR_OrderDetails as o left join  TR_Products as p on o.ProductID = p.ProductID;

select 
p.ProductName
, sum(o.Quantity * p.Price) as Sales 
from TR_OrderDetails as o
left join TR_Products as p on o.ProductID = p.ProductID
group by p.ProductName
order by Sales desc
LIMIT 5;


select * from TR_OrderDetails as o 
left join TR_Products as p on o.ProductID = p.ProductID 
left join TR_PropertyInfo as pi on o.PropertyID = pi.`Prop ID`



select 
 pi.PropertyCity
, sum(o.Quantity * p.Price) as Sales 
from TR_OrderDetails as o
left join TR_Products as p on o.ProductID = p.ProductID
left join TR_PropertyInfo as pi on o.PropertyID = pi.`Prop ID`
group by pi.PropertyCity
order by Sales desc
LIMIT 5;


select 
 pi.PropertyCity
, p.ProductName
, sum(o.Quantity * p.Price) as Sales 
from TR_OrderDetails as o
left join TR_Products as p on o.ProductID = p.ProductID
left join TR_PropertyInfo as pi on o.PropertyID = pi.`Prop ID`
where pi.PropertyCity = 'Arlington'
group by pi.PropertyCity, p.ProductName
order by Sales desc
LIMIT 5;

