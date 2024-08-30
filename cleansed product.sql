--cleansed product table
SELECT  [ProductKey]
      ,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS ProductName
	  ,pc.EnglishProductCategoryName AS ProductCategory
	  , ps.EnglishProductSubcategoryName AS ProductSubcategory
      --,[SpanishProductName]
     -- ,[FrenchProductName]
     -- ,[StandardCost]
     -- ,[FinishedGoodsFlag]
      ,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size]
     -- ,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName]
     -- ,[LargePhoto]
      ,[EnglishDescription]
     -- ,[FrenchDescription]
      --,[ChineseDescription]
     -- ,[ArabicDescription]
     -- ,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,isnull([Status],'Outdated') as ProductStatus
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS P
  left join [dbo].[DimProductSubcategory] as PS -- joined product subcategory
  ON p.ProductSubcategoryKey= ps.[ProductSubcategoryKey] 
  left join [dbo].[DimProductCategory] as PC -- joine product category using subcategory table
  ON ps.ProductCategoryKey=pc.ProductCategoryKey
  order by ProductKey