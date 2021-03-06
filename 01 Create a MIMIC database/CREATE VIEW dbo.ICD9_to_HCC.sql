/****** Script for SelectTopNRows command from SSMS  ******/

CREATE OR ALTER VIEW dbo.ICD9_to_HCC
as

SELECT 
a.[ROW_ID]
,a.[ICD9_CODE]
,a.[SHORT_TITLE]
,a.[LONG_TITLE]
,b.[HCC_Code]
,c.[HCC_Description]
FROM 
[MIMIC3].[dbo].[D_ICD_DIAGNOSES] a
left outer join
[dbo].[ref_ICD9_to_HCC_Mapping] b
on a.ICD9_Code = b.[ICD9_Code]
left outer join
[dbo].[ref_HCC_Desciptions] c
on 
b.[HCC_Code]=c.[HCC_Code]