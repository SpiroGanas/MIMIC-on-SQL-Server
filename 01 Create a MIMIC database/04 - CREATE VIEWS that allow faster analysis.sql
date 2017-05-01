USE [MIMIC3]
GO




create view [dbo].[vw_CHARTEVENTS_1000Patients]
as
-- This view returns data for only the first 1000 patients in the very, very large CHARTEVENTS table
SELECT *
  FROM [MIMIC3].[dbo].[CHARTEVENTS]
  where subject_ID <1000
GO


