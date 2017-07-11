USE [MngCarDB]
GO
/****** Object:  StoredProcedure [dbo].[stpGetUserName]    Script Date: 09/08/2016 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[stpGetUserName]
/*
	(
		@parameter1 datatype = default value,
		@parameter2 datatype OUTPUT
	)
*/
As
DECLARE @name varchar(30)
       ,@lenindex int
       ,@lenall int
       ,@username varchar(10)
-- return the user logged into the SQL server
SELECT @name = suser_sname()
SELECT @lenall = Len(@name)
SELECT @lenindex = CHARINDEX('\', @name)
-- clean up the variables and return a field named NTUserName
SELECT SUBSTRING(@name, @lenindex+1, @lenall-@lenindex) AS NTUserName, @Name as FullName
	return
GO