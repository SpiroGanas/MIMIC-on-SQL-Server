USE [MIMIC3]
GO



IF OBJECT_ID('vwCHARTEVENTS', 'V') IS NOT NULL
    DROP VIEW dbo.vwCHARTEVENTS;
GO


CREATE VIEW [dbo].[vwCHARTEVENTS]
as
-- The CHARTEVENTS table is very large, so I created this view as an "interface" to
-- let me code against a smaller subset of the data
SELECT *
  FROM [MIMIC3].[dbo].[CHARTEVENTS]



  -- This filter returns data for only the first 100 patients
  where subject_ID <100
GO


