--cleansed dimdate table
SELECT  [DateKey]
      ,[FullDateAlternateKey] AS DATE
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
     -- ,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
     ,[WeekNumberOfYear]
      ,left([EnglishMonthName],3) AS MONTH
     -- ,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MONTHNO
      ,[CalendarQuarter] AS QUARTER
      ,[CalendarYear] AS YEAR
     -- ,[CalendarSemester]
     -- ,[FiscalQuarter]
     -- ,[FiscalYear]
     -- ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
where CalendarYear>2019
