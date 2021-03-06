USE [ApplicationIntegration]
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadLMSEmpJob]    Script Date: 10/13/2016 10:24:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE        PROCEDURE [dbo].[usp_LoadLMSEmpJob] 
AS

/* 	Author: 	Reetika Singh
	Date:		10/7/2016
	Purpose:	
	Revision:	

*/


BEGIN

SET NOCOUNT ON;
SET XACT_ABORT ON;

	BEGIN TRY
	
		BEGIN TRANSACTION;

			TRUNCATE TABLE LMSEmployeeJob

			INSERT INTO LMSEmployeeJob
			SELECT DISTINCT LE.EMP_No,
				LTRIM(RTRIM(LJ.JOB_CODE)),
				LE.[START_DATE] JOIN_DATE,
				1 [PRIMARY],
				'CEPAmerica' JOB_DOMAIN
			FROM LMSEmployee LE
			JOIN LMSJobs LJ ON LE.PRIMARY_JOB = LJ.JOB_CODE

			UNION

			SELECT DISTINCT LE.EMP_No,
				LTRIM(RTRIM(LJ.JOB_CODE)),
				LE.[START_DATE] JOIN_DATE,
				1 [PRIMARY],
				'CEPAmerica' JOB_DOMAIN
			FROM LMSEmployee LE
			JOIN EmployeeBase EB ON EB.ProviderMasterID = LE.EMP_NO
			JOIN AppStaging.dbo.LawsonEMPLOYEE LAE ON LAE.EMPLOYEE = EB.LawsonID
			JOIN LMSJobs LJ ON LAE.R_POSITION = LJ.JOB_CODE
			

	
	
		COMMIT TRANSACTION;
		
	END TRY
	
	BEGIN CATCH
		IF (XACT_STATE()) = -1
			ROLLBACK TRANSACTION;

		-- test if the transaction is committable
		IF (XACT_STATE()) = 1
			COMMIT TRANSACTION;

	END CATCH;

	
	

END
GO
