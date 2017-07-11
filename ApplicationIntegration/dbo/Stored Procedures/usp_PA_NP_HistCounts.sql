﻿USE [ApplicationIntegration]
GO
/****** Object:  StoredProcedure [dbo].[usp_PA_NP_HistCounts]    Script Date: 11/08/2016 09:57:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER        PROCEDURE [dbo].[usp_PA_NP_HistCounts] 
AS

/* 	Author: 	Reetika Singh
	Date:	    10/14/2013
	Purpose:	Generates the report PA_NP_Historical Counts
	Revision:	

*/
SET QUOTED_IDENTIFIER OFF 
SET ANSI_NULLS OFF 

BEGIN

		TRUNCATE TABLE PANPHistCount 
	
		DECLARE @v_end_date as datetime

		-- If January then continue to load previous year
		-- Else load current year
		SET @v_end_date = 
				CASE	WHEN month(getDate())=1 THEN '12/31/' + cast(year(getDate())-1 as varchar)
					ELSE '12/31/' + cast(year(getDate()) as varchar)
				END
		--For Manual back load
		--SET @v_end_date = '12/31/2015'
		
		--PRINT @v_end_date

		BEGIN
		
		
		INSERT INTO PANPHistCount
		SELECT * FROM (

			/******  Full Time PA data for the period	*****/
			SELECT 	ltrim(rtrim(a.first_name)) + ' ' + ltrim(rtrim(a.last_name)) as provider, a.employee,
				upper(b.name) as site, a.process_level, 
				CASE
					WHEN a.process_level >=1000 AND a.process_level < 2000 THEN 'CA'
					ELSE 'NON-CA'
				END as ca_flag,
				c.description as position, 
				CASE 
					WHEN c.description LIKE '%NURSE%' THEN 'NP'
					ELSE	'PA'
				END as pa_np,
				'FULL TIME' as emp_status,
				convert(varchar, a.date_hired, 101) as date_hired,
				e.address1, e.city1, e.state1, e.zipCode1, 
				CASE 	WHEN len(e.phoneNbr1) !< 3 THEN e.phoneNbr1
					ELSE e.phoneNbr2
				END as phoneNbr,
				e.CellPhoneNbr,
				e.CEPEmail,
				d.providerMasterID
			FROM AppStaging.dbo.LawsonEMPLOYEE a  
				INNER JOIN AppStaging.dbo.LawsonPRSYSTEM b ON a.process_level = b.process_level
				INNER JOIN AppStaging.dbo.LawsonJOBCODE c ON a.job_code = c.job_code
				INNER JOIN ApplicationIntegration.dbo.LawsonIDMatch d ON a.employee = d.LawsonEmpNo
				LEFT OUTER JOIN ApplicationIntegration.dbo.providerMasterBase e ON e.providerMasterID = d.providerMasterID
			WHERE a.employee IN
			(
				SELECT ep.employee
				FROM AppStaging.dbo.LawsonPAEMPPOS ep
				WHERE (fte = 1 or a.emp_status = 'A1')
				AND 	(
					ep.end_date >= @v_end_date AND ep.effect_date < @v_end_date 
					OR (ep.effect_date <= @v_end_date AND ep.end_date < '1/1/1901') 
					)
				AND ep.pos_level=1
				AND (LEFT(ep.job_code,6)='EPHYAS' OR LEFT(ep.job_code,4)='ERNP' 
					OR LEFT(ep.job_code,6)='EDIRPA' OR LEFT(ep.job_code,8)= 'ELSNPANP' 
					OR LEFT(ep.job_code,3)='ANS')
				--AND ep.process_level >=1000
				--AND ep.process_level < 2000
				
				--ANSASST1 - Anesthesia Assistant
				--ANSCRNA1 - Cert Reg Nurse Anesthetist
				--ANSASSTL - Lead Anesthesia Asst
				--ANSCRNL - Lead Cert Reg Nurse Anes
				
				GROUP BY employee
			)
			-- Employees without term dates removed - SG 10/8/2012
			AND	a.employee NOT IN
			(
			1606,
			1805,
			1900,
			1911,
			2023,
			2250,
			2271,
			2448,
			2483,
			2600,
			2641,
			4472,
			4856,
			6065,
			6263
			)




			UNION ALL


			/******  Part Time PA data for the period	*****/
			SELECT 	ltrim(rtrim(a.first_name)) + ' ' + ltrim(rtrim(a.last_name)) as provider, a.employee,
				upper(b.name) as site, a.process_level,  
				CASE
					WHEN a.process_level >=1000 AND a.process_level < 2000 THEN 'CA'
					ELSE 'NON-CA'
				END as ca_flag,
				c.description as position,  
				CASE 
					WHEN c.description LIKE '%NURSE%' THEN 'NP'
					ELSE	'PA'
				END as pa_np,
				'PART TIME' as emp_status,
				convert(varchar, a.date_hired, 101) as date_hired,
				e.address1, e.city1, e.state1, e.zipCode1, 
				CASE 	WHEN len(e.phoneNbr1) !< 3 THEN e.phoneNbr1
					ELSE e.phoneNbr2
				END as phoneNbr,
				e.CellPhoneNbr,
				e.CEPEmail,
				d.providerMasterID
			FROM AppStaging.dbo.LawsonEMPLOYEE a  
				INNER JOIN AppStaging.dbo.LawsonPRSYSTEM b ON a.process_level = b.process_level
				INNER JOIN AppStaging.dbo.LawsonJOBCODE c ON a.job_code = c.job_code
				INNER JOIN ApplicationIntegration.dbo.LawsonIDMatch d ON a.employee = d.LawsonEmpNo
				LEFT OUTER JOIN ApplicationIntegration.dbo.providerMasterBase e ON e.providerMasterID = d.providerMasterID
			WHERE a.employee IN
			(
				SELECT ep.employee
				FROM AppStaging.dbo.LawsonPAEMPPOS ep
				WHERE (fte = .5 or a.emp_status='A2')
				AND 	(
					ep.end_date >= @v_end_date AND ep.effect_date < @v_end_date 
					OR (ep.effect_date <= @v_end_date AND ep.end_date < '1/1/1901') 
					)
				AND ep.pos_level=1
				AND (LEFT(ep.job_code,6)='EPHYAS' OR LEFT(ep.job_code,4)='ERNP' 
					OR LEFT(ep.job_code,6)='EDIRPA' OR LEFT(ep.job_code,8)= 'ELSNPANP' 
					OR LEFT(ep.job_code,3)='ANS')
				--AND ep.process_level >=1000
				--AND ep.process_level < 2000
				GROUP BY employee
			) 
			-- Employees without term dates removed - SG 10/8/2012
			AND	a.employee NOT IN
			(
			1606,
			1805,
			1900,
			1911,
			2023,
			2250,
			2271,
			2448,
			2483,
			2600,
			2641,
			4472,
			4856,
			6065,
			6263
			)


			UNION ALL


			/******  PER DIEM PA data for the period	*****/
			SELECT 	ltrim(rtrim(a.first_name)) + ' ' + ltrim(rtrim(a.last_name)) as provider, a.employee,
				upper(b.name) as site, a.process_level,  
				CASE
					WHEN a.process_level >=1000 AND a.process_level < 2000 THEN 'CA'
					ELSE 'NON-CA'
				END as ca_flag,
				c.description as position,  
				CASE 
					WHEN c.description LIKE '%NURSE%' THEN 'NP'
					ELSE	'PA'
				END as pa_np,
				'PER DIEM' as emp_status,
				convert(varchar, a.date_hired, 101) as date_hired,
				e.address1, e.city1, e.state1, e.zipCode1, 
				CASE 	WHEN len(e.phoneNbr1) !< 3 THEN e.phoneNbr1
					ELSE e.phoneNbr2
				END as phoneNbr,
				e.CellPhoneNbr,
				e.CEPEmail,
				d.providerMasterID
			FROM AppStaging.dbo.LawsonEMPLOYEE a  
				INNER JOIN AppStaging.dbo.LawsonPRSYSTEM b ON a.process_level = b.process_level
				INNER JOIN AppStaging.dbo.LawsonJOBCODE c ON a.job_code = c.job_code
				INNER JOIN ApplicationIntegration.dbo.LawsonIDMatch d ON a.employee = d.LawsonEmpNo
				LEFT OUTER JOIN ApplicationIntegration.dbo.providerMasterBase e ON e.providerMasterID = d.providerMasterID
			WHERE a.employee IN
			(
				SELECT ep.employee
				FROM AppStaging.dbo.LawsonPAEMPPOS ep
				WHERE (fte = .25 or a.emp_status = 'A6')
				AND 	(
					ep.end_date >= @v_end_date AND ep.effect_date < @v_end_date 
					OR (ep.effect_date <= @v_end_date AND ep.end_date < '1/1/1901') 
					)
				AND ep.pos_level=1
				AND (LEFT(ep.job_code,6)='EPHYAS' OR LEFT(ep.job_code,4)='ERNP' 
					OR LEFT(ep.job_code,6)='EDIRPA' OR LEFT(ep.job_code,8)= 'ELSNPANP' 
					OR LEFT(ep.job_code,3)='ANS')
				--AND ep.process_level >=1000
				--AND ep.process_level < 2000
				GROUP BY employee
			) 
			-- Employees without term dates removed - SG 10/8/2012
			AND	a.employee NOT IN
			(
			1606,
			1805,
			1900,
			1911,
			2023,
			2250,
			2271,
			2448,
			2483,
			2600,
			2641,
			4472,
			4856,
			6065,
			6263
			)

			UNION ALL


			/******  'UNKNOWN' PA data for the period	*****/
			SELECT 	ltrim(rtrim(a.first_name)) + ' ' + ltrim(rtrim(a.last_name)) as provider, a.employee,
				upper(b.name) as site, a.process_level,  
				CASE
					WHEN a.process_level >=1000 AND a.process_level < 2000 THEN 'CA'
					ELSE 'NON-CA'
				END as ca_flag,
				c.description as position,  
				CASE 
					WHEN c.description LIKE '%NURSE%' THEN 'NP'
					ELSE	'PA'
				END as pa_np,
				'UNKNOWN' as emp_status,
				convert(varchar, a.date_hired, 101) as date_hired,
				e.address1, e.city1, e.state1, e.zipCode1, 
				CASE 	WHEN len(e.phoneNbr1) !< 3 THEN e.phoneNbr1
					ELSE e.phoneNbr2
				END as phoneNbr,
				e.CellPhoneNbr,
				e.CEPEmail,
				d.providerMasterID
			FROM AppStaging.dbo.LawsonEMPLOYEE a  
				INNER JOIN AppStaging.dbo.LawsonPRSYSTEM b ON a.process_level = b.process_level
				INNER JOIN AppStaging.dbo.LawsonJOBCODE c ON a.job_code = c.job_code
				INNER JOIN ApplicationIntegration.dbo.LawsonIDMatch d ON a.employee = d.LawsonEmpNo
				LEFT OUTER JOIN ApplicationIntegration.dbo.providerMasterBase e ON e.providerMasterID = d.providerMasterID
			WHERE a.employee IN
			(
				SELECT ep.employee
				FROM AppStaging.dbo.LawsonPAEMPPOS ep
				WHERE (fte NOT IN (1, .5, .25) and a.emp_status NOT IN ('A1','A2','A6'))
				AND 	(
					ep.end_date >= @v_end_date AND ep.effect_date < @v_end_date 
					OR (ep.effect_date <= @v_end_date AND ep.end_date < '1/1/1901') 
					)
				AND ep.pos_level=1
				AND (LEFT(ep.job_code,6)='EPHYAS' OR LEFT(ep.job_code,4)='ERNP' 
					OR LEFT(ep.job_code,6)='EDIRPA' OR LEFT(ep.job_code,8)= 'ELSNPANP'
					OR LEFT(ep.job_code,3)='ANS') 
				--AND ep.process_level >=1000
				--AND ep.process_level < 2000
				GROUP BY employee
			) 
			-- Employees without term dates removed - SG 10/8/2012
			AND	a.employee NOT IN
			(
			1606,
			1805,
			1900,
			1911,
			2023,
			2250,
			2271,
			2448,
			2483,
			2600,
			2641,
			4472,
			4856,
			6065,
			6263
			)	)		AS T ORDER BY T.date_hired;
			
	END


	--For HOSP Populations
	
	EXECUTE usp_PA_NP_HistCounts_Hosp
	
	
	--11/8/2016 To classify anesthesia providers
	
	
	UPDATE PANPHistCount
	SET pa_np = CASE WHEN position LIKE '%NURSE%' THEN 'CRNA'
						ELSE 'AA' END
	WHERE position like '%ANES%'
	

END

