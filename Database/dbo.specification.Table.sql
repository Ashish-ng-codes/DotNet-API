USE [yamaha]
GO
/****** Object:  Table [dbo].[specification]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specification](
	[specification_id] [varchar](10) NOT NULL,
	[power] [nvarchar](20) NULL,
	[performance] [nvarchar](20) NULL,
	[fuelTankCapacity] [nvarchar](20) NULL,
	[engineCapacity] [nvarchar](30) NULL,
	[color] [nvarchar](20) NULL,
	[model] [nvarchar](20) NULL,
	[mileage] [nvarchar](20) NULL,
	[kerbWeight] [nvarchar](20) NULL,
	[seatHeight] [nvarchar](20) NULL,
	[transmission] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[specification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
