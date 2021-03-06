﻿CREATE TABLE [dbo].[BSCMeasures] (
    [BSCM_ID]             INT            NOT NULL,
    [BSCO_ID]             INT            NULL,
    [BSCML_ID]            INT            NULL,
    [StaffGroup]          VARCHAR (50)   NULL,
    [SiteLocationID]      INT            NULL,
    [MeasuresDescr]       VARCHAR (100)  NULL,
    [CurrentYear]         CHAR (4)       NULL,
    [PriorYear]           CHAR (4)       NULL,
    [NbrQuarters]         SMALLINT       NULL,
    [RequiredFlag]        CHAR (1)       NULL,
    [UpdateableFlag]      CHAR (1)       NULL,
    [ActiveFlag]          CHAR (1)       NULL,
    [ManualMeasureFlag]   CHAR (1)       NULL,
    [PriorYearSiteActual] VARCHAR (50)   NULL,
    [PriorYearCEPActual]  VARCHAR (50)   NULL,
    [Qtr1Value]           VARCHAR (50)   NULL,
    [Qtr2Value]           VARCHAR (50)   NULL,
    [Qtr3Value]           VARCHAR (50)   NULL,
    [Qtr4Value]           VARCHAR (50)   NULL,
    [TargetValueBase]     VARCHAR (50)   NULL,
    [TargetValueStretch]  VARCHAR (50)   NULL,
    [SiteInitiatives]     VARCHAR (2000) NULL,
    [ProgressUpdate]      VARCHAR (2000) NULL,
    [CreDate]             DATETIME       NULL,
    [UpdDate]             DATETIME       NULL,
    [LastUpdatedUserID]   VARCHAR (60)   NULL
);

