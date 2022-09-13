Select * from SalesLT.Product

Select Name, StandardCost,ListPrice From SalesLT.Product

Select Name,StandardCost-ListPrice from SalesLT.Product

Select Name,StandardCost-ListPrice as Markup from SalesLT.Product

Select ProductNumber ,color,size,Color + ', ' + size as ProductDetails from SalesLT.Product

Select ProductID + ': ' + Name as ProductName From SalesLT.Product

Select Cast(ProductID as varchar(5)) + ': ' + Name as ProductName From SalesLT.Product

Select Convert(varchar(5),ProductID) + ': ' + Name as ProductName From SalesLT.Product

Select SellStartDate,Convert(nvarchar(30),SellStartDate) as ConvertedDate , Convert(nvarchar(30),SellStartDate,126) as ISODate from SalesLT.Product

Select Name , Try_Cast (Size as Integer) as numericSize from SalesLT.Product

Select Name , Isnull(Try_Cast (Size as Integer),0) as numericSize from SalesLT.Product

Select Name , NULLIF(Color,'Multi') As SIngleColor From SalesLT.Product

Select Name, Coalesce(SellEndDate , SellStartDate) As StatusLAstUpdated from SalesLT.Product

Select Name , Case when SellEndDate is Null then 'Currently for Sales' else 'No Longer Available' end as SalesStatus from  SalesLT.Product