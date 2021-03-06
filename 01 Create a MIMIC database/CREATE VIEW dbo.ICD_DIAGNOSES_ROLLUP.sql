/****** Script for SelectTopNRows command from SSMS  ******/
use [MIMIC3]
GO

CREATE OR ALTER VIEW dbo.ICD_DIAGNOSES_ROLLUP
as
-- This view rolls up the ICD-9 codes to the 3-digit category level



with CategoryTitle as (
SELECT 
[ICD9_CODE]
,[SHORT_TITLE]
,[LONG_TITLE]
, rank() over (partition by left([ICD9_CODE],3) order by [ICD9_CODE] asc) as MyRank
FROM [MIMIC3].[dbo].[D_ICD_DIAGNOSES]
)


SELECT 
a.[ICD9_CODE] as Detailed_ICD9_Code
,a.[SHORT_TITLE]  as Detailed_ICD9_Short_Title
,a.[LONG_TITLE] as Detailed_ICD9_Long_Title
,b.[ICD9_CODE] as RolledUp_ICD9_Code
,b.[SHORT_TITLE]  as RolledUp_ICD9_Short_Title
,b.[LONG_TITLE] as RolledUp_ICD9_Long_Title


FROM 
[MIMIC3].[dbo].[D_ICD_DIAGNOSES] a
inner join
(Select * from CategoryTitle where MyRank = 1) b
on left(a.[ICD9_CODE],3) = left(b.[ICD9_CODE],3)


