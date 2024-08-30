--cleansed dimcustomer table
SELECT  c.[CustomerKey]
      ,c.[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
     -- ,[FirstName]
     -- ,[MiddleName]
     -- ,[LastName]
	  , CONCAT_WS(' ',firstname,lastname) as FullName
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
      ,CASE
	  WHEN [Gender]='M' THEN 'Male' when Gender= 'F' THEN 'Female' END as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      --,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.City
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [dbo].[DimGeography] g  -- joined city from geography table
  on c.GeographyKey=g.GeographyKey
  order by c.CustomerKey


