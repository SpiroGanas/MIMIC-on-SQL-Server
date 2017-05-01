-- This script QA tests all the MIMIC III tables to make sure they contain the correct number of rows
-- The expected number of rows comes from the website:  https://mimic.physionet.org/about/mimic/
--
-- This query can take up to 20 minutes to run

USE [MIMIC3]
GO

Select 'ADMISSIONS' as [Table Name], count(*) as [Rows in the Table], 58976 as [Expected Rows], count(*)-58976 as [Difference] from [dbo].[ADMISSIONS] UNION ALL 
Select 'CALLOUT' as [Table Name], count(*) as [Rows in the Table], 34499 as [Expected Rows], count(*)-34499 as [Difference] from [dbo].[CALLOUT]  UNION ALL 
Select 'CAREGIVERS' as [Table Name], count(*) as [Rows in the Table], 7567 as [Expected Rows], count(*)-7567 as [Difference] from [dbo].[CAREGIVERS] UNION ALL 
Select 'CHARTEVENTS' as [Table Name], count(*) as [Rows in the Table], 330712483 as [Expected Rows], count(*)-330712483 as [Difference] from [dbo].[CHARTEVENTS] UNION ALL 
Select 'CPTEVENTS' as [Table Name], count(*) as [Rows in the Table], 573146 as [Expected Rows], count(*)-573146 as [Difference] from [dbo].[CPTEVENTS] UNION ALL 
Select 'D_CPT' as [Table Name], count(*) as [Rows in the Table], 134 as [Expected Rows], count(*)-134 as [Difference] from [dbo].[D_CPT] UNION ALL 
Select 'D_ICD_DIAGNOSES' as [Table Name], count(*) as [Rows in the Table], 14567 as [Expected Rows], count(*)-14567 as [Difference] from [dbo].[D_ICD_DIAGNOSES] UNION ALL 
Select 'D_ICD_PROCEDURES' as [Table Name], count(*) as [Rows in the Table], 3882 as [Expected Rows], count(*)-3882 as [Difference] from [dbo].[D_ICD_PROCEDURES] UNION ALL 
Select 'D_ITEMS' as [Table Name], count(*) as [Rows in the Table], 12487 as [Expected Rows], count(*)-12487 as [Difference] from [dbo].[D_ITEMS] UNION ALL 
Select 'D_LABITEMS' as [Table Name], count(*) as [Rows in the Table], 753 as [Expected Rows], count(*)-753 as [Difference] from [dbo].[D_LABITEMS] UNION ALL 
Select 'DATETIMEEVENTS' as [Table Name], count(*) as [Rows in the Table], 4485937 as [Expected Rows], count(*)-4485937 as [Difference] from [dbo].[DATETIMEEVENTS] UNION ALL 
Select 'DIAGNOSES_ICD' as [Table Name], count(*) as [Rows in the Table], 651047 as [Expected Rows], count(*)-651047 as [Difference] from [dbo].[DIAGNOSES_ICD] UNION ALL 
Select 'DRGCODES' as [Table Name], count(*) as [Rows in the Table], 125557 as [Expected Rows], count(*)-125557 as [Difference] from [dbo].[DRGCODES] UNION ALL 
Select 'ICUSTAYS' as [Table Name], count(*) as [Rows in the Table], 61532 as [Expected Rows], count(*)-61532 as [Difference] from [dbo].[ICUSTAYS] UNION ALL 
Select 'INPUTEVENTS_CV' as [Table Name], count(*) as [Rows in the Table], 17527935 as [Expected Rows], count(*)-17527935 as [Difference] from [dbo].[INPUTEVENTS_CV] UNION ALL 
Select 'INPUTEVENTS_MV' as [Table Name], count(*) as [Rows in the Table], 3618991 as [Expected Rows], count(*)-3618991 as [Difference] from [dbo].[INPUTEVENTS_MV] UNION ALL 
Select 'LABEVENTS' as [Table Name], count(*) as [Rows in the Table], 27854055 as [Expected Rows], count(*)-27854055 as [Difference] from [dbo].[LABEVENTS] UNION ALL 
Select 'MICROBIOLOGYEVENTS' as [Table Name], count(*) as [Rows in the Table], 631726 as [Expected Rows], count(*)-631726 as [Difference] from [dbo].[MICROBIOLOGYEVENTS] UNION ALL 
Select 'NOTEEVENTS' as [Table Name], count(*) as [Rows in the Table], 2083180 as [Expected Rows], count(*)-2083180 as [Difference] from [dbo].[NOTEEVENTS] UNION ALL 
Select 'OUTPUTEVENTS' as [Table Name], count(*) as [Rows in the Table], 4349218 as [Expected Rows], count(*)-4349218 as [Difference] from [dbo].[OUTPUTEVENTS] UNION ALL 
Select 'PATIENTS' as [Table Name], count(*) as [Rows in the Table], 46520 as [Expected Rows], count(*)-46520 as [Difference] from [dbo].[PATIENTS] UNION ALL 
Select 'PRESCRIPTIONS' as [Table Name], count(*) as [Rows in the Table], 4156450 as [Expected Rows], count(*)-4156450 as [Difference] from [dbo].[PRESCRIPTIONS] UNION ALL 
Select 'PROCEDUREEVENTS_MV' as [Table Name], count(*) as [Rows in the Table], 258066 as [Expected Rows], count(*)-258066 as [Difference] from [dbo].[PROCEDUREEVENTS_MV] UNION ALL 
Select 'PROCEDURES_ICD' as [Table Name], count(*) as [Rows in the Table], 240095 as [Expected Rows], count(*)-240095 as [Difference] from [dbo].[PROCEDURES_ICD] UNION ALL 
Select 'SERVICES' as [Table Name], count(*) as [Rows in the Table], 73343 as [Expected Rows], count(*)-73343 as [Difference] from [dbo].[SERVICES] UNION ALL 
Select 'TRANSFERS' as [Table Name], count(*) as [Rows in the Table], 261897 as [Expected Rows], count(*)-261897 as [Difference] from [dbo].[TRANSFERS]

order by [Table Name] asc
