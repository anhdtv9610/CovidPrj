USE [Covid19]
GO
/****** Object:  Default [StringEmpty]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE DEFAULT [dbo].[StringEmpty] 
AS
''
GO
/****** Object:  Default [ValueOne]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE DEFAULT [dbo].[ValueOne] 
AS
1
GO
/****** Object:  Default [ValueZero]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE DEFAULT [dbo].[ValueZero] 
AS
0
GO
/****** Object:  UserDefinedDataType [dbo].[MyDateTime]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[MyDateTime] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyImage]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[MyImage] FROM [image] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyInteger]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[MyInteger] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyStatus]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[MyStatus] FROM [nvarchar](10) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyText]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[MyText] FROM [ntext] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyTimeStamp]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[MyTimeStamp] FROM [bigint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyValue]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[MyValue] FROM [float] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar10]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar10] FROM [varchar](10) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar100]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar100] FROM [nvarchar](100) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar20]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar20] FROM [nvarchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar200]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar200] FROM [nvarchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar2000]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar2000] FROM [nvarchar](2000) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar30]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar30] FROM [nvarchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar400]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar400] FROM [nvarchar](400) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar50]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar50] FROM [nvarchar](50) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar500]    Script Date: 3/6/2020 10:28:23 PM ******/
CREATE TYPE [dbo].[Varchar500] FROM [nvarchar](500) NULL
GO
/****** Object:  Table [dbo].[KBYT]    Script Date: 3/6/2020 10:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KBYT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[ContactWithPatient] [bit] NOT NULL,
	[BackFromDiseaseArea] [bit] NOT NULL,
	[ContactWithPersonBack] [bit] NOT NULL,
	[IsFever] [bit] NOT NULL,
	[IsCough] [bit] NOT NULL,
	[IsDyspoenic] [bit] NOT NULL,
	[IsTired] [bit] NOT NULL,
	[IsSoreThoroat] [bit] NOT NULL,
	[IsPneumonia] [bit] NOT NULL,
	[IsLiverish] [bit] NOT NULL,
	[IsBlood] [bit] NOT NULL,
	[IsPulmonic] [bit] NOT NULL,
	[IsCardiopathy] [bit] NOT NULL,
	[BloodPresure] [bit] NOT NULL,
	[HIVimmune] [bit] NOT NULL,
	[IsDiabetes] [bit] NOT NULL,
	[IsCancer] [bit] NOT NULL,
	[IsPregnant] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [XPKKBYT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mst_District]    Script Date: 3/6/2020 10:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DistrictCode] [nvarchar](50) NOT NULL,
	[ProvinceCode] [nvarchar](50) NOT NULL,
	[DistrictName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Mst_District] PRIMARY KEY CLUSTERED 
(
	[DistrictCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mst_Province]    Script Date: 3/6/2020 10:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_Province](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceCode] [nvarchar](50) NOT NULL,
	[ProvinceName] [nvarchar](200) NOT NULL,
 CONSTRAINT [XPKMst_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisIsolation]    Script Date: 3/6/2020 10:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisIsolation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[ProvinceCode] [nvarchar](50) NULL,
	[DistrictCode] [nvarchar](50) NULL,
	[RegisAddress] [nvarchar](200) NOT NULL,
	[RegisIsolationStatus] [int] NOT NULL,
	[RegisDate] [datetime] NULL,
	[FinishIsolationStatus] [int] NOT NULL,
	[FinishDate] [datetime] NULL,
	[CancelIsolationStatus] [int] NOT NULL,
	[CancelDate] [datetime] NULL,
 CONSTRAINT [XPKRegisIsolation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestHealth]    Script Date: 3/6/2020 10:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestHealth](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[IsFever] [int] NOT NULL,
	[IsCough] [int] NOT NULL,
	[IsDyspnoeic] [int] NOT NULL,
	[IsTired] [int] NOT NULL,
	[HealthStatus] [int] NOT NULL,
	[HealthUpdDate] [datetime] NULL,
 CONSTRAINT [XPKTestHealth] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/6/2020 10:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[GroupCode] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[BirthDay] [datetime] NOT NULL,
	[Sex] [nvarchar](50) NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[ProvinceCode] [nvarchar](50) NULL,
	[DistrictCode] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NOT NULL,
	[IsActive] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 3/6/2020 10:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[IsActive] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [XPKUserGroup] PRIMARY KEY CLUSTERED 
(
	[GroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KBYT] ON 
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (1, N'0336644881', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[KBYT] OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_District] ON 
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (1, N'10101', N'101', N'Quận Ba Đình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (2, N'10103', N'101', N'Quận Tây Hồ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (3, N'10105', N'101', N'Quận Hoàn Kiếm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (4, N'10106', N'101', N'Quận Long Biên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (5, N'10107', N'101', N'Quận Hai Bà Trưng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (6, N'10108', N'101', N'Quận Hoàng Mai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (7, N'10109', N'101', N'Quận Đống đa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (8, N'10111', N'101', N'Quận Thanh Xuân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (9, N'10113', N'101', N'Quận Cầu Giấy')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (10, N'10115', N'101', N'Huyện Sóc sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (11, N'10117', N'101', N'Huyện Đông Anh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (12, N'10119', N'101', N'Huyện Gia Lâm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (13, N'10123', N'101', N'Huyện Thanh Trì')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (14, N'10125', N'101', N'Huyện Mê Linh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (15, N'10127', N'101', N'Quận Hà Đông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (16, N'10129', N'101', N'Thành phố Sơn Tây')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (17, N'10131', N'101', N'Huyện Phúc Thọ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (18, N'10133', N'101', N'Huyện Đan Phượng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (19, N'10135', N'101', N'Huyện Thạch Thất')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (20, N'10137', N'101', N'Huyện Hoài Đức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (21, N'10139', N'101', N'Huyện Quốc Oai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (22, N'10141', N'101', N'Huyện Thanh Oai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (23, N'10143', N'101', N'Huyện Thường Tín')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (24, N'10145', N'101', N'Huyện Mỹ Đức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (25, N'10147', N'101', N'Huyện ứng Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (26, N'10149', N'101', N'Huyện Phú Xuyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (27, N'10151', N'101', N'Huyện Ba Vì')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (28, N'10153', N'101', N'Huyện Chương Mỹ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (29, N'10155', N'101', N'Quận Nam Từ Liêm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (30, N'10157', N'101', N'Quận Bắc Từ Liêm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (31, N'10301', N'103', N'Quận Hồng Bàng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (32, N'10303', N'103', N'Quận Ngô Quyền')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (33, N'10304', N'103', N'Quận Hải An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (34, N'10305', N'103', N'Quận Lê Chân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (35, N'10307', N'103', N'Quận Kiến An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (36, N'10309', N'103', N'Quận Đồ Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (37, N'10311', N'103', N'Huyện Thuỷ Nguyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (38, N'10313', N'103', N'Huyện An Dương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (39, N'10315', N'103', N'Huyện An Lão')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (40, N'10317', N'103', N'Huyện Kiến Thuỵ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (41, N'10319', N'103', N'Huyện Tiên Lãng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (42, N'10321', N'103', N'Huyện Vĩnh Bảo')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (43, N'10323', N'103', N'Huyện Cát Hải')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (44, N'10325', N'103', N'Huyện Bạch Long Vĩ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (45, N'10327', N'103', N'Quận Dương Kinh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (46, N'10701', N'107', N'Thành phố Hải Dương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (47, N'10703', N'107', N'Huyện Chí Linh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (48, N'10705', N'107', N'Huyện Nam Sách')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (49, N'10707', N'107', N'Huyện Thanh Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (50, N'10709', N'107', N'Huyện Kinh Môn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (51, N'10711', N'107', N'Huyện Kim Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (52, N'10713', N'107', N'Huyện Gia Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (53, N'10715', N'107', N'Huyện Tứ Kỳ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (54, N'10717', N'107', N'Huyện Cẩm Giàng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (55, N'10719', N'107', N'Huyện Thanh Miện')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (56, N'10721', N'107', N'Huyện Thanh Miện')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (57, N'10723', N'107', N'Huyện Ninh Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (58, N'10901', N'109', N'Thành phố Hưng yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (59, N'10903', N'109', N'Huyện Mỹ Hào')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (60, N'10905', N'109', N'Huyện Khoái Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (61, N'10907', N'109', N'Huyện Ân Thi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (62, N'10909', N'109', N'Huyện Kim Động')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (63, N'10911', N'109', N'Huyện Phù Cừ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (64, N'10913', N'109', N'Huyện Tiên Lữ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (65, N'10915', N'109', N'Huyện Văn Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (66, N'10917', N'109', N'Huyện Văn Lâm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (67, N'10919', N'109', N'Huyện Yên Mỹ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (68, N'11101', N'111', N'Thành phố Phủ Lý')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (69, N'11103', N'111', N'Huyện Duy Tiên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (70, N'11105', N'111', N'Huyện Kim Bảng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (71, N'11107', N'111', N'Huyện Lý Nhân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (72, N'11109', N'111', N'Huyện Thanh Liêm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (73, N'11111', N'111', N'Huyện Bình Lục')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (74, N'11301', N'113', N'Thành phố Nam Đinh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (75, N'11303', N'113', N'Huyện Vụ Bản')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (76, N'11305', N'113', N'Huyện Mỹ Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (77, N'11307', N'113', N'Huyện ý Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (78, N'11309', N'113', N'Huyện Nam Trực')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (79, N'11311', N'113', N'Huyện Trực Ninh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (80, N'11313', N'113', N'Huyện Xuân Trường')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (81, N'11315', N'113', N'Huyện Giao Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (82, N'11317', N'113', N'Huyện Nghĩa Hưng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (83, N'11319', N'113', N'Huyện Hải Hậu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (84, N'11501', N'115', N'Thành phố Thái Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (85, N'11503', N'115', N'Huyện Quỳnh Phụ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (86, N'11505', N'115', N'Huyện Hưng Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (87, N'11507', N'115', N'Huyện Thái Thuỵ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (88, N'11509', N'115', N'Huyện Đông Hưng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (89, N'11511', N'115', N'Huyện Vũ Thư')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (90, N'11513', N'115', N'Huyện Kiến Xương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (91, N'11515', N'115', N'Huyện Tiền hải')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (92, N'11701', N'117', N'Thành phố Ninh Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (93, N'11703', N'117', N'Thị xã Tam Điệp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (94, N'11705', N'117', N'Huyện Nho quan')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (95, N'11707', N'117', N'Huyện Gia Viễn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (96, N'11709', N'117', N'Huyện Hoa Lư')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (97, N'11711', N'117', N'Huyện Yên Mô')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (98, N'11713', N'117', N'Huyện Yên Khánh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (99, N'11715', N'117', N'Huyện Kim Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (100, N'20101', N'201', N'Thị xã Hà Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (101, N'20103', N'201', N'Huyện Đồng Văn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (102, N'20105', N'201', N'Huyện Mèo Vạc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (103, N'20107', N'201', N'Huyện Yên Minh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (104, N'20109', N'201', N'Huyện Quản Bạ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (105, N'20111', N'201', N'Huyện Bắc Mê')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (106, N'20113', N'201', N'Huyện Hoàng Su Phì')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (107, N'20115', N'201', N'Huyện Vị Xuyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (108, N'20117', N'201', N'Huyện Xín Mần')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (109, N'20118', N'201', N'Huyện Quang Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (110, N'20119', N'201', N'Huyện Bắc Quang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (111, N'20301', N'203', N'Thị xã Cao Bằng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (112, N'20303', N'203', N'Huyện Bảo Lạc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (113, N'20305', N'203', N'Huyện Hà Quảng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (114, N'20307', N'203', N'Huyện Thông Nông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (115, N'20309', N'203', N'Huyện Trà Lĩnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (116, N'20311', N'203', N'Huyện Trùng Khánh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (117, N'20313', N'203', N'Huyện Nguyên Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (118, N'20315', N'203', N'Huyện Hoà An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (119, N'20317', N'203', N'Huyện Quảng Uyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (120, N'20318', N'203', N'Huyện Phục Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (121, N'20319', N'203', N'Huyện Hạ Lang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (122, N'20321', N'203', N'Huyện Thạch An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (123, N'20323', N'203', N'Huyện Bảo Lâm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (124, N'20501', N'205', N'Thành phố Lào Cai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (125, N'20503', N'205', N'Thị xã Cam Đường (hêt h.lực)')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (126, N'20505', N'205', N'Huyện Mường Khương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (127, N'20507', N'205', N'Huyện Bát Xát')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (128, N'20509', N'205', N'Huyện Bắc Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (129, N'20511', N'205', N'Huyện Bảo Thắng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (130, N'20513', N'205', N'Huyện Sa Pa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (131, N'20515', N'205', N'Huyện Bảo Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (132, N'20517', N'205', N'Huyện Than Uyên (hêt h.lực)')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (133, N'20519', N'205', N'Huyện Văn Bàn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (134, N'20521', N'205', N'Huyện Si Ma Cai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (135, N'20701', N'207', N'thành phố Bắc Cạn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (136, N'20703', N'207', N'Huyện Ba Bể')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (137, N'20704', N'207', N'Huyện Pác Nặm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (138, N'20705', N'207', N'Huyện Ngân Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (139, N'20707', N'207', N'Huyện Chợ Đồn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (140, N'20709', N'207', N'Huyện Na Rì')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (141, N'20711', N'207', N'Huyện Bạch Thông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (142, N'20713', N'207', N'Huyện Chợ mới')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (143, N'20901', N'209', N'Thành phố Lạng Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (144, N'20903', N'209', N'Huyện Tràng Định')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (145, N'20905', N'209', N'Huyện Văn Lãng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (146, N'20907', N'209', N'Huyện Bình Gia')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (147, N'20909', N'209', N'Huyện Bắc Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (148, N'20911', N'209', N'Huyện Văn Quan')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (149, N'20913', N'209', N'Huyện Cao Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (150, N'20915', N'209', N'Huyện Lộc Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (151, N'20917', N'209', N'Huyện Chi Lăng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (152, N'20919', N'209', N'Huyện Đình Lập')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (153, N'20921', N'209', N'Huyện Hữu Lũng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (154, N'21101', N'211', N'Thị xã Tuyên Quang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (155, N'21103', N'211', N'Huyện Nà Hang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (156, N'21105', N'211', N'Huyện Chiêm Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (157, N'21107', N'211', N'Huyện Hàm Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (158, N'21109', N'211', N'Huyện Yên Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (159, N'21111', N'211', N'Huyện Sơn Dương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (160, N'21301', N'213', N'TP Yên Bái')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (161, N'21303', N'213', N'khu vực Nghiã Văn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (162, N'21305', N'213', N'Huyện Lục Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (163, N'21307', N'213', N'Huyện Văn Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (164, N'21309', N'213', N'Huyện Mù Cang Chải')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (165, N'21311', N'213', N'Huyện Trấn Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (166, N'21313', N'213', N'Huyện Yên Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (167, N'21315', N'213', N'khu vực Nghiã Văn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (168, N'21317', N'213', N'Huyện Trạm Tấu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (169, N'21501', N'215', N'Thành phố Thái Nguyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (170, N'21503', N'215', N'Thị xã Sông Công')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (171, N'21505', N'215', N'Huyện Định Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (172, N'21507', N'215', N'Huyện Võ Nhai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (173, N'21509', N'215', N'Huyện Phú Lương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (174, N'21511', N'215', N'Huyện Đồng Hỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (175, N'21513', N'215', N'Huyện Đại Từ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (176, N'21515', N'215', N'Huyện Phú Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (177, N'21517', N'215', N'Huyện Phổ Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (178, N'21701', N'217', N'Thành phố Việt Trì')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (179, N'21703', N'217', N'Thị xã Phú Thọ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (180, N'21705', N'217', N'Huyện Đoan Hùng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (181, N'21707', N'217', N'Huyện Hạ Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (182, N'21709', N'217', N'Huyện Thanh Ba')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (183, N'21711', N'217', N'Huyện Phù Ninh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (184, N'21713', N'217', N'Huyện Cẩm Khê')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (185, N'21715', N'217', N'Huyện Yên Lập')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (186, N'21717', N'217', N'Huyện Tam Nông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (187, N'21719', N'217', N'Huyện Thanh Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (188, N'21721', N'217', N'Huyện Lâm Thao')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (189, N'21723', N'217', N'Huyện Thanh Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (190, N'21901', N'219', N'Thành phố Vĩnh Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (191, N'21902', N'219', N'Thị xã Phúc Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (192, N'21903', N'219', N'Huyện Lập Thạch')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (193, N'21904', N'219', N'Huyện Tam đảo')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (194, N'21905', N'219', N'Huyện Tam Dương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (195, N'21907', N'219', N'Huyện Vĩnh Tường')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (196, N'21909', N'219', N'Huyện Yên Lạc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (197, N'21911', N'219', N'Huyện Mê Linh (chuyển Hà Nội)')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (198, N'21913', N'219', N'Huyện Bình Xuyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (199, N'21915', N'219', N'Huyện Sông Lô')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (200, N'22101', N'221', N'Thành phố Bắc Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (201, N'22103', N'221', N'Huyện Yên Thế')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (202, N'22105', N'221', N'Huyện Tân Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (203, N'22107', N'221', N'Huyện Lục Ngạn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (204, N'22109', N'221', N'Huyện Hiệp Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (205, N'22111', N'221', N'Huyện Lạng Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (206, N'22113', N'221', N'Huyện Sơn Động')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (207, N'22115', N'221', N'Huyện Lục Nam')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (208, N'22117', N'221', N'Huyện Việt Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (209, N'22119', N'221', N'Huyện Yên Dũng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (210, N'22301', N'223', N'Thành phố Bắc Ninh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (211, N'22303', N'223', N'Huyện Yên Phong')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (212, N'22305', N'223', N'Huyện Quế Võ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (213, N'22307', N'223', N'Huyện Tiên Du')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (214, N'22309', N'223', N'Huyện Thuận Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (215, N'22311', N'223', N'Huyện Lương Tài')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (216, N'22313', N'223', N'Thị xã Từ Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (217, N'22315', N'223', N'Huyện Gia Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (218, N'22501', N'225', N'TP Hạ Long')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (219, N'22503', N'225', N'Thị xã Cẩm Phả')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (220, N'22505', N'225', N'TP.Uông Bí')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (221, N'22507', N'225', N'Huyện Bình Liêu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (222, N'22509', N'225', N'Thành phố Móng cái')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (223, N'22511', N'225', N'Huyện Hải Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (224, N'22513', N'225', N'Huyện Tiên Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (225, N'22515', N'225', N'Huyện Ba Chẽ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (226, N'22517', N'225', N'Huyện Vân Đồn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (227, N'22519', N'225', N'Huyện Hoành Bồ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (228, N'22521', N'225', N'Huyện Đông Triều')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (229, N'22523', N'225', N'Huyện Cô Tô')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (230, N'22525', N'225', N'TX.Quảng Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (231, N'22527', N'225', N'Huyện Đầm Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (232, N'30101', N'301', N'TP Điện Biên Phủ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (233, N'30103', N'301', N'Thị xã Mường Lay')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (234, N'30104', N'301', N'Huyện Mường Nhé')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (235, N'30105', N'301', N'Huyện Mường Tè - Đã chuyển sang Lai Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (236, N'30107', N'301', N'Huyện Phong Thổ - Đã chuyển sang Lai Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (237, N'30108', N'301', N'Huyện Tam Đường - Đã chuyển sang Lai Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (238, N'30109', N'301', N'Huyện Sìn Hồ - Đã chuyển sang Lai Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (239, N'30111', N'301', N'Huyện Mường Chà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (240, N'30113', N'301', N'Huyện Tủa Chùa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (241, N'30115', N'301', N'Huyện Tuần Giáo')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (242, N'30117', N'301', N'Huyện Điện Biên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (243, N'30119', N'301', N'Huyện Điện Biên Đông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (244, N'30121', N'301', N'Huyện Mường ảng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (245, N'30201', N'302', N'Huyện Mường Tè')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (246, N'30203', N'302', N'Huyện Phong Thổ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (247, N'30205', N'302', N'Huyện Tam Đường')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (248, N'30207', N'302', N'Huyện Sìn Hồ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (249, N'30209', N'302', N'Huyện Than Uyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (250, N'30301', N'303', N'Thành phố Sơn La')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (251, N'30303', N'303', N'Huyện Quỳnh Nhai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (252, N'30305', N'303', N'Huyện Mường La')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (253, N'30307', N'303', N'Huyện Thuận Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (254, N'30309', N'303', N'Huyện Bắc Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (255, N'30311', N'303', N'Huyện Phù Yên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (256, N'30313', N'303', N'Huyện Mai Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (257, N'30315', N'303', N'Huyện Sông Mã')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (258, N'30317', N'303', N'Huyện Yên Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (259, N'30319', N'303', N'Huyện Mộc Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (260, N'30321', N'303', N'Huyện Sốp Cộp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (261, N'30501', N'305', N'Thành phố Hoà Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (262, N'30503', N'305', N'Huyện Đà Bắc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (263, N'30505', N'305', N'Huyện Mai Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (264, N'30507', N'305', N'Huyện Kỳ Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (265, N'30509', N'305', N'Huyện Lương Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (266, N'30510', N'305', N'Huyện Cao Phong')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (267, N'30511', N'305', N'Huyện Kim Bôi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (268, N'30513', N'305', N'Huyện Tân Lạc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (269, N'30515', N'305', N'Huyện Lạc Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (270, N'30517', N'305', N'Huyện Lạc Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (271, N'30519', N'305', N'Huyện Yên Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (272, N'40101', N'401', N'Thành phố Thanh Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (273, N'40103', N'401', N'Thị xã Bỉm Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (274, N'40105', N'401', N'Thị xã Sầm Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (275, N'40107', N'401', N'Huyện Mường Lát')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (276, N'40109', N'401', N'Huyện Quan Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (277, N'40111', N'401', N'Huyện Quan Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (278, N'40113', N'401', N'Huyện Bá Thước')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (279, N'40115', N'401', N'Huyện Cẩm Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (280, N'40117', N'401', N'Huyện Lang Chánh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (281, N'40119', N'401', N'Huyện Thạch Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (282, N'40121', N'401', N'Huyện Ngọc Lặc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (283, N'40123', N'401', N'Huyện Thường Xuân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (284, N'40125', N'401', N'Huyện Như Xuân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (285, N'40127', N'401', N'Huyện Như Thanh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (286, N'40129', N'401', N'Huyện Vĩnh Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (287, N'40131', N'401', N'Huyện Hà Trung')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (288, N'40133', N'401', N'Huyện Nga Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (289, N'40135', N'401', N'Huyện Yên Định')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (290, N'40137', N'401', N'Huyện Thọ Xuân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (291, N'40139', N'401', N'Huyện Hậu Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (292, N'40141', N'401', N'Huyện Thiệu Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (293, N'40143', N'401', N'Huyện Hoằng Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (294, N'40145', N'401', N'Huyện Đông Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (295, N'40147', N'401', N'Huyện Triệu Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (296, N'40149', N'401', N'Huyện Quảng Xương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (297, N'40151', N'401', N'Huyện Nông Cống')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (298, N'40153', N'401', N'Huyện Tĩnh Gia')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (299, N'40301', N'403', N'Thành phố Vinh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (300, N'40303', N'403', N'Thị xã Cửa Lò')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (301, N'40305', N'403', N'Huyện Quế Phong')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (302, N'40307', N'403', N'Huyện Quỳ Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (303, N'40309', N'403', N'Huyện Kỳ Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (304, N'40311', N'403', N'Huyện Quỳ Hợp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (305, N'40313', N'403', N'Huyện Nghĩa Đàn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (306, N'40314', N'403', N'Thị xã Thái Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (307, N'40315', N'403', N'Huyện Tương Dương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (308, N'40317', N'403', N'Huyện Quỳnh Lưu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (309, N'40319', N'403', N'Huyện Tân Kỳ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (310, N'40321', N'403', N'Huyện Con Cuông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (311, N'40323', N'403', N'Huyện Yên Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (312, N'40325', N'403', N'Huyện Diễn Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (313, N'40327', N'403', N'Huyện Anh Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (314, N'40329', N'403', N'Huyện Đô Lương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (315, N'40331', N'403', N'Huyện Thanh Chương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (316, N'40333', N'403', N'Huyện Nghi Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (317, N'40335', N'403', N'Huyện Nam Đàn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (318, N'40337', N'403', N'Huyện Hưng Nguyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (319, N'40501', N'405', N'Thành phố Hà Tĩnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (320, N'40503', N'405', N'Thị xã Hồng Lĩnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (321, N'40505', N'405', N'Huyện Nghi Xuân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (322, N'40507', N'405', N'Huyện Đức Thọ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (323, N'40509', N'405', N'Huyện Hương Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (324, N'40511', N'405', N'Huyện Can Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (325, N'40513', N'405', N'Huyện Thạch Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (326, N'40515', N'405', N'Huyện Cẩm Xuyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (327, N'40517', N'405', N'Huyện Hương Khê')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (328, N'40519', N'405', N'Huyện Kỳ Anh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (329, N'40521', N'405', N'Huyện Vũ Quang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (330, N'40523', N'405', N'Huyện Lộc Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (331, N'40701', N'407', N'Thành phố Đồng Hới')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (332, N'40703', N'407', N'Huyện Tuyên Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (333, N'40705', N'407', N'Huyện Minh Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (334, N'40707', N'407', N'H.Quảng Trạch')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (335, N'40709', N'407', N'Huyện Bố Trạch')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (336, N'40711', N'407', N'Huyện Quảng Ninh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (337, N'40713', N'407', N'Huyện Lệ Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (338, N'40901', N'409', N'Thành phố Đông Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (339, N'40903', N'409', N'Thị xã Quảng Trị')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (340, N'40905', N'409', N'Huyện Vĩnh Linh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (341, N'40907', N'409', N'Huyện Gio Linh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (342, N'40909', N'409', N'Huyện Cam Lộ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (343, N'40911', N'409', N'Huyện Triệu Phong')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (344, N'40913', N'409', N'Huyện Hải Lăng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (345, N'40915', N'409', N'Huyện Hướng Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (346, N'40917', N'409', N'Huyện Đa Krông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (347, N'40919', N'409', N'Huyện Đảo Cồn Cỏ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (348, N'41101', N'411', N'Thành phố Huế')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (349, N'41103', N'411', N'Huyện Phong Điền')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (350, N'41105', N'411', N'Huyện Quảng Điền')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (351, N'41107', N'411', N'Huyện Hương Trà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (352, N'41109', N'411', N'Huyện Phú Vang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (353, N'41111', N'411', N'Huyện Hương Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (354, N'41113', N'411', N'Huyện Phú Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (355, N'41115', N'411', N'Huyện A Lưới')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (356, N'41117', N'411', N'Huyện Nam Đông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (357, N'50101', N'501', N'Quận Hải Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (358, N'50103', N'501', N'Quận Thanh Khê')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (359, N'50105', N'501', N'Quận Sơn Trà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (360, N'50107', N'501', N'Quận Ngũ Hành Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (361, N'50109', N'501', N'Quận Liên Chiểu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (362, N'50111', N'501', N'Huyện Hoà Vang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (363, N'50113', N'501', N'Huyện Đảo Hoàng Sa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (364, N'50115', N'501', N'Quận Cẩm Lệ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (365, N'50301', N'503', N'Thành phố Tam Kỳ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (366, N'50303', N'503', N'Thành phố Hội An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (367, N'50304', N'503', N'Huyện Tây Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (368, N'50305', N'503', N'Huyện Đông Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (369, N'50307', N'503', N'Huyện Đại Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (370, N'50309', N'503', N'Huyện Điện Bàn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (371, N'50311', N'503', N'Huyện Duy Xuyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (372, N'50313', N'503', N'Huyện Nam Giang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (373, N'50315', N'503', N'Huyện Thăng Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (374, N'50317', N'503', N'Huyện Quế Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (375, N'50319', N'503', N'Huyện Hiệp Đức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (376, N'50321', N'503', N'Huyện Tiên Phước')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (377, N'50323', N'503', N'Huyện Phước Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (378, N'50325', N'503', N'Huyện Núi Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (379, N'50327', N'503', N'Huyện Bắc Trà My')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (380, N'50329', N'503', N'Huyện Nam Trà My')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (381, N'50501', N'505', N'Thành phố Quảng Ngãi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (382, N'50503', N'505', N'Huyện Lý Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (383, N'50505', N'505', N'Huyện Bình Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (384, N'50507', N'505', N'Huyện Trà Bồng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (385, N'50508', N'505', N'Huyện Tây Trà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (386, N'50509', N'505', N'Huyện Sơn Tịnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (387, N'50511', N'505', N'Huyện Sơn Tây')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (388, N'50513', N'505', N'Huyện Sơn Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (389, N'50515', N'505', N'Huyện Tư Nghĩa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (390, N'50517', N'505', N'Huyện Nghĩa Hành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (391, N'50519', N'505', N'Huyện Minh Long')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (392, N'50521', N'505', N'Huyện Mộ Đức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (393, N'50523', N'505', N'Huyện Đức Phổ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (394, N'50525', N'505', N'Huyện Ba Tơ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (395, N'50701', N'507', N'Thành phố Quy Nhơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (396, N'50703', N'507', N'Huyện An Lão')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (397, N'50705', N'507', N'Huyện Hoài Nhơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (398, N'50707', N'507', N'Huyện Hoài ân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (399, N'50709', N'507', N'Huyện Phù Mỹ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (400, N'50711', N'507', N'Huyện Vĩnh Thạnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (401, N'50713', N'507', N'Huyện Phù Cát')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (402, N'50715', N'507', N'Huyện Tây Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (403, N'50717', N'507', N'Huyện An Nhơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (404, N'50719', N'507', N'Huyện Tuy Phước')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (405, N'50721', N'507', N'Huyện Vân Canh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (406, N'50901', N'509', N'TP Tuy Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (407, N'50903', N'509', N'Huyện Đồng Xuân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (408, N'50905', N'509', N'Huyện Sông Cầu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (409, N'50907', N'509', N'Huyện Tuy An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (410, N'50909', N'509', N'Huyện Sơn Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (411, N'50911', N'509', N'Huyện Đông Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (412, N'50912', N'509', N'Huyện Tây Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (413, N'50913', N'509', N'Huyện Sông Hinh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (414, N'50915', N'509', N'Huyện Phú Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (415, N'51101', N'511', N'Thành phố Nha Trang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (416, N'51103', N'511', N'Huyện Vạn Ninh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (417, N'51105', N'511', N'Huyện Ninh Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (418, N'51107', N'511', N'Huyện Diên Khánh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (419, N'51109', N'511', N'Thị xã Cam Ranh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (420, N'51111', N'511', N'Huyện Khánh Vĩnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (421, N'51113', N'511', N'Huyện Khánh Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (422, N'51115', N'511', N'Huyện Trường Sa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (423, N'51117', N'511', N'Huyện Cam Lâm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (424, N'60101', N'601', N'Thành phố Kon Tum')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (425, N'60103', N'601', N'Huyện Đắk Glei')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (426, N'60105', N'601', N'Huyện Ngọc Hồi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (427, N'60107', N'601', N'Huyện Đắk Tô')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (428, N'60108', N'601', N'Huyện Kon Rẫy')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (429, N'60109', N'601', N'Huyện Kon Plông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (430, N'60111', N'601', N'Huyện Đák Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (431, N'60113', N'601', N'Huyện Sa Thầy')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (432, N'60115', N'601', N'Huyện Tu Mơ Rông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (433, N'60301', N'603', N'Thành phố Pleiku')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (434, N'60303', N'603', N'Huyện Kbang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (435, N'60305', N'603', N'Huyện Mang Yang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (436, N'60307', N'603', N'Huyện Chư Păh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (437, N'60309', N'603', N'Huyện Ia Grai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (438, N'60311', N'603', N'Thị xã An Khê')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (439, N'60313', N'603', N'Huyện Kông Chro')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (440, N'60315', N'603', N'Huyện Đức Cơ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (441, N'60317', N'603', N'Huyện Chư Prông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (442, N'60319', N'603', N'Huyện Chư Sê')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (443, N'60320', N'603', N'Huyện IaPa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (444, N'60321', N'603', N'Thị xã Ayun Pa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (445, N'60323', N'603', N'Huyện Krông Pa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (446, N'60325', N'603', N'Huyện Đắk Đoa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (447, N'60327', N'603', N'Huyện ĐakPơ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (448, N'60329', N'603', N'Huyện Phú Thiện')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (449, N'60501', N'605', N'Thành phố Buôn Ma Thuột')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (450, N'60503', N'605', N'Huyện Ea H`leo')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (451, N'60505', N'605', N'Huyện Ea Súp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (452, N'60507', N'605', N'Huyện Krông Năng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (453, N'60509', N'605', N'Thị xã Buôn Hồ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (454, N'60511', N'605', N'Huyện Buôn Đôn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (455, N'60513', N'605', N'Huyện Cư M`gar')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (456, N'60515', N'605', N'Huyện Ea Kar')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (457, N'60517', N'605', N'Huyện M`ĐrắK')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (458, N'60519', N'605', N'Huyện Krông Pắk')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (459, N'60523', N'605', N'Huyện Krông A Na')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (460, N'60525', N'605', N'Huyện Krông Bông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (461, N'60531', N'605', N'Huyện Lắk')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (462, N'60537', N'605', N'Huyện Cư Kuin')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (463, N'60539', N'605', N'Huyện Krông Buk')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (464, N'60603', N'606', N'Huyện Cư Jút')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (465, N'60605', N'606', N'Huyện Krông Nô')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (466, N'60607', N'606', N'Huyện Đắk Mil')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (467, N'60609', N'606', N'Huyện Đắk Song')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (468, N'60611', N'606', N'Huyện Đắk R`Lấp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (469, N'60613', N'606', N'Thị xã Gia Nghĩa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (470, N'60615', N'606', N'Huyện Đắk Glong')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (471, N'60617', N'606', N'Tuy Đức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (472, N'70101', N'701', N'Quận 1')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (473, N'70103', N'701', N'Quận 2')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (474, N'70105', N'701', N'Quận 3')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (475, N'70107', N'701', N'Quận 4')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (476, N'70109', N'701', N'Quận 5')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (477, N'70111', N'701', N'Quận 6')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (478, N'70113', N'701', N'Quận 7')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (479, N'70115', N'701', N'Quận 8')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (480, N'70117', N'701', N'Quận 9')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (481, N'70119', N'701', N'Quận 10')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (482, N'70121', N'701', N'Quận 11')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (483, N'70123', N'701', N'Quận 12')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (484, N'70125', N'701', N'Quận Gò Vấp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (485, N'70127', N'701', N'Quận Tân Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (486, N'70128', N'701', N'Quận Tân phú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (487, N'70129', N'701', N'Quận Bình Thạnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (488, N'70131', N'701', N'Quận Phú Nhuận')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (489, N'70133', N'701', N'Quận Thủ Đức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (490, N'70134', N'701', N'Quận Bình Tân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (491, N'70135', N'701', N'Huyện Củ Chi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (492, N'70137', N'701', N'Huyện Hóc Môn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (493, N'70139', N'701', N'Huyện Bình Chánh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (494, N'70141', N'701', N'Huyện Nhà Bè')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (495, N'70143', N'701', N'Huyện Cần Giờ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (496, N'70301', N'703', N'Thành Phố Đà Lạt')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (497, N'70303', N'703', N'Thị xã Bảo Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (498, N'70305', N'703', N'Huyện Lạc Dương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (499, N'70307', N'703', N'Huyện Đơn Dương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (500, N'70309', N'703', N'Huyện Đức Trọng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (501, N'70311', N'703', N'Huyện Lâm Hà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (502, N'70313', N'703', N'Huyện Bảo Lâm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (503, N'70315', N'703', N'Huyện Di Linh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (504, N'70317', N'703', N'Huyện Đạ Huoai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (505, N'70319', N'703', N'Huyện Đạ Tẻh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (506, N'70321', N'703', N'Huyện Cát Tiên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (507, N'70323', N'703', N'Huyện Đam Rông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (508, N'70501', N'705', N'TP. Phan Rang - Tháp Chàm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (509, N'70503', N'705', N'Huyện Ninh Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (510, N'70505', N'705', N'Huyện Ninh Hải')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (511, N'70507', N'705', N'Huyện Ninh Phước')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (512, N'70509', N'705', N'Huyện Bác ái')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (513, N'70511', N'705', N'Huyện Thuận Bắc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (514, N'70513', N'705', N'Huyện Thuận Nam')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (515, N'70701', N'707', N'Huyện Đồng Phú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (516, N'70703', N'707', N'Huyện Phước Long')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (517, N'70705', N'707', N'Huyện Lộc Ninh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (518, N'70706', N'707', N'Huyện Bù Đốp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (519, N'70707', N'707', N'Huyện Bù Đăng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (520, N'70709', N'707', N'Huyện Bình Long')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (521, N'70710', N'707', N'Huyện Chơn Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (522, N'70711', N'707', N'Thị xã Đồng Xoài')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (523, N'70901', N'709', N'Thị xã Tây Ninh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (524, N'70903', N'709', N'Huyện Tân Biên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (525, N'70905', N'709', N'Huyện Tân Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (526, N'70907', N'709', N'Huyện Dương Minh Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (527, N'70909', N'709', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (528, N'70911', N'709', N'Huyện Hoà Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (529, N'70913', N'709', N'Huyện Bến Cầu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (530, N'70915', N'709', N'huyện Gò Dầu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (531, N'70917', N'709', N'Huyện Trảng Bàng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (532, N'71101', N'711', N'TX Thủ Dầu Một')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (533, N'71103', N'711', N'Huyện Bến Cát')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (534, N'71105', N'711', N'Huyện Tân Uyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (535, N'71107', N'711', N'Huyện Thuận An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (536, N'71109', N'711', N'Huyện Dĩ An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (537, N'71111', N'711', N'Huyện Phú Giáo')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (538, N'71113', N'711', N'Huyện Dầu Tiếng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (539, N'71301', N'713', N'TP Biên Hòa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (540, N'71302', N'713', N'TX Long khánh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (541, N'71303', N'713', N'Huyện Tân Phú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (542, N'71305', N'713', N'Huyện Định Quán')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (543, N'71307', N'713', N'Huyện Vĩnh Cửu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (544, N'71308', N'713', N'Huyện Trảng Bom')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (545, N'71309', N'713', N'Huyện Thống Nhất')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (546, N'71311', N'713', N'huyện Cẩm Mỹ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (547, N'71313', N'713', N'Huyện Xuân Lộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (548, N'71315', N'713', N'Huyện Long Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (549, N'71317', N'713', N'Huyện Nhơn Trạch')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (550, N'71501', N'715', N'Thành phố Phan Thiết')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (551, N'71503', N'715', N'Huyện Tuy Phong')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (552, N'71505', N'715', N'Huyện Bắc Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (553, N'71507', N'715', N'Huyện Hàm Thuận Bắc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (554, N'71509', N'715', N'Huyện Hàm Thuận Nam')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (555, N'71511', N'715', N'Huyện Tánh Linh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (556, N'71513', N'715', N'Thị xã La Gi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (557, N'71514', N'715', N'Huyện Hàm Tân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (558, N'71515', N'715', N'Huyện Đức Linh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (559, N'71517', N'715', N'Huyện Phú Quý')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (560, N'71701', N'717', N'Thành phố Vũng Tàu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (561, N'71703', N'717', N'Thị xã Bà Rịa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (562, N'71705', N'717', N'Huyện Châu Đức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (563, N'71707', N'717', N'Huyện Xuyên Mộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (564, N'71709', N'717', N'Huyện Tân Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (565, N'71711', N'717', N'Huyện Long Điền')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (566, N'71712', N'717', N'Huyện Đất đỏ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (567, N'71713', N'717', N'Huyện Côn Đảo')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (568, N'80101', N'801', N'Thành phố Tân An')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (569, N'80103', N'801', N'Huyện Tân Hưng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (570, N'80105', N'801', N'Huyện Vĩnh Hưng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (571, N'80107', N'801', N'Huyện Mộc Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (572, N'80109', N'801', N'Huyện Tân Thạnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (573, N'80111', N'801', N'Huyện Thạnh Hoá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (574, N'80113', N'801', N'Huyện Đức Huệ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (575, N'80115', N'801', N'Huyện Đức Hoà')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (576, N'80117', N'801', N'Huyện Bến Lức')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (577, N'80119', N'801', N'Huyện Thủ Thừa')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (578, N'80121', N'801', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (579, N'80123', N'801', N'Huyện Tân Trụ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (580, N'80125', N'801', N'Huyện Cần Đước')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (581, N'80127', N'801', N'Huyện Cần Giuộc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (582, N'80301', N'803', N'Thành phố Cao Lãnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (583, N'80303', N'803', N'Thị xã Sa Đéc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (584, N'80305', N'803', N'Huyện Tân Hồng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (585, N'80307', N'803', N'Huyện Hồng Ngự')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (586, N'80309', N'803', N'Huyện Tam Nông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (587, N'80311', N'803', N'Huyện Thanh Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (588, N'80313', N'803', N'Huyện Tháp Mười')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (589, N'80315', N'803', N'Huyện Cao Lãnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (590, N'80317', N'803', N'Huyện Lấp Vò')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (591, N'80319', N'803', N'Huyện Lai Vung')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (592, N'80321', N'803', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (593, N'80323', N'803', N'Thị xã Hồng Ngự')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (594, N'80501', N'805', N'Tp. Long Xuyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (595, N'80503', N'805', N'Thị xã Châu Đốc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (596, N'80505', N'805', N'Huyện An Phú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (597, N'80507', N'805', N'Huyện Tân Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (598, N'80509', N'805', N'Huyện Phú Tân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (599, N'80511', N'805', N'Huyện Châu Phú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (600, N'80513', N'805', N'Huyện Tịnh Biên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (601, N'80515', N'805', N'Huyện Tri Tôn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (602, N'80517', N'805', N'Huyện Chợ Mới')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (603, N'80519', N'805', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (604, N'80521', N'805', N'Huyện Thoại Sơn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (605, N'80701', N'807', N'Thành phố Mỹ Tho')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (606, N'80703', N'807', N'Thị xã Gò Công')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (607, N'80705', N'807', N'Huyện Tân Phước')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (608, N'80707', N'807', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (609, N'80709', N'807', N'Huyện Cai Lậy')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (610, N'80711', N'807', N'Huyện Chợ Gạo')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (611, N'80713', N'807', N'Huyện Cái Bè')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (612, N'80715', N'807', N'Huyện Gò Công Tây')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (613, N'80717', N'807', N'Huyện Gò Công Đông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (614, N'80719', N'807', N'Huyện Tân Phú Đông')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (615, N'80901', N'809', N'Thành phố Vĩnh Long')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (616, N'80903', N'809', N'Huyện Long Hồ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (617, N'80905', N'809', N'Huyện Mang Thít')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (618, N'80907', N'809', N'Huyện Bình Minh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (619, N'80908', N'809', N'huyện Bình Tân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (620, N'80909', N'809', N'Huyện Tam Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (621, N'80911', N'809', N'Huyện Trà Ôn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (622, N'80913', N'809', N'Huyện Vũng Liêm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (623, N'81101', N'811', N'Thành phố Bến Tre')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (624, N'81103', N'811', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (625, N'81105', N'811', N'Huyện Chợ Lách')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (626, N'81107', N'811', N'Huyện Mỏ Cày Nam')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (627, N'81108', N'811', N'Huyện Mỏ Cày Bắc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (628, N'81109', N'811', N'Huyện Giồng Trôm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (629, N'81111', N'811', N'Huyện Bình Đại')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (630, N'81113', N'811', N'Huyện Ba Tri')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (631, N'81115', N'811', N'Huyện Thạnh Phú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (632, N'81301', N'813', N'Thành phố Rạch Giá')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (633, N'81303', N'813', N'Huyện Kiên Lương')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (634, N'81304', N'813', N'Huyện Giang Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (635, N'81305', N'813', N'Huyện Hòn Đất')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (636, N'81307', N'813', N'Huyện Tân Hiệp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (637, N'81309', N'813', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (638, N'81311', N'813', N'Huyện Giồng Riềng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (639, N'81313', N'813', N'Huyện Gò Quao')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (640, N'81315', N'813', N'Huyện An Biên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (641, N'81317', N'813', N'Huyện An Minh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (642, N'81319', N'813', N'Huyện Vĩnh Thuận')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (643, N'81321', N'813', N'Huyện Phú Quốc')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (644, N'81323', N'813', N'Huyện Kiên HảI')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (645, N'81325', N'813', N'Thị xã Hà Tiên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (646, N'81501', N'815', N'Thành phố Cần Thơ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (647, N'81503', N'815', N'Quận Thốt Nốt')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (648, N'81505', N'815', N'Quận Ô Môn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (649, N'81509', N'816', N'Huyện Phụng Hiệp')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (650, N'81519', N'815', N'Quận Ninh Kiều')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (651, N'81521', N'815', N'Quận Bình Thuỷ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (652, N'81523', N'815', N'Quận Cái Răng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (653, N'81525', N'815', N'Huyện Vĩnh Thạnh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (654, N'81527', N'815', N'Huyện Cờ Đỏ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (655, N'81529', N'815', N'Huyện Phong Điền')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (656, N'81531', N'815', N'Huyện Thới Lai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (657, N'81601', N'816', N'Thị xã Vị Thanh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (658, N'81603', N'816', N'huế Huyện Châu Thành A')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (659, N'81605', N'816', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (660, N'81607', N'816', N'Thị Xã Ngã Bảy')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (661, N'81609', N'816', N'Huyện Vị Thủy')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (662, N'81611', N'816', N'Huyện Long Mỹ')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (663, N'81701', N'817', N'Thị xã Trà Vinh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (664, N'81703', N'817', N'Huyện Càng Long')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (665, N'81705', N'817', N'Huyện Châu Thành')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (666, N'81707', N'817', N'Huyện Cầu Kè')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (667, N'81709', N'817', N'Huyện Tiểu Cần')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (668, N'81711', N'817', N'Huyện Cầu Ngang')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (669, N'81713', N'817', N'Huyện Trà Cú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (670, N'81715', N'817', N'Huyện Duyên Hải')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (671, N'81901', N'819', N'Thành phố Sóc Trăng')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (672, N'81903', N'819', N'Huyện Kế Sách')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (673, N'81905', N'819', N'Huyện Long Phú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (674, N'81906', N'819', N'Huyện Cù Lao Dung')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (675, N'81907', N'819', N'Huyện Mỹ Tú')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (676, N'81909', N'819', N'Huyện Mỹ Xuyên')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (677, N'81911', N'819', N'Huyện Thạnh Trị')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (678, N'81912', N'819', N'Huyện Ngã Năm')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (679, N'81913', N'819', N'Huyện Vĩnh Châu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (680, N'82101', N'821', N'Thị xã Bạc Liêu')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (681, N'82103', N'821', N'Huyện Hồng Dân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (682, N'82105', N'821', N'Huyện Vĩnh Lợi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (683, N'82106', N'821', N'Huyện Hoà Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (684, N'82107', N'821', N'Huyện Giá Rai')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (685, N'82109', N'821', N'Huyện Phước Long')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (686, N'82111', N'821', N'Huyện Đông Hải')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (687, N'82301', N'823', N'TP Cà Mau')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (688, N'82303', N'823', N'Huyện Thới Bình')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (689, N'82305', N'823', N'Huyện U Minh')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (690, N'82307', N'823', N'Huyện Trần Văn Thời')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (691, N'82308', N'823', N'Huyện Phú Tân')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (692, N'82309', N'823', N'Huyện Cái Nước')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (693, N'82311', N'823', N'Huyện Đầm Dơi')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (694, N'82312', N'823', N'Huyện Năm Căn')
GO
INSERT [dbo].[Mst_District] ([Id], [DistrictCode], [ProvinceCode], [DistrictName]) VALUES (695, N'82313', N'823', N'Huyện Ngọc Hiển')
GO
SET IDENTITY_INSERT [dbo].[Mst_District] OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_Province] ON 
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (1, N'101', N'Thành phố Hà Nội')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (2, N'103', N'TP Hải Phòng')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (3, N'107', N'Tỉnh Hải Dương')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (4, N'109', N'Tỉnh Hưng Yên')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (5, N'111', N'Tỉnh Hà Nam')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (6, N'113', N'Tỉnh Nam Định')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (7, N'115', N'Tỉnh Thái Bình')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (8, N'117', N'Tỉnh Ninh Bình')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (9, N'201', N'Tỉnh Hà Giang')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (10, N'203', N'Tỉnh Cao Bằng')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (11, N'205', N'Tỉnh Lào Cai')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (12, N'207', N'Tỉnh Bắc Cạn')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (13, N'209', N'Tỉnh Lạng Sơn')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (14, N'211', N'Tỉnh Tuyên Quang')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (15, N'213', N'Tỉnh Yên Bái')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (16, N'215', N'Tỉnh Thái Nguyên')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (17, N'217', N'Tỉnh Phú Thọ')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (18, N'219', N'Tỉnh Vĩnh Phúc')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (19, N'221', N'Tỉnh Bắc Giang')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (20, N'223', N'Tỉnh Bắc Ninh')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (21, N'225', N'Tỉnh Quảng Ninh')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (22, N'301', N'Tỉnh Điện Biên')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (23, N'302', N'Tỉnh Lai Châu')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (24, N'303', N'Tỉnh Sơn La')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (25, N'305', N'Tỉnh Hoà Bình')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (26, N'401', N'Tỉnh Thanh Hoá')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (27, N'403', N'Tỉnh Nghệ An')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (28, N'405', N'Tỉnh Hà Tĩnh')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (29, N'407', N'Tỉnh Quảng Bình')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (30, N'409', N'Tỉnh Quảng Trị')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (31, N'411', N'Tỉnh TT-Huế')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (32, N'501', N'TP Đà Nẵng')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (33, N'503', N'Tỉnh Quảng Nam')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (34, N'505', N'Tỉnh Quảng Ngãi')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (35, N'507', N'Tỉnh Bình Định')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (36, N'509', N'Tỉnh Phú Yên')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (37, N'511', N'Tỉnh Khánh Hoà')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (38, N'601', N'Tỉnh Kon Tum')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (39, N'603', N'Tỉnh Gia Lai')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (40, N'605', N'Tỉnh Đắk Lắk')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (41, N'606', N'Tỉnh Đắk Nông')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (42, N'701', N'Thành phố Hồ Chí Minh')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (43, N'703', N'Tỉnh Lâm Đồng')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (44, N'705', N'Tỉnh Ninh Thuận')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (45, N'707', N'Tỉnh Bình Phước')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (46, N'709', N'Tỉnh Tây Ninh')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (47, N'711', N'Tỉnh Bình Dương')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (48, N'713', N'Tỉnh Đồng Nai')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (49, N'715', N'Tỉnh Bình Thuận')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (50, N'717', N'Tỉnh Bà Rịa - Vũng Tàu')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (51, N'801', N'Tỉnh Long An')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (52, N'803', N'Tỉnh Đồng Tháp')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (53, N'805', N'Tỉnh An Giang')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (54, N'807', N'Tỉnh Tiền Giang')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (55, N'809', N'Tỉnh Vĩnh Long')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (56, N'811', N'Tỉnh Bến Tre')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (57, N'813', N'Tỉnh Kiên Giang')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (58, N'815', N'Thành phố Cần Thơ')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (59, N'816', N'Tỉnh Hậu Giang')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (60, N'817', N'Tỉnh Trà Vinh')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (61, N'819', N'Tỉnh Sóc Trăng')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (62, N'821', N'Tỉnh Bạc Liêu')
GO
INSERT [dbo].[Mst_Province] ([Id], [ProvinceCode], [ProvinceName]) VALUES (63, N'823', N'Tỉnh Cà Mau')
GO
SET IDENTITY_INSERT [dbo].[Mst_Province] OFF
GO
SET IDENTITY_INSERT [dbo].[RegisIsolation] ON 
GO
INSERT [dbo].[RegisIsolation] ([Id], [Username], [ProvinceCode], [DistrictCode], [RegisAddress], [RegisIsolationStatus], [RegisDate], [FinishIsolationStatus], [FinishDate], [CancelIsolationStatus], [CancelDate]) VALUES (1, N'0336644881', N'101', N'10109', N'BV Dịch Tễ TW', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), 0, NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[RegisIsolation] OFF
GO
SET IDENTITY_INSERT [dbo].[TestHealth] ON 
GO
INSERT [dbo].[TestHealth] ([Id], [Username], [IsFever], [IsCough], [IsDyspnoeic], [IsTired], [HealthStatus], [HealthUpdDate]) VALUES (1, N'0336644881', 0, 0, 0, 0, 0, CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TestHealth] ([Id], [Username], [IsFever], [IsCough], [IsDyspnoeic], [IsTired], [HealthStatus], [HealthUpdDate]) VALUES (2, N'0336644882', 0, 0, 0, 0, 0, CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TestHealth] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [Username], [GroupCode], [Password], [FullName], [BirthDay], [Sex], [CMND], [ProvinceCode], [DistrictCode], [Address], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (1, N'0336644881', N'ADMIN', N'005f47cddf568dacb8d03e20ba682cf9', N'Duyên', CAST(N'1996-10-27T00:00:00.000' AS DateTime), N'1', N'123456788', N'101', N'10109', N'Thịnh Quang', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), CAST(N'2020-06-03T08:11:50.643' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Username], [GroupCode], [Password], [FullName], [BirthDay], [Sex], [CMND], [ProvinceCode], [DistrictCode], [Address], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (2, N'0336644882', N'USER', N'ffb9355e47c90c2e62c8bbd0082aec68', N'Duyên', CAST(N'1996-10-27T00:00:00.000' AS DateTime), N'1', N'123456780', N'101', N'10109', N'Thịnh Quang', 1, CAST(N'2020-06-03T08:35:31.277' AS DateTime), CAST(N'2020-06-03T15:00:02.727' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserGroup] ON 
GO
INSERT [dbo].[UserGroup] ([Id], [GroupCode], [GroupName], [Description], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (1, N'ADMIN', N'Admin', N'Nhóm quản trị viên', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserGroup] ([Id], [GroupCode], [GroupName], [Description], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (2, N'USER', N'User', N'Nhóm người dùng', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserGroup] OFF
GO
ALTER TABLE [dbo].[Mst_District]  WITH CHECK ADD  CONSTRAINT [R_1258] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Mst_Province] ([ProvinceCode])
GO
ALTER TABLE [dbo].[Mst_District] CHECK CONSTRAINT [R_1258]
GO
ALTER TABLE [dbo].[RegisIsolation]  WITH CHECK ADD  CONSTRAINT [R_1262] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Mst_Province] ([ProvinceCode])
GO
ALTER TABLE [dbo].[RegisIsolation] CHECK CONSTRAINT [R_1262]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [R_1255] FOREIGN KEY([GroupCode])
REFERENCES [dbo].[UserGroup] ([GroupCode])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [R_1255]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [R_1260] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Mst_Province] ([ProvinceCode])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [R_1260]
GO
