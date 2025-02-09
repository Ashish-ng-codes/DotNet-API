USE [yamaha]
GO
/****** Object:  StoredProcedure [dbo].[usp_update_userDetails]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_update_userDetails]
@Id decimal,
@firstName nvarchar(100),
@lastName nvarchar(100),
@email nvarchar(255),
@gender nvarchar(10),
@pincode decimal,
@city nvarchar(100),
@vehicle nvarchar(100),
@helmet nvarchar(10),
@licenseType nvarchar(50),
@phoneNumber nvarchar(15),
@bookingDate nvarchar(max),
@totalCost decimal(10,2)

as
begin

update [dbo].[UserBookings]
set [firstName]=@firstName,
	[lastName]=@lastName,
    [email]=@email,
    [gender]=@gender,
    [pincode]=@pincode,
    [city]=@city,
    [vehicle]=@vehicle,
    [helmet]=@helmet,
    [licenseType]=@licenseType,
    [phoneNumber]=@phoneNumber,
    [bookingDate]=@bookingDate,
    [totalCost]=@totalCost
where [Id]=@Id

end
GO
