USE [yamaha]
GO
/****** Object:  StoredProcedure [dbo].[usp_get_helmets]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[usp_get_helmets]
as
begin
SELECT *
FROM [dbo].[helmets]

	end

GO
