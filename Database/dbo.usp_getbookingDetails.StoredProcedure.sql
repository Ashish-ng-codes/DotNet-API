USE [yamaha]
GO
/****** Object:  StoredProcedure [dbo].[usp_getbookingDetails]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_getbookingDetails]
as
begin
select * from [dbo].[UserBookings]
end
GO
