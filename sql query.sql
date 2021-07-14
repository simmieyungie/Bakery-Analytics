/*
Query for Market Basket with Python
*/

USE AdventureWorks2012

-- 
SELECT
SOH.[OnlineOrderFlag],
SOH.[CustomerID],
PP.[Name],
PSC.[Name] as [ProductSubName],
PC.[Name] as [ProductCatName],
SOD.[OrderQty],
SOH.[OrderDate]

FROM [Sales].[SalesOrderHeader] AS [SOH]
INNER JOIN [Sales].[SalesOrderDetail] AS [SOD]
ON [SOH].[SalesOrderID] = SOD.[SalesOrderID]
INNER JOIN [Production].[Product] AS [PP]
ON [SOD].[ProductID] = [PP].ProductID
INNER JOIN [Production].[ProductSubcategory] AS [PSC]
ON [PP].ProductSubcategoryID = PSC.ProductSubcategoryID
INNER JOIN [Production].[ProductCategory] AS [PC]
ON [PSC].ProductCategoryID = [PC].ProductCategoryID
ORDER BY [CustomerID]