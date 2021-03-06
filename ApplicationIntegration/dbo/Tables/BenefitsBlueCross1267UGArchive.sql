﻿CREATE TABLE [dbo].[BenefitsBlueCross1267UGArchive] (
    [CERT]             INT            NULL,
    [LASTNAME]         NVARCHAR (255) NULL,
    [FIRSTNAME]        NVARCHAR (255) NULL,
    [MIDINIT]          NVARCHAR (255) NULL,
    [BIRTHDATE]        SMALLDATETIME  NULL,
    [CONTTYPE]         NVARCHAR (255) NULL,
    [MEMBCODE]         FLOAT (53)     NULL,
    [RATE]             FLOAT (53)     NULL,
    [PHONE]            NVARCHAR (255) NULL,
    [AGE]              FLOAT (53)     NULL,
    [ORIGEFFDATE]      SMALLDATETIME  NULL,
    [CURRENTEFFDATE]   SMALLDATETIME  NULL,
    [REQUESTDATE]      SMALLDATETIME  NULL,
    [CLOCKNMBR]        NVARCHAR (255) NULL,
    [DEPTNMBR]         NVARCHAR (255) NULL,
    [GROUPNMBR]        NVARCHAR (255) NULL,
    [STREETADDR]       NVARCHAR (255) NULL,
    [CITYNAME]         NVARCHAR (255) NULL,
    [STATENAME]        NVARCHAR (255) NULL,
    [ZIPCD]            VARCHAR (50)   NULL,
    [CBRENDDTE]        NVARCHAR (255) NULL,
    [VOLUME]           NVARCHAR (255) NULL,
    [RATELIFE]         FLOAT (53)     NULL,
    [CONTTYPELIFE]     NVARCHAR (255) NULL,
    [ProviderMasterID] INT            NULL,
    [AddrNew]          VARCHAR (255)  NULL,
    [AddrCompare]      VARCHAR (255)  NULL
);

