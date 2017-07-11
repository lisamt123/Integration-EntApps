﻿CREATE TABLE [dbo].[WebK1Staging2004] (
    [ID1]               INT             NOT NULL,
    [ProviderMasterID]  INT             NULL,
    [DOCNAME]           VARCHAR (100)   NULL,
    [CLKNUM]            VARCHAR (12)    NULL,
    [STAT]              VARCHAR (50)    NULL,
    [TYPE]              VARCHAR (20)    NULL,
    [ERDDRGSTIP]        MONEY           NULL,
    [SABBAT]            MONEY           NULL,
    [RECERT]            MONEY           NULL,
    [VALPOUT]           MONEY           NULL,
    [MVOTHER]           MONEY           NULL,
    [GUARPYMNT]         MONEY           NULL,
    [QEEARN04]          MONEY           NULL,
    [SELFEMPINC]        MONEY           NULL,
    [03CAPCONT]         MONEY           NULL,
    [CAPPOUT]           MONEY           NULL,
    [04RETCONT]         MONEY           NULL,
    [03RETEARN]         MONEY           NULL,
    [RETPOUT]           MONEY           NULL,
    [04RETEARN]         MONEY           NULL,
    [03PREFBUP]         MONEY           NULL,
    [PREFBUPCONT]       MONEY           NULL,
    [PREFBUPPOUT]       MONEY           NULL,
    [04PREFBUP]         MONEY           NULL,
    [CATBUP03]          MONEY           NULL,
    [CATCONT04]         MONEY           NULL,
    [CATBUPPOUT]        MONEY           NULL,
    [CATBUP04]          MONEY           NULL,
    [INTBEGBAL]         MONEY           NULL,
    [INTENDBAL]         MONEY           NULL,
    [INTEREST]          MONEY           NULL,
    [QEALLOC]           MONEY           NULL,
    [TOTINC]            MONEY           NULL,
    [PORTINC]           MONEY           NULL,
    [NONDEDEXP]         MONEY           NULL,
    [CHARCONT]          MONEY           NULL,
    [ENDCAP03]          MONEY           NULL,
    [DIST03]            MONEY           NULL,
    [ENDCAP04]          MONEY           NULL,
    [DEPRADJ]           MONEY           NULL,
    [DEPCARE]           MONEY           NULL,
    [ADDRESS1]          VARCHAR (200)   NULL,
    [ADDRESS2]          VARCHAR (200)   NULL,
    [ADDRESS3]          VARCHAR (200)   NULL,
    [ZIP]               VARCHAR (20)    NULL,
    [TAXID]             VARCHAR (50)    NULL,
    [LOANS]             MONEY           NULL,
    [BUYUPS]            MONEY           NULL,
    [BONUS50]           MONEY           NULL,
    [BONUS2004]         MONEY           NULL,
    [FINALBONUS]        MONEY           NULL,
    [FINALPAID]         MONEY           NULL,
    [401KCONTRIB]       MONEY           NULL,
    [DEFBENEFITS]       MONEY           NULL,
    [K1LINE22]          MONEY           NULL,
    [Field55]           NVARCHAR (255)  NULL,
    [Field56]           NVARCHAR (255)  NULL,
    [CityStateZip]      VARCHAR (200)   NULL,
    [EntityType]        VARCHAR (20)    NULL,
    [ProfitSharing]     DECIMAL (14, 6) NULL,
    [LossSharing]       DECIMAL (14, 6) NULL,
    [OwnerofCap]        DECIMAL (14, 6) NULL,
    [PartnersLiabOther] DECIMAL (10, 2) NULL,
    [CapAcctBeg]        DECIMAL (10, 2) NULL,
    [CapContributed]    DECIMAL (10, 2) NULL,
    [PartnersShare]     DECIMAL (10, 2) NULL,
    [WithdrAndDistr]    DECIMAL (10, 2) NULL,
    [CapAcctEnd]        DECIMAL (10, 2) NULL,
    [OrdIncome]         DECIMAL (10, 2) NULL,
    [PortInterest]      DECIMAL (10, 2) NULL,
    [GuarPay]           DECIMAL (10, 2) NULL,
    [CharitableContr]   DECIMAL (10, 2) NULL,
    [OtherDedDep]       DECIMAL (10, 2) NULL,
    [InvestIncome]      DECIMAL (10, 2) NULL,
    [NetEarnings]       DECIMAL (10, 2) NULL,
    [DistrOfMoney]      DECIMAL (10, 2) NULL,
    [NonDedExpense]     DECIMAL (10, 2) NULL,
    [DeprAdjust]        DECIMAL (10, 2) NULL,
    [NewFormField2004]  DECIMAL (14, 2) NULL,
    [Credate]           DATETIME        NULL
);
