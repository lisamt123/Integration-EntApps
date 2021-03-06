USE [ApplicationIntegration]
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadLMSOrg]    Script Date: 11/02/2016 16:49:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER        PROCEDURE [dbo].[usp_LoadLMSOrg] 
AS

/* 	Author: 	Reetika Singh
	Date:		10/7/2016
	Purpose:	Loads LMS ORG information
	Revision:	11/2/2016 -- Create a site = Unassigned site to hold active Providers missing sites

*/
SET QUOTED_IDENTIFIER OFF 
SET ANSI_NULLS OFF 

BEGIN

			--Archive inactive ORG data
			
			UPDATE LMSOrg
				SET ORG_PARENT_CODE = NULL,
					Hierarchy = 'Archive'
			WHERE ORG_CODE IN (SELECT RegionCode 
							FROM Regions
								WHERE division = '')
			OR ORG_CODE IN (SELECT Code 
						   FROM Hospital_region
								WHERE status = 1)	
								
			
			--ORG_CODE|ORG_NAME|ORG_PARENT_CODE|Hierarchy|DOMAIN_FLAG
			
			--Delete active orgs to reload 
			
			
			DELETE FROM LMSOrg
			WHERE Hierarchy <> 'Archive'
			
			--Insert unassigned Site
			
			
			INSERT INTO LMSOrg
			VALUES ('ZZ22', 'Unassigned Site', '', 'CEPamerica', 0)


			--Insert active hierarchy

			INSERT INTO LMSOrg
			SELECT * FROM (
				--division
				SELECT LTRIM(RTRIM(CD.divCode)) ORG_CODE,
					   LTRIM(RTRIM(CD.divName)) ORG_NAME,
					   'O-CEPamerica' ORG_PARENT_CODE,
					   'CEPAmerica' Hierarchy,
					   0 DOMAIN_FLAG
				FROM CEP_division CD
				WHERE CD.divName IS NOT NULL
				--Regions
				UNION
				SELECT LTRIM(RTRIM(R.RegionCode)) ORG_CODE,
					   LTRIM(RTRIM(R.RegionName)) ORG_NAME,
					   LTRIM(RTRIM(CD.divCode)) ORG_PARENT_CODE,
					   'CEPAmerica' Hierarchy,
					   0 DOMAIN_FLAG
				FROM Regions R
				JOIN CEP_division CD ON CD.divCode = R.division
				WHERE R.RegionName IS NOT NULL
				--sites
				UNION
				SELECT LTRIM(RTRIM(HR.Code)) ORG_CODE,
					   LTRIM(RTRIM(HR.SFDCName)) + 
						CASE WHEN HR.HospitalName LIKE '%-%EMPA%'
							 THEN ' - EMPA'
							 WHEN SP.Practice_Location__c IS NULL
							 THEN ''
							 ELSE ' - ' + SP.Practice_Location__c END ORG_NAME,
					   LTRIM(RTRIM(HR.Region)) ORG_PARENT_CODE,
					   'CEPAmerica' Hierarchy,
					   0 DOMAIN_FLAG
				FROM Hospital_region HR
				LEFT OUTER JOIN SFDCPracLine SP ON SP.WebCode = HR.Code
				WHERE HR.SFDCName IS NOT NULL
				--AND HR.Region <> ''
				 AND HR.TCstruct IS NOT NULL
				AND HR.status = 0) Org
			ORDER BY ORG_PARENT_CODE, ORG_CODE;



			--Load Corporate Heirarchy


			WITH CorpOrg_CTE (ORG_CODE, ORG_NAME, ORG_PARENT_CODE, Hierarchy, DOMAIN_FLAG, DeptCode, DeptName)
			AS(
				SELECT DISTINCT LTRIM(RTRIM(UPPER(LEFT(division, 3)) + CONVERT(nvarchar(4), ProcessLevel))) ORG_CODE,
				   LTRIM(RTRIM(Division)) ORG_NAME,
				   CASE WHEN ProcessLevel = 9200
						THEN 'O-MBSI'
						ELSE 'O-MedAmerica' END AS ORG_PARENT_CODE,
				   'CEPAmerica' Hierarchy,
				   0 DOMAIN_FLAG,
				   CONVERT(nvarchar(4),ProcessLevel) +''+ CONVERT(nvarchar(4),Department) DeptCode,
				   DeptName
				FROM CorporateDivisions
				WHERE Division IS NOT NULL
				AND Division <> 'Not in use'
				--ORDER BY ORG_Name
				)
			INSERT INTO LMSOrg
			SELECT * FROM (
				--Corporate Divisions
				SELECT DISTINCT ORG_CODE,
						ORG_NAME,
						ORG_PARENT_CODE,
						Hierarchy,
						DOMAIN_FLAG
				FROM CorpOrg_CTE
				UNION
				--Corporate Departments
				SELECT LTRIM(RTRIM(DeptCode)) ORG_CODE,
					   LTRIM(RTRIM(DeptName)) ORG_NAME,
					   ORG_CODE ORG_PARENT_CODE,
					   'CEPAmerica' Hierarchy,
					   0 DOMAIN_FLAG
				FROM CorpOrg_CTE
			)LO

			--select * from LMSOrg


			
	
	

END


