﻿CREATE PROCEDURE dbo.zstpAppendtblPR197(@MthYrID nvarchar(50))
AS TRUNCATE TABLE lussierm.ztblPR197 
INSERT INTO lussierm.ztblPR197
	([COMPANY-4], [DIST-COMPANY-4], [PAYMENT-DATE-3], [DIST-COMPANY-5], [ACCT-UNIT-3], [ACCOUNT-3], 
         [SUB-ACCT-3], [POSTING-DATE-2], [DESCRIPTION-3], [CONTINUED-2], [EMPLOYEE-2], [FULL-NAME-2], [DIST-UNITS], 
          [DIST-HOURS], [DIST-AMT], [CHECK-NBR], [TEMP-STAR], [GL-DATE-2], [CHECK-TYPE], [PAY-CODE], [DED-CODE], 
          [JOB-CODE], [DIST-PROC-LEV], [DEPARTMENT-3], [DIST-UNITS-2], [DIST-HOURS-2], [DIST-AMT-2], ACTIVITY, 
         [ACCT-CATEGORY], POSITION, DataSetDate, PR197FileName, PR197Month/**/)
 SELECT       [COMPANY-4], [DIST-COMPANY-4], [PAYMENT-DATE-3], [DIST-COMPANY-5], [ACCT-UNIT-3], [ACCOUNT-3], 
          [SUB-ACCT-3], [POSTING-DATE-2], [DESCRIPTION-3], [CONTINUED-2], [EMPLOYEE-2], [FULL-NAME-2], [DIST-UNITS], 
          [DIST-HOURS], [DIST-AMT], [CHECK-NBR], [TEMP-STAR], [GL-DATE-2], [CHECK-TYPE], [PAY-CODE], [DED-CODE], 
         [JOB-CODE], [DIST-PROC-LEV], [DEPARTMENT-3], [DIST-UNITS-2], [DIST-HOURS-2], [DIST-AMT-2], ACTIVITY, 
          [ACCT-CATEGORY], POSITION, DataSetDate, FileName, @MthYrID AS Expr1/**/
FROM           dbo.tblTempPR197
