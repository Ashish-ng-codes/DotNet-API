USE [yamaha]
GO
/****** Object:  Table [dbo].[motorcycles]    Script Date: 17-12-2024 14:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motorcycles](
	[imgSrc] [varchar](250) NULL,
	[name] [varchar](20) NULL,
	[price] [int] NULL,
	[specification_ref] [varchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[motorcycles]  WITH CHECK ADD FOREIGN KEY([specification_ref])
REFERENCES [dbo].[specification] ([specification_id])
GO
ALTER TABLE [dbo].[motorcycles]  WITH CHECK ADD FOREIGN KEY([specification_ref])
REFERENCES [dbo].[specification] ([specification_id])
GO
