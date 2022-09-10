select  count(*) from  TR_OrderDetails tod ;

select  max(Quantity) from  TR_OrderDetails tod ;

select  max(Quantity) , count(*) from  TR_OrderDetails tod ;

select  count(*) from  TR_OrderDetails tod  WHERE  Quantity = 3;

select distinct ProductID from TR_OrderDetails tod order by ProductID asc ;

select distinct ProductID, Quantity from TR_OrderDetails tod order by ProductID asc ;

select distinct ProductID, Quantity from TR_OrderDetails where Quantity = 1 order by ProductID asc ;

select distinct PropertyID from TR_OrderDetails;

select distinct PropertyID, Quantity from TR_OrderDetails where Quantity = 1 order by PropertyID asc ;

select ProductCategory, count(*) as COUNT from TR_Products group by ProductCategory order by 2 desc;





