USE [yamaha]
GO
/****** Object:  StoredProcedure [dbo].[usp_delete_booking_record]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_delete_booking_record]
@Id decimal

as
begin

delete from [dbo].[UserBookings]
where [Id]=@Id

end
GO
