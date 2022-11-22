SELECT  a.OrderDate, count(a.OrderDate) Orders_cnt FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] a 
group by a.OrderDate
having count(a.OrderDate) <100
order by Orders_cnt DESC;


SELECT b.OrderDate, b.UnitPrice FROM 
(
SELECT  a.OrderDate, 
 ROW_NUMBER() OVER(PARTITION BY OrderDate
 ORDER BY UnitPrice DESC) AS "RowNumber",
 UnitPrice
 FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] a 

 ) b where [RowNumber] <4
 order by OrderDate;
