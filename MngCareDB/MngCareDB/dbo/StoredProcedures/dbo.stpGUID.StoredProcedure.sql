USE [MngCarDB]
GO
/****** Object:  StoredProcedure [dbo].[stpGUID]    Script Date: 09/08/2016 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[stpGUID]
@GUID UNIQUEIDENTIFIER OUTPUT
AS
Set @GUID = NewID()
GO