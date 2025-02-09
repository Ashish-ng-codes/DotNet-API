USE [yamaha]
GO
/****** Object:  Table [dbo].[scooters]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scooters](
	[imgSrc] [varchar](250) NULL,
	[name] [varchar](20) NULL,
	[price] [int] NULL,
	[scooter_spec_ref] [varchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[scooters]  WITH CHECK ADD FOREIGN KEY([scooter_spec_ref])
REFERENCES [dbo].[scooter_spec] ([scooter_spec_id])
GO
