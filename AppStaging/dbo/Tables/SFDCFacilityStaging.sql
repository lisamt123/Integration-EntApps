﻿CREATE TABLE [dbo].[SFDCFacilityStaging] (
    [Comments_1__c]                           NTEXT          NULL,
    [ConnectionReceivedId]                    NCHAR (18)     NULL,
    [ConnectionSentId]                        NCHAR (18)     NULL,
    [Contact__c]                              NCHAR (18)     NULL,
    [CreatedById]                             NCHAR (18)     NULL,
    [CreatedDate]                             DATETIME2 (7)  NOT NULL,
    [Date_Rehired__c]                         DATETIME2 (7)  NULL,
    [Department__c]                           NVARCHAR (255) NULL,
    [Facility__c]                             NVARCHAR (255) NULL,
    [From__c]                                 DATETIME2 (7)  NULL,
    [Id]                                      NCHAR (18)     NOT NULL,
    [Initial_Credentials_Committee_Review__c] DATETIME2 (7)  NULL,
    [IsDeleted]                               VARCHAR (5)    NOT NULL,
    [Last_Recredentialed__c]                  DATETIME2 (7)  NULL,
    [LastActivityDate]                        DATETIME2 (7)  NULL,
    [LastModifiedById]                        NCHAR (18)     NULL,
    [LastModifiedDate]                        DATETIME2 (7)  NOT NULL,
    [LastReferencedDate]                      DATETIME2 (7)  NULL,
    [LastViewedDate]                          DATETIME2 (7)  NULL,
    [Name]                                    NVARCHAR (80)  NULL,
    [New_Hire_Biennial_Checklists__c]         NCHAR (18)     NULL,
    [Next_Recredentialed__c]                  DATETIME2 (7)  NULL,
    [OwnerId]                                 NCHAR (18)     NOT NULL,
    [Placement__c]                            NCHAR (18)     NULL,
    [Position__c]                             NVARCHAR (255) NULL,
    [Primary_Entity__c]                       VARCHAR (5)    NULL,
    [Record_Status__c]                        NVARCHAR (255) NULL,
    [Rehire__c]                               VARCHAR (5)    NULL,
    [Rehire_Date__c]                          NVARCHAR (255) NULL,
    [Related_Id__c]                           NVARCHAR (255) NULL,
    [Staff_Status1__c]                        NVARCHAR (255) NULL,
    [Staff_Status_Date__c]                    DATETIME2 (7)  NULL,
    [SystemModstamp]                          DATETIME2 (7)  NOT NULL,
    [To__c]                                   DATETIME2 (7)  NULL,
    [TriggeredByAnotherTrigger__c]            VARCHAR (5)    NULL
);
