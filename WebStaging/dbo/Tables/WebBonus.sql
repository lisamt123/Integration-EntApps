﻿CREATE TABLE [dbo].[WebBonus] (
    [Year]             VARCHAR (255)   NULL,
    [Clock]            VARCHAR (10)    NULL,
    [SSN]              VARCHAR (20)    NULL,
    [StaffGroup]       VARCHAR (10)    NULL,
    [ProviderMasterID] INT             NULL,
    [Name]             VARCHAR (100)   NULL,
    [Address1]         VARCHAR (100)   NULL,
    [Address2]         VARCHAR (100)   NULL,
    [City]             VARCHAR (50)    NULL,
    [State]            VARCHAR (50)    NULL,
    [Zip]              VARCHAR (20)    NULL,
    [PshipIDNumber]    VARCHAR (20)    NULL,
    [PshipName]        VARCHAR (100)   NULL,
    [PshipAdd1]        VARCHAR (100)   NULL,
    [PshipCity]        VARCHAR (50)    NULL,
    [PshipState]       VARCHAR (50)    NULL,
    [PshipZip]         VARCHAR (20)    NULL,
    [DecEarnStmtDate]  VARCHAR (255)   NULL,
    [2ndBonusYr]       VARCHAR (255)   NULL,
    [Line1]            DECIMAL (18, 4) NULL,
    [Line2]            DECIMAL (18, 4) NULL,
    [Line3]            DECIMAL (18, 4) NULL,
    [Line4]            DECIMAL (18, 4) NULL,
    [Line5a]           DECIMAL (18, 4) NULL,
    [Line5b]           DECIMAL (18, 4) NULL,
    [Line6]            DECIMAL (18, 4) NULL,
    [Line7]            DECIMAL (18, 4) NULL,
    [Line7a]           DECIMAL (18, 4) NULL,
    [Line7b]           DECIMAL (18, 4) NULL,
    [Line8]            DECIMAL (18, 4) NULL,
    [Line8a]           DECIMAL (18, 4) NULL,
    [Line8b]           DECIMAL (18, 4) NULL,
    [Line8c]           DECIMAL (18, 4) NULL,
    [Line9]            DECIMAL (18, 4) NULL,
    [Line9a]           DECIMAL (18, 4) NULL,
    [Line9b]           DECIMAL (18, 4) NULL,
    [Line9c]           DECIMAL (18, 4) NULL,
    [Line10]           DECIMAL (18, 4) NULL,
    [Credate]          DATETIME        CONSTRAINT [DF_WebBonus_Credate] DEFAULT (getdate()) NULL
);

