USE [yamaha]
GO
/****** Object:  StoredProcedure [dbo].[InsertUserBooking]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertUserBooking]
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
    @totalCost decimal(10, 2)
as
begin
    set nocount on;

	if exists(select 1 from [dbo].[UserBookings] where firstname=@firstName)
	begin
	print 'cannot insert , already item exists'
	end
	else
	begin
    insert into userBookings (
        firstName,
        lastName,
        email,
        gender,
        pincode,
        city,
        vehicle,
        helmet,
        licenseType,
        phoneNumber,
		bookingDate,
        totalCost
    )
    values (
        @firstName,
        @lastName,
        @email,
        @gender,
        @pincode,
        @city,
        @vehicle,
        @helmet,
        @licenseType,
        @phoneNumber,
		@bookingDate,
        @totalCost
    )
end;

end
GO
