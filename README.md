# Data Analysis SQL Queries

This repository contains SQL queries used to create a sales dashboard, each file representing a different query for extracting and analyzing data from the AdventureWorks database.

## Queries

- cleansed dimcustomer: This query cleanses the `DimCustomer` table by creating a `FullName` column from `FirstName` and `LastName`, and standardises the `Gender` field to 'Male' or 'Female'.
   It joins with the `DimGeography` table to include the `City` information and orders the results by `CustomerKey`.


- cleansed dimdate: This query cleanses the `DimDate` table by renaming and extracting key date components: `DATE` (full date), `MONTH` (abbreviated month name), `MONTHNO` (month number), `QUARTER`, and `YEAR`.
  It filters the results to include only dates from the year 2020 onward.


- cleansed internetsales: This query cleanses the `FactInternetSales` table by selecting key fields related to sales transactions, including `ProductKey`, `CustomerKey`, `OrderQuantity`, `UnitPrice`, and `SalesAmount`.
  It converts `OrderDate` to a date-only format and filters the results to show sales data from the last two years, ordering the results by `OrderDateKey`.


- cleansed product: This query selects key details from the `DimProduct` table, like `ProductName`, `Category`, `Subcategory`, `Color`, and `Size`, while joining with the `ProductCategory` and `ProductSubcategory` tables to add category names.
   It replaces any missing `Status` with "Outdated" and orders the results by `ProductKey`.
