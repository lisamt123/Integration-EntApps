﻿CREATE TABLE [dbo].[MINATEMP] (
    [CsuFlxID]                 NVARCHAR (255) NULL,
    [CsuFlxIDeb]               FLOAT (53)     NULL,
    [CseFlxIDCsu]              NVARCHAR (255) NULL,
    [CsdFlxIDCsu]              NVARCHAR (255) NULL,
    [CstFlxIDCsu]              NVARCHAR (255) NULL,
    [CsdFlxID]                 NVARCHAR (255) NULL,
    [CsxFlxID]                 NVARCHAR (255) NULL,
    [CsxFlxIDCsu]              NVARCHAR (255) NULL,
    [CssFlxIDCsu]              NVARCHAR (255) NULL,
    [ProviderMasterID]         FLOAT (53)     NULL,
    [CheckDate]                SMALLDATETIME  NULL,
    [PeriodEnding]             SMALLDATETIME  NULL,
    [PayPeriod]                FLOAT (53)     NULL,
    [CsuPSID]                  NVARCHAR (255) NULL,
    [CheckNo]                  FLOAT (53)     NULL,
    [CsuEmpNumber]             NVARCHAR (255) NULL,
    [LastName]                 NVARCHAR (255) NULL,
    [FirstName]                NVARCHAR (255) NULL,
    [MiddleName]               NVARCHAR (255) NULL,
    [FullName]                 NVARCHAR (255) NULL,
    [Suffix]                   NVARCHAR (255) NULL,
    [SSN]                      NVARCHAR (255) NULL,
    [BaseRate]                 FLOAT (53)     NULL,
    [CheckAmt]                 NVARCHAR (255) NULL,
    [CurrentGrossPay]          NVARCHAR (255) NULL,
    [CurrTax]                  NVARCHAR (255) NULL,
    [CurrPreTax]               NVARCHAR (255) NULL,
    [YTDPreTax]                NVARCHAR (255) NULL,
    [CurrTaxWage]              NVARCHAR (255) NULL,
    [YTDTaxWage]               NVARCHAR (255) NULL,
    [YTDTax]                   NVARCHAR (255) NULL,
    [FICAExempt]               NVARCHAR (255) NULL,
    [TaxStatus]                NVARCHAR (255) NULL,
    [FedExempt]                FLOAT (53)     NULL,
    [StateExempt]              FLOAT (53)     NULL,
    [StateTaxAdj]              NVARCHAR (255) NULL,
    [PriStateCode]             NVARCHAR (255) NULL,
    [StStatus1]                NVARCHAR (255) NULL,
    [FedAdjValue]              FLOAT (53)     NULL,
    [SdiAdjValue]              FLOAT (53)     NULL,
    [CurrDed]                  NVARCHAR (255) NULL,
    [YTDDed]                   NVARCHAR (255) NULL,
    [CurrentNetPay]            NVARCHAR (255) NULL,
    [CurrHours]                NVARCHAR (255) NULL,
    [CurrUnits]                NVARCHAR (255) NULL,
    [CurrEarnings]             NVARCHAR (255) NULL,
    [YTDEarnings]              NVARCHAR (255) NULL,
    [YTDHours]                 NVARCHAR (255) NULL,
    [SumOfYTDUnits]            NVARCHAR (255) NULL,
    [SumOfYTDHours]            NVARCHAR (255) NULL,
    [YTDNetPay]                NVARCHAR (255) NULL,
    [YTDGrossPay]              NVARCHAR (255) NULL,
    [CsxShortDesc]             NVARCHAR (255) NULL,
    [CsxCurrTax]               NVARCHAR (255) NULL,
    [CsxYTDTax]                NVARCHAR (255) NULL,
    [SumOfCurrTax]             NVARCHAR (255) NULL,
    [SumOfYTDTax]              NVARCHAR (255) NULL,
    [LbrPayPeriod]             NVARCHAR (255) NULL,
    [PayCode]                  NVARCHAR (255) NULL,
    [PayCodeDescr]             NVARCHAR (255) NULL,
    [TotalHoursbyPayCode]      NVARCHAR (255) NULL,
    [TotalEarnings]            NVARCHAR (255) NULL,
    [HourlyRate]               NVARCHAR (255) NULL,
    [Dept]                     NVARCHAR (255) NULL,
    [Site]                     NVARCHAR (255) NULL,
    [LbrSecPayCode]            NVARCHAR (255) NULL,
    [LbrPayClass]              NVARCHAR (255) NULL,
    [LbrPSID]                  NVARCHAR (255) NULL,
    [SumOfCurrentHours]        NVARCHAR (255) NULL,
    [SumOfCurrenctUnits]       NVARCHAR (255) NULL,
    [SumOfCurrentEarnings]     NVARCHAR (255) NULL,
    [DeductCode]               NVARCHAR (255) NULL,
    [CsdDedS2Code]             NVARCHAR (255) NULL,
    [CurrDeductAmt]            NVARCHAR (255) NULL,
    [YTDDeductAmt]             NVARCHAR (255) NULL,
    [DedPreTax]                NVARCHAR (255) NULL,
    [SpecialItem]              NVARCHAR (255) NULL,
    [SpecialItemAmount]        NVARCHAR (255) NULL,
    [BankAcctNo]               NVARCHAR (255) NULL,
    [EFTAmount]                NVARCHAR (255) NULL,
    [AccountType]              NVARCHAR (255) NULL,
    [AccountTypeLong]          NVARCHAR (255) NULL,
    [EarningsStatmentCategory] NVARCHAR (255) NULL,
    [CategoryFlag]             NVARCHAR (255) NULL,
    [CalendarYear]             FLOAT (53)     NULL,
    [HourlyOrExempt]           NVARCHAR (255) NULL,
    [ELaborCustCode]           NVARCHAR (255) NULL,
    [LbrCustPayCode]           NVARCHAR (255) NULL,
    [YTDEarningsBySite]        NVARCHAR (255) NULL,
    [YTDHoursBySite]           NVARCHAR (255) NULL,
    [YTDUnitsBySite]           NVARCHAR (255) NULL,
    [SumOfYTDEarnings]         NVARCHAR (255) NULL
);
