﻿CREATE TABLE [dbo].[WebCapitalAndAccrualStaging] (
    [ID1]              INT             NULL,
    [DOCNAME]          VARCHAR (100)   NULL,
    [CLKNUM]           VARCHAR (10)    NULL,
    [ProviderMasterID] INT             NULL,
    [QE2003]           NUMERIC (10, 4) NULL,
    [CAPBAL02]         NUMERIC (10, 4) NULL,
    [DISTMAR03]        NUMERIC (10, 4) NULL,
    [CBALMAR03]        NUMERIC (10, 4) NULL,
    [NETCONT03]        NUMERIC (10, 4) NULL,
    [NETINC03]         NUMERIC (10, 4) NULL,
    [VALOTHER]         NUMERIC (10, 4) NULL,
    [CBALDEC02]        NUMERIC (10, 4) NULL,
    [DISTMAR04]        NUMERIC (10, 4) NULL,
    [BALMAR04]         NUMERIC (10, 4) NULL,
    [ABAL02]           NUMERIC (10, 4) NULL,
    [ADISTMAR03]       NUMERIC (10, 4) NULL,
    [ABALMAR03]        NUMERIC (10, 4) NULL,
    [ANETCONT03]       NUMERIC (10, 4) NULL,
    [ANETINC03]        NUMERIC (10, 4) NULL,
    [OTHER]            NUMERIC (10, 4) NULL,
    [ABALDEC03]        NUMERIC (10, 4) NULL,
    [ADISTMAR04]       NUMERIC (10, 4) NULL,
    [ABALMAR04]        NUMERIC (10, 4) NULL,
    [Credate]          DATETIME        CONSTRAINT [DF_WebCapitalAndAccrualStaging_Credate] DEFAULT (getdate()) NULL,
    [CapMD1]           NUMERIC (10)    NULL,
    [AccrMD1]          NUMERIC (10)    NULL,
    [PeMD1]            NUMERIC (10)    NULL,
    [CapAOP1]          NUMERIC (10)    NULL,
    [AccrAOP1]         NUMERIC (10)    NULL,
    [PeAOP1]           NUMERIC (10)    NULL,
    [CapTAP1]          NUMERIC (10)    NULL,
    [AccrTAP1]         NUMERIC (10)    NULL,
    [PeTAP1]           NUMERIC (10)    NULL,
    [CapMD2]           NUMERIC (10)    NULL,
    [AccrMD2]          NUMERIC (10)    NULL,
    [PeMD2]            NUMERIC (10)    NULL,
    [CapAOP2]          NUMERIC (10)    NULL,
    [AccrAOP2]         NUMERIC (10)    NULL,
    [PeAOP2]           NUMERIC (10)    NULL,
    [CapTAP2]          NUMERIC (10)    NULL,
    [AccrTAP2]         NUMERIC (10)    NULL,
    [PeTAP2]           NUMERIC (10)    NULL,
    [CapMD3]           NUMERIC (10)    NULL,
    [AccrMD3]          NUMERIC (10)    NULL,
    [PeMD3]            NUMERIC (10)    NULL,
    [CapAOP3]          NUMERIC (10)    NULL,
    [AccrAOP3]         NUMERIC (10)    NULL,
    [PeAOP3]           NUMERIC (10)    NULL,
    [CapTAP3]          NUMERIC (10)    NULL,
    [AccrTAP3]         NUMERIC (10)    NULL,
    [PeTAP3]           NUMERIC (10)    NULL,
    [CapMD4]           NUMERIC (10)    NULL,
    [AccrMD4]          NUMERIC (10)    NULL,
    [PeMD4]            NUMERIC (10)    NULL,
    [CapAOP4]          NUMERIC (10)    NULL,
    [AccrAOP4]         NUMERIC (10)    NULL,
    [PeAOP4]           NUMERIC (10)    NULL,
    [CapTAP4]          NUMERIC (10)    NULL,
    [AccrTAP4]         NUMERIC (10)    NULL,
    [PeTAP4]           NUMERIC (10)    NULL,
    [CapMD5]           NUMERIC (10)    NULL,
    [AccrMD5]          NUMERIC (10)    NULL,
    [PeMD5]            NUMERIC (10)    NULL,
    [CapAOP5]          NUMERIC (10)    NULL,
    [AccrAOP5]         NUMERIC (10)    NULL,
    [PeAOP5]           NUMERIC (10)    NULL,
    [CapTAP5]          NUMERIC (10)    NULL,
    [AccrTAP5]         NUMERIC (10)    NULL,
    [PeTAP5]           NUMERIC (10)    NULL,
    [CapMD6]           NUMERIC (10)    NULL,
    [AccrMD6]          NUMERIC (10)    NULL,
    [PeMD6]            NUMERIC (10)    NULL,
    [CapAOP6]          NUMERIC (10)    NULL,
    [AccrAOP6]         NUMERIC (10)    NULL,
    [PeAOP6]           NUMERIC (10)    NULL,
    [CapTAP6]          NUMERIC (10)    NULL,
    [AccrTAP6]         NUMERIC (10)    NULL,
    [PeTAP6]           NUMERIC (10)    NULL,
    [CapMD7]           NUMERIC (10)    NULL,
    [AccrMD7]          NUMERIC (10)    NULL,
    [PeMD7]            NUMERIC (10)    NULL,
    [CapAOP7]          NUMERIC (10)    NULL,
    [AccrAOP7]         NUMERIC (10)    NULL,
    [PeAOP7]           NUMERIC (10)    NULL,
    [CapTAP7]          NUMERIC (10)    NULL,
    [AccrTAP7]         NUMERIC (10)    NULL,
    [PeTAP7]           NUMERIC (10)    NULL,
    [CapMD8]           NUMERIC (10)    NULL,
    [AccrMD8]          NUMERIC (10)    NULL,
    [PeMD8]            NUMERIC (10)    NULL,
    [CapAOP8]          NUMERIC (10)    NULL,
    [AccrAOP8]         NUMERIC (10)    NULL,
    [PeAOP8]           NUMERIC (10)    NULL,
    [CapTAP8]          NUMERIC (10)    NULL,
    [AccrTAP8]         NUMERIC (10)    NULL,
    [PeTAP8]           NUMERIC (10)    NULL,
    [CapMD9]           NUMERIC (10)    NULL,
    [AccrMD9]          NUMERIC (10)    NULL,
    [PeMD9]            NUMERIC (10)    NULL,
    [CapAOP9]          NUMERIC (10)    NULL,
    [AccrAOP9]         NUMERIC (10)    NULL,
    [PeAOP9]           NUMERIC (10)    NULL,
    [CapTAP9]          NUMERIC (10)    NULL,
    [AccrTAP9]         NUMERIC (10)    NULL,
    [PeTAP9]           NUMERIC (10)    NULL
);
