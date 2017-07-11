﻿CREATE TABLE [dbo].[ScribeSummaryTransaction_BU] (
    [CheckDate]            DATETIME        NULL,
    [CheckNo]              VARCHAR (20)    NULL,
    [PayPeriod]            VARCHAR (10)    NULL,
    [Dept]                 VARCHAR (6)     NULL,
    [DeptDescr]            VARCHAR (50)    NULL,
    [ProviderMasterID]     INT             NULL,
    [CsuFlxIDeb]           INT             NULL,
    [LastName]             VARCHAR (50)    NULL,
    [FirstName]            VARCHAR (30)    NULL,
    [MiddleName]           VARCHAR (30)    NULL,
    [FullName]             VARCHAR (100)   NULL,
    [PayCode]              VARCHAR (5)     NULL,
    [PayCodeDescr]         VARCHAR (30)    NULL,
    [TotalCurrentHours]    DECIMAL (10, 2) NULL,
    [TotalCurrentEarnings] DECIMAL (10, 2) NULL,
    [TotalYTDHours]        DECIMAL (10, 2) NULL,
    [TotalYTDEarnings]     DECIMAL (10, 2) NULL,
    [HourlyRate]           DECIMAL (13, 4) NULL,
    [RangeStartDate]       DATETIME        NULL,
    [RangeEndDate]         DATETIME        NULL,
    [CalendarYear]         VARCHAR (4)     NULL,
    [CreateDate]           DATETIME        NULL,
    [PayRollCheckDate]     DATETIME        NULL,
    [PayRollPayPeriod]     VARCHAR (10)    NULL,
    [CsdFlxID]             INT             NULL,
    [CurrentUnits]         DECIMAL (10, 2) NULL,
    [YTDUnits]             DECIMAL (10, 2) NULL
);
