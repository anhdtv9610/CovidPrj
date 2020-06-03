USE [idocNet.Test.Skycic.InBrand.V20.3296932000]
GO
/****** Object:  Table [dbo].[Mst_Area]    Script Date: 5/28/2020 9:25:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_Area](
	[OrgID] [dbo].[Varchar50] NOT NULL,
	[AreaCode] [dbo].[Varchar50] NOT NULL,
	[NetworkID] [dbo].[Varchar50] NOT NULL,
	[AreaCodeParent] [dbo].[Varchar50] NULL,
	[AreaBUCode] [dbo].[Varchar50] NOT NULL,
	[AreaBUPattern] [dbo].[Varchar50] NOT NULL,
	[AreaLevel] [dbo].[MyValue] NOT NULL,
	[AreaName] [dbo].[Varchar200] NOT NULL,
	[AreaDesc] [dbo].[Varchar400] NULL,
	[FlagActive] [dbo].[MyStatus] NOT NULL,
	[LogLUDTimeUTC] [dbo].[MyDateTime] NULL,
	[LogLUBy] [dbo].[Varchar50] NULL,
 CONSTRAINT [XPKMst_Area] PRIMARY KEY CLUSTERED 
(
	[OrgID] ASC,
	[AreaCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DefaultGrp]
) ON [DefaultGrp]
GO
/****** Object:  Table [dbo].[Mst_District]    Script Date: 5/28/2020 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_District](
	[ProvinceCode] [dbo].[Varchar50] NOT NULL,
	[DistrictCode] [dbo].[Varchar50] NOT NULL,
	[NetworkID] [dbo].[Varchar50] NOT NULL,
	[DistrictName] [dbo].[Varchar200] NOT NULL,
	[FlagActive] [dbo].[MyStatus] NOT NULL,
	[LogLUDTimeUTC] [dbo].[MyDateTime] NULL,
	[LogLUBy] [dbo].[Varchar50] NULL,
 CONSTRAINT [XPKMst_District] PRIMARY KEY CLUSTERED 
(
	[ProvinceCode] ASC,
	[DistrictCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DefaultGrp]
) ON [DefaultGrp]
GO
/****** Object:  Table [dbo].[Mst_Province]    Script Date: 5/28/2020 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_Province](
	[ProvinceCode] [dbo].[Varchar50] NOT NULL,
	[NetworkID] [dbo].[Varchar50] NOT NULL,
	[ProvinceName] [dbo].[Varchar200] NOT NULL,
	[FlagActive] [dbo].[MyStatus] NOT NULL,
	[LogLUDTimeUTC] [dbo].[MyDateTime] NULL,
	[LogLUBy] [dbo].[Varchar50] NULL,
 CONSTRAINT [XPKMst_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DefaultGrp]
) ON [DefaultGrp]
GO
ALTER TABLE [dbo].[Mst_Area]  WITH CHECK ADD  CONSTRAINT [FK_MstArea_MstArea_Parent] FOREIGN KEY([OrgID], [AreaCodeParent])
REFERENCES [dbo].[Mst_Area] ([OrgID], [AreaCode])
GO
ALTER TABLE [dbo].[Mst_Area] CHECK CONSTRAINT [FK_MstArea_MstArea_Parent]
GO
ALTER TABLE [dbo].[Mst_District]  WITH CHECK ADD  CONSTRAINT [FK_MstProvince_MstDistrict] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Mst_Province] ([ProvinceCode])
GO
ALTER TABLE [dbo].[Mst_District] CHECK CONSTRAINT [FK_MstProvince_MstDistrict]
GO
