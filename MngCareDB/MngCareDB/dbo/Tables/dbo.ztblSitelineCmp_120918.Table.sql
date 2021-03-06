USE [MngCarDB]
GO
/****** Object:  Table [dbo].[ztblSitelineCmp_120918]    Script Date: 09/08/2016 10:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ztblSitelineCmp_120918](
	[CmpKey] [varchar](100) NULL,
	[CmpID] [int] NOT NULL,
	[CmpSys_CmpID] [int] NULL,
	[CmpName] [varchar](75) NULL,
	[CmpCode] [varchar](10) NULL,
	[CmpAddress1] [varchar](50) NULL,
	[CmpAddress2] [varchar](50) NULL,
	[CmpCity] [varchar](30) NULL,
	[CmpState] [char](2) NULL,
	[CmpZip] [varchar](10) NULL,
	[CmpCountry] [varchar](20) NULL,
	[CmpPhone] [varchar](15) NULL,
	[CmpFax] [varchar](15) NULL,
	[CmpWeb] [varchar](255) NULL,
	[CmpSiteBedNo] [int] NOT NULL,
	[CmpPhyGrpYN] [bit] NULL,
	[CmpSysYN] [bit] NULL,
	[CmpSiteYN] [bit] NULL,
	[CmpBillAgentYN] [bit] NULL,
	[CmpMalCarYN] [bit] NULL,
	[CmpOtherYN] [bit] NULL,
	[CmpTranscriptYN] [bit] NULL,
	[CmpIPAYN] [bit] NOT NULL,
	[CmpContractingYN] [bit] NOT NULL,
	[CmpComment] [text] NULL,
	[CmpDateCreate] [smalldatetime] NULL,
	[CmpDateEdit] [smalldatetime] NULL,
	[CmpDateInactive] [smalldatetime] NULL,
	[CmpInactiveYN] [bit] NULL,
	[CmpFlagYN] [bit] NULL,
	[CmpIPAContact] [varchar](100) NULL,
	[CmpIPA_CntID] [int] NULL,
	[CmpIPAEmail] [varchar](150) NULL,
	[CmpIPAComment] [varchar](200) NULL,
	[CmpCompanyNameBilling] [varchar](100) NULL,
	[CmpAddressBilling] [varchar](100) NULL,
	[CmpCityBilling] [varchar](50) NULL,
	[CmpStateBilling] [char](2) NULL,
	[CmpZipBilling] [char](10) NULL,
	[CmpPhoneBilling] [char](10) NULL,
	[CmpFaxBilling] [char](10) NULL,
	[CmpContactBilling] [varchar](100) NULL,
	[CmpEmailBilling] [varchar](150) NULL,
	[CmpCommentBilling] [varchar](200) NULL,
	[CmpCompanyNameRefund] [varchar](100) NULL,
	[CmpAddressRefund] [varchar](100) NULL,
	[CmpCityRefund] [varchar](50) NULL,
	[CmpStateRefund] [char](2) NULL,
	[CmpZipRefund] [char](10) NULL,
	[CmpPhoneRefund] [char](10) NULL,
	[CmpFaxRefund] [char](10) NULL,
	[CmpContactRefund] [varchar](100) NULL,
	[CmpEmailRefund] [varchar](150) NULL,
	[CmpCommentRefund] [varchar](200) NULL,
	[CmpCompanyNameAppeal] [varchar](100) NULL,
	[CmpAddressAppeal] [varchar](100) NULL,
	[CmpCityAppeal] [varchar](50) NULL,
	[CmpStateAppeal] [char](2) NULL,
	[CmpZipAppeal] [char](10) NULL,
	[CmpPhoneAppeal] [char](10) NULL,
	[CmpFaxAppeal] [char](10) NULL,
	[CmpContactAppeal] [varchar](100) NULL,
	[CmpEmailAppeal] [varchar](150) NULL,
	[CmpCommentAppeal] [varchar](200) NULL,
	[CmpCompanyNameContracting] [varchar](100) NULL,
	[CmpContracting_CmpID] [int] NULL,
	[CmpContracting_CntID] [int] NULL,
	[CmpAddressContracting] [varchar](100) NULL,
	[CmpCityContracting] [varchar](50) NULL,
	[CmpStateContracting] [char](2) NULL,
	[CmpZipContracting] [char](10) NULL,
	[CmpPhoneContracting] [char](10) NULL,
	[CmpFaxContracting] [char](10) NULL,
	[CmpContactContracting] [varchar](100) NULL,
	[CmpEmailContracting] [varchar](150) NULL,
	[CmpCommentContracting] [varchar](200) NULL,
	[CmpCounty] [varchar](125) NULL,
	[CmpDBAName] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
