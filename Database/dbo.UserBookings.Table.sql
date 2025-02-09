USE [yamaha]
GO
/****** Object:  Table [dbo].[UserBookings]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBookings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](100) NOT NULL,
	[lastName] [nvarchar](100) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[gender] [nvarchar](10) NULL,
	[pincode] [decimal](18, 0) NULL,
	[city] [nvarchar](100) NOT NULL,
	[vehicle] [nvarchar](100) NOT NULL,
	[helmet] [nvarchar](10) NULL,
	[licenseType] [nvarchar](50) NULL,
	[phoneNumber] [nvarchar](15) NOT NULL,
	[bookingDate] [nvarchar](max) NOT NULL,
	[totalCost] [decimal](10, 2) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
