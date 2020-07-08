USE [master]
GO
/****** Object:  Database [Covid19]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE DATABASE [Covid19]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Covid19', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL\MSSQL\DATA\Covid19.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Covid19_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL\MSSQL\DATA\Covid19_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Covid19] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Covid19].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Covid19] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Covid19] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Covid19] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Covid19] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Covid19] SET ARITHABORT OFF 
GO
ALTER DATABASE [Covid19] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Covid19] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Covid19] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Covid19] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Covid19] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Covid19] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Covid19] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Covid19] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Covid19] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Covid19] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Covid19] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Covid19] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Covid19] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Covid19] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Covid19] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Covid19] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Covid19] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Covid19] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Covid19] SET  MULTI_USER 
GO
ALTER DATABASE [Covid19] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Covid19] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Covid19] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Covid19] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Covid19] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Covid19] SET QUERY_STORE = OFF
GO
USE [Covid19]
GO
/****** Object:  Default [StringEmpty]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE DEFAULT [dbo].[StringEmpty] 
AS
''
GO
/****** Object:  Default [ValueOne]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE DEFAULT [dbo].[ValueOne] 
AS
1
GO
/****** Object:  Default [ValueZero]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE DEFAULT [dbo].[ValueZero] 
AS
0
GO
/****** Object:  UserDefinedDataType [dbo].[MyDateTime]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[MyDateTime] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyImage]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[MyImage] FROM [image] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyInteger]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[MyInteger] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyStatus]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[MyStatus] FROM [nvarchar](10) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyText]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[MyText] FROM [ntext] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyTimeStamp]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[MyTimeStamp] FROM [bigint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyValue]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[MyValue] FROM [float] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar10]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar10] FROM [varchar](10) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar100]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar100] FROM [nvarchar](100) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar20]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar20] FROM [nvarchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar200]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar200] FROM [nvarchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar2000]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar2000] FROM [nvarchar](2000) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar30]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar30] FROM [nvarchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar400]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar400] FROM [nvarchar](400) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar50]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar50] FROM [nvarchar](50) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar500]    Script Date: 8/7/2020 9:18:12 PM ******/
CREATE TYPE [dbo].[Varchar500] FROM [nvarchar](500) NULL
GO
/****** Object:  Table [dbo].[ConnectRate]    Script Date: 8/7/2020 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserRating] [nvarchar](50) NOT NULL,
	[IdWarning] [int] NOT NULL,
	[IsRating] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[CreatedRate] [datetime] NULL,
 CONSTRAINT [XPKConnectRate] PRIMARY KEY CLUSTERED 
(
	[UserRating] ASC,
	[IdWarning] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KBYT]    Script Date: 8/7/2020 9:18:12 PM ******/
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
/****** Object:  Table [dbo].[Mst_District]    Script Date: 8/7/2020 9:18:12 PM ******/
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
/****** Object:  Table [dbo].[Mst_Province]    Script Date: 8/7/2020 9:18:12 PM ******/
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
/****** Object:  Table [dbo].[PositionHistory]    Script Date: 8/7/2020 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[TimeOut] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [XPKPositionHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionHistoryDetail]    Script Date: 8/7/2020 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionHistoryDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TimeOutId] [int] NOT NULL,
	[Lng] [float] NOT NULL,
	[Lat] [float] NOT NULL,
	[Address] [nvarchar](2000) NOT NULL,
	[IsWarning] [int] NOT NULL,
	[VerifyDate] [datetime] NULL,
 CONSTRAINT [XPKPositionHistoryDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionWarning]    Script Date: 8/7/2020 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionWarning](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[VerifyDate] [nvarchar](50) NULL,
	[Note] [nvarchar](2000) NULL,
	[Lng] [float] NOT NULL,
	[Lat] [float] NOT NULL,
	[Address] [nvarchar](2000) NULL,
	[PatientGroup] [nvarchar](50) NULL,
	[TimeOut] [int] NOT NULL,
	[Radius] [int] NOT NULL,
	[IsCallAPI] [int] NOT NULL,
	[IsActive] [int] NOT NULL,
	[CreatedAdmin] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [XPKPositonWarning] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisIsolation]    Script Date: 8/7/2020 9:18:12 PM ******/
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
/****** Object:  Table [dbo].[TestHealth]    Script Date: 8/7/2020 9:18:12 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 8/7/2020 9:18:12 PM ******/
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
	[NumberRating] [int] NOT NULL,
	[Rating] [float] NOT NULL,
	[IsRegisAdmin] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 8/7/2020 9:18:12 PM ******/
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
SET IDENTITY_INSERT [dbo].[ConnectRate] ON 
GO
INSERT [dbo].[ConnectRate] ([Id], [UserRating], [IdWarning], [IsRating], [Rating], [CreatedRate]) VALUES (10, N'0379292544', 555, 1, 3, CAST(N'2020-07-06T02:05:23.477' AS DateTime))
GO
INSERT [dbo].[ConnectRate] ([Id], [UserRating], [IdWarning], [IsRating], [Rating], [CreatedRate]) VALUES (11, N'0379292544', 556, 1, 1, CAST(N'2020-07-06T03:51:51.953' AS DateTime))
GO
INSERT [dbo].[ConnectRate] ([Id], [UserRating], [IdWarning], [IsRating], [Rating], [CreatedRate]) VALUES (9, N'0962626032', 555, 1, 4, CAST(N'2020-06-28T14:15:03.067' AS DateTime))
GO
INSERT [dbo].[ConnectRate] ([Id], [UserRating], [IdWarning], [IsRating], [Rating], [CreatedRate]) VALUES (8, N'0982034125', 289, 1, 4, CAST(N'2020-06-28T10:32:19.410' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ConnectRate] OFF
GO
SET IDENTITY_INSERT [dbo].[KBYT] ON 
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (1, N'0336644881', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (2, N'0336644881', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-06-10T06:52:54.877' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (3, N'0336644881', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-06-10T09:44:39.347' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (10, N'0336644880', 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2020-06-28T08:55:46.797' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (11, N'0962626032', 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-06-28T11:21:12.363' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (12, N'0962626032', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-06-28T11:21:43.230' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (13, N'0962626032', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-06-28T11:22:06.310' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (14, N'0962626032', 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-06-28T11:22:29.823' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (15, N'0379292544', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, CAST(N'2020-07-05T18:44:52.563' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (16, N'0379292544', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, CAST(N'2020-07-06T02:09:10.440' AS DateTime))
GO
INSERT [dbo].[KBYT] ([Id], [Username], [ContactWithPatient], [BackFromDiseaseArea], [ContactWithPersonBack], [IsFever], [IsCough], [IsDyspoenic], [IsTired], [IsSoreThoroat], [IsPneumonia], [IsLiverish], [IsBlood], [IsPulmonic], [IsCardiopathy], [BloodPresure], [HIVimmune], [IsDiabetes], [IsCancer], [IsPregnant], [CreatedDate]) VALUES (17, N'0379292544', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-07-08T14:02:03.000' AS DateTime))
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
SET IDENTITY_INSERT [dbo].[PositionHistory] ON 
GO
INSERT [dbo].[PositionHistory] ([Id], [Username], [TimeOut], [CreatedDate]) VALUES (1, N'0336644881', 300, CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PositionHistory] ([Id], [Username], [TimeOut], [CreatedDate]) VALUES (17, N'0336644880', 30, CAST(N'2020-06-27T20:42:54.117' AS DateTime))
GO
INSERT [dbo].[PositionHistory] ([Id], [Username], [TimeOut], [CreatedDate]) VALUES (18, N'0982034125', 100, CAST(N'2020-06-27T21:04:59.807' AS DateTime))
GO
INSERT [dbo].[PositionHistory] ([Id], [Username], [TimeOut], [CreatedDate]) VALUES (20, N'0962626032', 30, CAST(N'2020-06-28T08:30:40.997' AS DateTime))
GO
INSERT [dbo].[PositionHistory] ([Id], [Username], [TimeOut], [CreatedDate]) VALUES (21, N'0379292544', 5, CAST(N'2020-07-05T18:42:36.287' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PositionHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[PositionHistoryDetail] ON 
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (405, 20, 105.8235652, 21.0083112, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:34:35.577' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (406, 20, 105.823578, 21.0083109, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:37:03.230' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (407, 20, 105.823578, 21.0083109, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:37:35.357' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (408, 20, 105.8235592, 21.0083411, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:38:11.187' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (409, 20, 105.8235649, 21.0083365, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:38:45.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (410, 20, 105.8236044, 21.0083092, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:40:34.697' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (411, 20, 105.8235765, 21.0083478, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:41:42.110' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (412, 20, 105.8235534, 21.0083445, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:42:12.807' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (413, 20, 105.8235771, 21.0083396, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:42:48.567' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (414, 20, 105.8235894, 21.0083891, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:43:20.160' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (415, 20, 105.8235659, 21.0083436, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:44:28.443' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (416, 20, 105.8235408, 21.0083483, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:45:00.413' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (417, 20, 105.8235705, 21.0083454, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:45:31.837' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (418, 20, 105.8235781, 21.0083348, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:46:05.220' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (419, 20, 105.8235669, 21.0083254, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:46:37.433' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (420, 20, 105.823559, 21.0083409, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:47:13.943' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (421, 20, 105.8235499, 21.008343, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:48:24.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (422, 20, 105.8235794, 21.0083418, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:48:59.197' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (423, 20, 105.8235633, 21.0083199, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:49:37.440' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (424, 20, 105.8235503, 21.0083135, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:50:17.240' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (425, 20, 105.8235177, 21.0083708, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:51:21.707' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (426, 20, 105.8235602, 21.0082959, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:51:55.977' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (427, 20, 105.8236201, 21.0083313, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:52:31.953' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (428, 20, 105.8235649, 21.0083489, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:53:02.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (429, 20, 105.8235573, 21.0083364, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:54:44.850' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (430, 20, 105.8235709, 21.0083417, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:55:19.450' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (431, 20, 105.8235665, 21.0083133, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:55:54.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (432, 20, 105.823554, 21.008352, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:56:25.510' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (433, 20, 105.8235736, 21.0083654, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:58:04.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (434, 20, 105.823563, 21.0083864, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:58:37.290' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (435, 20, 105.823563, 21.0083864, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:59:11.770' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (436, 20, 105.8235574, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T08:59:48.407' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (437, 20, 105.823575, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:00:21.423' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (438, 20, 105.8235666, 21.0083114, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:01:25.933' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (439, 20, 105.8235813, 21.0083446, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:02:35.087' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (440, 20, 105.8235676, 21.0083826, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:03:08.453' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (441, 20, 105.823652, 21.0083053, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:03:42.467' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (442, 20, 105.8235818, 21.0083153, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:04:14.187' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (443, 20, 105.8236472, 21.0083374, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:04:49.150' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (444, 20, 105.8236472, 21.0083374, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:05:24.390' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (445, 20, 105.8236472, 21.0083374, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:06:00.587' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (446, 20, 105.8236827, 21.0083265, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:06:36.203' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (447, 20, 105.8236114, 21.0083706, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:08:25.120' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (448, 20, 105.8236114, 21.0083706, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:09:02.367' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (449, 20, 105.8236114, 21.0083706, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:09:40.873' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (450, 20, 105.8237151, 21.0083277, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:11:24.547' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (451, 20, 105.8236601, 21.0083346, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:13:03.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (452, 20, 105.8236567, 21.0083309, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:14:07.413' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (453, 20, 105.8236567, 21.0083309, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:14:43.003' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (454, 20, 105.8236567, 21.0083309, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:15:18.353' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (455, 20, 105.823587, 21.0083382, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:16:29.907' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (456, 20, 105.8235646, 21.0083653, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:17:05.140' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (457, 20, 105.8235567, 21.0083511, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:17:39.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (458, 20, 105.8236593, 21.008321, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:18:10.557' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (459, 20, 105.8235877, 21.0083544, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:18:44.487' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (460, 20, 105.8236995, 21.0083247, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:19:18.880' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (461, 20, 105.8235669, 21.008316, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:19:50.487' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (462, 20, 105.8236006, 21.0083685, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:20:28.030' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (463, 20, 105.8235748, 21.0083144, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:21:00.607' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (464, 20, 105.8235611, 21.0083565, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:21:33.370' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (465, 20, 105.8235932, 21.0083186, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:22:04.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (466, 20, 105.823564, 21.0083285, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:22:34.657' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (467, 20, 105.8236711, 21.0083279, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:23:11.707' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (468, 20, 105.8237169, 21.0083241, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:24:07.593' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (469, 20, 105.8236976, 21.0083325, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:24:46.557' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (470, 20, 105.8235457, 21.0083599, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:25:22.030' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (471, 20, 105.8237092, 21.0083686, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:39:41.820' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (472, 20, 105.8237091, 21.0083264, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:40:17.650' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (473, 20, 105.8235676, 21.0083122, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:40:52.290' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (474, 20, 105.8235648, 21.0083397, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:41:24.240' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (475, 20, 105.8235718, 21.0083495, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:41:56.067' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (476, 20, 105.8235624, 21.008335, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:42:31.480' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (477, 20, 105.8236028, 21.0083182, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:43:05.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (478, 20, 105.8235685, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:43:38.717' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (479, 20, 105.8235685, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:44:14.257' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (480, 20, 105.8235685, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:44:50.373' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (481, 20, 105.8235685, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:45:25.763' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (482, 20, 105.8237159, 21.008325, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:58:29.607' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (483, 20, 105.8235993, 21.0083871, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:59:03.427' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (484, 20, 105.823584, 21.0083379, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T09:59:57.980' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (485, 20, 105.8237108, 21.0083237, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:00:33.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (486, 20, 105.8235858, 21.0083195, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:01:17.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (487, 20, 105.8235782, 21.008323, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:01:19.110' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (488, 20, 105.8236439, 21.0083314, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:01:54.187' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (489, 20, 105.8236439, 21.0083314, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:02:35.130' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (490, 20, 105.8235591, 21.0083405, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:03:20.227' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (491, 20, 105.8235591, 21.0083405, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:03:39.407' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (492, 20, 105.8235591, 21.0083405, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:04:15.080' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (493, 20, 105.8235591, 21.0083405, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:04:50.700' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (494, 20, 108.123456, 16.123456, N'Điện máy xanh...', 1, CAST(N'2020-06-28T10:19:58.860' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (495, 20, 108.123456, 16.123456, N'Điện máy xanh...', 0, CAST(N'2020-06-28T10:19:58.863' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (496, 20, 105.8235616, 21.0083381, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:29:12.327' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (497, 20, 105.823608, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:29:49.350' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (498, 20, 105.823608, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:30:25.230' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (499, 20, 105.823608, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T10:31:00.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (500, 20, 105.8236919, 21.0083201, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:04:42.517' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (501, 20, 105.8237084, 21.0083309, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:05:15.990' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (502, 20, 105.8236096, 21.0083297, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:05:48.500' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (503, 20, 105.8237103, 21.0083229, N'236 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:06:24.353' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (504, 20, 105.8236915, 21.0083193, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:06:58.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (505, 20, 105.8235961, 21.0083138, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:07:35.557' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (506, 20, 105.8236338, 21.0083245, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:08:09.100' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (507, 20, 105.8235867, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:08:40.630' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (508, 20, 105.8236969, 21.0083296, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:09:11.853' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (509, 20, 105.823677, 21.0083371, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:09:49.373' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (510, 20, 105.8237023, 21.0083291, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:10:20.970' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (511, 20, 105.8237023, 21.0083291, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:10:56.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (512, 20, 105.8237023, 21.0083291, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:11:34.037' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (513, 20, 105.8237023, 21.0083291, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:12:09.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (514, 20, 105.8237023, 21.0083291, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:15:40.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (515, 20, 105.8236097, 21.0083161, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:16:10.620' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (516, 20, 105.8236386, 21.0083158, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:16:46.030' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (517, 20, 105.8236567, 21.0083381, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:17:21.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (518, 20, 105.8237059, 21.0083329, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:17:54.970' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (519, 20, 105.8237105, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:18:26.223' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (520, 20, 105.8237045, 21.0083198, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:18:57.497' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (521, 20, 105.8237045, 21.0083198, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:19:33.023' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (522, 20, 105.8237045, 21.0083198, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:20:09.583' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (523, 20, 105.8236015, 21.0083457, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:20:41.573' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (524, 20, 105.8235876, 21.0083204, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:21:12.843' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (525, 20, 105.8235993, 21.0083157, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:21:47.057' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (526, 20, 105.8235685, 21.0083024, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:22:19.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (527, 20, 105.8236115, 21.0083156, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:22:52.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (528, 20, 105.8235766, 21.0082982, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:23:24.367' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (529, 20, 105.8235994, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:23:58.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (530, 20, 105.8236288, 21.0083202, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:24:33.100' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (531, 20, 105.8235786, 21.0083261, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:25:04.340' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (532, 20, 105.8235786, 21.0083261, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:25:39.767' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (533, 20, 105.8235786, 21.0083261, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:26:15.253' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (534, 20, 105.823708, 21.0083284, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:34:21.950' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (535, 20, 105.823707, 21.0083269, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:34:56.633' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (536, 20, 105.8236818, 21.0083232, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:35:30.750' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (537, 20, 105.8236818, 21.0083232, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:36:04.090' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (538, 20, 105.8236818, 21.0083232, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:36:38.993' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (539, 20, 105.8236818, 21.0083232, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:37:14.727' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (540, 20, 105.8236818, 21.0083232, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:47:50.457' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (541, 20, 105.823572, 21.0083754, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:48:23.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (542, 20, 105.8235632, 21.0083447, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:48:56.690' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (543, 20, 105.8235673, 21.0083448, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:49:27.777' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (544, 20, 105.823585, 21.0083625, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:49:59.183' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (545, 20, 105.823585, 21.0083625, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:50:35.860' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (546, 20, 105.823585, 21.0083625, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:51:10.323' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (547, 20, 105.823585, 21.0083625, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:51:45.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (548, 20, 105.8236563, 21.0083333, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:52:20.833' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (549, 20, 105.8236071, 21.0083284, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:52:52.433' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (550, 20, 105.823562, 21.0083021, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:53:27.933' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (551, 20, 105.8237064, 21.0083383, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:53:57.853' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (552, 20, 105.8235529, 21.0083039, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:54:34.077' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (553, 20, 105.8235634, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:55:05.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (554, 20, 105.8235717, 21.008356, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:55:41.100' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (555, 20, 105.8235717, 21.008356, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:56:17.353' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (556, 20, 105.8235678, 21.0083521, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:56:48.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (557, 20, 105.8236937, 21.0083275, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:57:22.043' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (558, 20, 105.8235775, 21.0083398, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:57:58.067' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (559, 20, 105.8235747, 21.0083493, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:58:32.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (560, 20, 105.8235724, 21.008326, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:59:04.557' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (561, 20, 105.8236316, 21.0083137, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T11:59:38.103' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (562, 20, 105.8236742, 21.0083394, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:00:09.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (563, 20, 105.8236983, 21.0083221, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:00:42.143' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (564, 20, 105.823711, 21.0083268, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:01:17.713' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (565, 20, 105.8235974, 21.0083259, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:01:51.340' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (566, 20, 105.8235969, 21.0083268, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:02:26.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (567, 20, 105.8235704, 21.0083209, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:03:01.583' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (568, 20, 105.8235816, 21.0083306, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:03:33.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (569, 20, 105.8236472, 21.0083276, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:04:00.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (570, 20, 105.8236833, 21.0083236, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:04:05.577' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (571, 20, 105.8235902, 21.0083361, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:04:35.790' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (572, 20, 105.8235902, 21.0083361, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:04:40.807' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (573, 20, 105.8235582, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:05:11.530' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (574, 1, 105.8235582, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:05:11.620' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (575, 20, 105.8235582, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:05:16.470' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (576, 20, 105.8235601, 21.0083356, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:05:46.870' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (577, 1, 105.8235601, 21.0083356, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:05:46.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (578, 20, 105.8235529, 21.0083426, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:05:52.433' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (579, 20, 105.8235536, 21.0083419, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:06:21.503' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (580, 1, 105.8235536, 21.0083419, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:06:21.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (581, 20, 105.8235528, 21.0083423, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:06:27.607' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (582, 20, 105.823558, 21.0083417, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:06:56.993' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (583, 1, 105.823558, 21.0083417, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:06:57.000' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (584, 20, 105.823558, 21.0083417, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:06:59.040' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (585, 1, 105.8235575, 21.0083367, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:07:29.907' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (586, 20, 105.8235575, 21.0083367, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:07:29.903' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (587, 1, 105.8235575, 21.0083367, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:07:31.717' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (588, 20, 105.8235575, 21.0083367, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:07:31.740' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (589, 20, 105.8235625, 21.0083425, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:01.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (590, 1, 105.8235625, 21.0083425, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:01.060' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (591, 20, 105.8235953, 21.0083616, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:09.890' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (592, 1, 105.8235953, 21.0083616, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:09.890' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (593, 20, 105.8236224, 21.0083363, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:33.740' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (594, 1, 105.8236224, 21.0083363, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:33.760' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (595, 1, 105.8235644, 21.0083301, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:44.747' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (596, 20, 105.8235644, 21.0083301, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:08:44.753' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (597, 1, 105.8235666, 21.0083196, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:05.567' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (598, 20, 105.8235666, 21.0083196, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:05.567' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (599, 1, 105.8235666, 21.0083196, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:16.883' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (600, 20, 105.8235666, 21.0083196, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:16.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (601, 20, 105.8235717, 21.0083328, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:35.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (602, 20, 105.8235717, 21.0083328, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:40.893' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (603, 1, 105.8235717, 21.0083328, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:40.913' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (604, 1, 105.8235763, 21.0083011, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:48.437' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (605, 20, 105.8235763, 21.0083011, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:09:48.457' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (606, 1, 105.8235595, 21.0083152, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:12.780' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (607, 20, 105.8235595, 21.0083152, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:12.787' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (608, 20, 105.8235595, 21.0083152, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:12.810' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (609, 1, 105.8235621, 21.0083331, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:21.637' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (610, 20, 105.8235621, 21.0083331, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:21.680' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (611, 20, 105.8236078, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:48.417' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (612, 20, 105.8236078, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:48.443' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (613, 1, 105.8236078, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:48.467' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (614, 1, 105.8236078, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:53.457' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (615, 20, 105.8236078, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:10:53.487' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (616, 1, 105.8235522, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:11:26.737' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (617, 20, 105.8235522, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:11:26.767' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (618, 20, 105.8235522, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:11:26.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (619, 20, 105.8235522, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:11:26.853' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (620, 1, 105.8235522, 21.0083277, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:11:26.873' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (621, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:02.547' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (622, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:02.587' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (623, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:02.643' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (624, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:02.673' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (625, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:02.683' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (626, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:35.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (627, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:35.773' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (628, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:35.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (629, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:35.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (630, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:12:35.857' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (631, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:11.570' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (632, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:11.607' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (633, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:11.627' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (634, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:11.657' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (635, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:11.670' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (636, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:47.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (637, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:47.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (638, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:47.283' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (639, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:47.327' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (640, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:13:47.337' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (641, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:19.203' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (642, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:19.207' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (643, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:19.237' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (644, 20, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:19.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (645, 1, 105.8236526, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:19.333' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (646, 1, 105.8235533, 21.0083079, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:55.117' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (647, 20, 105.8235533, 21.0083079, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:55.123' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (648, 1, 105.8235533, 21.0083079, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:55.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (649, 20, 105.8235533, 21.0083079, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:55.217' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (650, 20, 105.8235533, 21.0083079, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:14:55.227' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (651, 1, 105.823555, 21.0083042, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:15:26.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (652, 20, 105.823555, 21.0083042, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:15:26.047' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (653, 20, 105.823555, 21.0083042, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:15:26.060' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (654, 20, 105.823555, 21.0083042, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:15:26.087' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (655, 1, 105.823555, 21.0083042, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:15:26.270' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (656, 20, 105.8235548, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:01.977' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (657, 1, 105.8235548, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:02.000' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (658, 20, 105.8235548, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:02.020' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (659, 20, 105.8235548, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:02.030' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (660, 1, 105.8235548, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:02.057' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (661, 1, 105.823574, 21.0083745, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:33.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (662, 20, 105.823574, 21.0083745, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:33.387' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (663, 20, 105.823574, 21.0083745, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:33.470' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (664, 20, 105.823574, 21.0083745, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:33.480' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (665, 1, 105.823574, 21.0083745, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:16:33.500' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (666, 20, 105.823563, 21.0083377, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:06.700' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (667, 20, 105.823563, 21.0083377, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:06.707' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (668, 1, 105.823563, 21.0083377, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:06.717' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (669, 20, 105.823563, 21.0083377, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:06.717' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (670, 1, 105.823563, 21.0083377, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:06.777' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (671, 1, 105.8235728, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:38.430' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (672, 20, 105.8235728, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:38.483' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (673, 20, 105.8235728, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:38.493' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (674, 20, 105.8235728, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:38.540' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (675, 1, 105.8235728, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:17:38.560' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (676, 1, 105.8235773, 21.0083166, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:11.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (677, 20, 105.8235773, 21.0083166, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:11.420' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (678, 20, 105.8235773, 21.0083166, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:11.593' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (679, 20, 105.8235773, 21.0083166, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:11.617' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (680, 1, 105.8235773, 21.0083166, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:11.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (681, 20, 105.8236041, 21.0083226, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:20.707' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (682, 1, 105.8235687, 21.0083469, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:49.790' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (683, 20, 105.8235687, 21.0083469, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:49.853' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (684, 20, 105.8235687, 21.0083469, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:49.987' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (685, 20, 105.8235687, 21.0083469, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:50.003' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (686, 1, 105.8235687, 21.0083469, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:50.010' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (687, 20, 105.823604, 21.0083392, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:18:58.480' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (688, 20, 105.8236397, 21.0083443, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:21.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (689, 1, 105.8236397, 21.0083443, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:21.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (690, 20, 105.8236397, 21.0083443, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:21.143' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (691, 1, 105.8236397, 21.0083443, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:21.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (692, 20, 105.8236397, 21.0083443, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:21.170' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (693, 20, 105.8236397, 21.0083443, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:31.263' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (694, 1, 105.8235767, 21.0083215, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:55.710' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (695, 1, 105.8235767, 21.0083215, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:55.713' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (696, 20, 105.8235767, 21.0083215, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:55.777' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (697, 20, 105.8235767, 21.0083215, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:55.793' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (698, 20, 105.8235767, 21.0083215, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:19:55.810' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (699, 20, 105.8235728, 21.0083357, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:20:06.010' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (700, 1, 105.8235522, 21.0083463, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:20:35.000' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (701, 20, 105.8235522, 21.0083463, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:20:35.000' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (702, 20, 105.8235522, 21.0083463, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:20:35.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (703, 1, 105.8235522, 21.0083463, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:20:35.377' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (704, 20, 105.8235522, 21.0083463, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:20:35.623' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (705, 20, 105.8235522, 21.0083463, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:20:39.450' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (706, 1, 105.8235478, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:06.977' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (707, 20, 105.8235478, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:07.003' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (708, 20, 105.8235478, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:07.047' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (709, 20, 105.8235478, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:07.060' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (710, 1, 105.8235478, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:07.073' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (711, 20, 105.8235478, 21.0083399, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:12.073' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (712, 20, 105.8235611, 21.0083298, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:42.250' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (713, 1, 105.8235611, 21.0083298, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:42.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (714, 20, 105.8235611, 21.0083298, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:42.263' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (715, 1, 105.8235611, 21.0083298, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:42.317' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (716, 20, 105.8235611, 21.0083298, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:42.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (717, 20, 105.8235611, 21.0083298, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:21:47.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (718, 1, 105.8235823, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:17.093' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (719, 20, 105.8235823, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:17.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (720, 20, 105.8235823, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:17.150' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (721, 20, 105.8235823, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:17.197' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (722, 1, 105.8235823, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:17.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (723, 20, 105.8235731, 21.008336, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:24.080' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (724, 1, 105.8235752, 21.0083408, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:53.460' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (725, 20, 105.8235752, 21.0083408, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:55.383' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (726, 20, 105.8235752, 21.0083408, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:55.400' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (727, 1, 105.8235752, 21.0083408, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:55.430' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (728, 20, 105.8235752, 21.0083408, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:55.573' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (729, 20, 105.8235752, 21.0083408, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:22:56.717' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (730, 1, 105.8235675, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:23:26.600' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (731, 20, 105.8235675, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:23:26.637' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (732, 20, 105.8235675, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:23:26.683' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (733, 20, 105.8235675, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:23:26.710' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (734, 1, 105.8235675, 21.0083249, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:23:26.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (735, 20, 105.8235631, 21.0083275, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:23:36.047' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (736, 1, 105.8236269, 21.0083295, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:06.203' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (737, 20, 105.8236269, 21.0083295, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:06.213' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (738, 20, 105.8236269, 21.0083295, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:06.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (739, 1, 105.8236269, 21.0083295, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:06.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (740, 20, 105.8236269, 21.0083295, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:06.240' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (741, 20, 105.8236269, 21.0083295, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:11.047' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (742, 1, 105.8235607, 21.0083342, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:39.257' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (743, 20, 105.8235607, 21.0083342, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:39.257' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (744, 20, 105.8235607, 21.0083342, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:39.293' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (745, 1, 105.8235607, 21.0083342, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:39.337' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (746, 20, 105.8235607, 21.0083342, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:39.340' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (747, 20, 105.8236188, 21.0083479, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:24:46.227' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (748, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:11.643' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (749, 1, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:11.643' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (750, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:11.653' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (751, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:11.660' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (752, 1, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:11.693' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (753, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:21.603' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (754, 1, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:47.240' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (755, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:47.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (756, 1, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:47.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (757, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:47.277' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (758, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:47.277' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (759, 20, 105.8235679, 21.0083321, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:25:57.190' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (760, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:19.567' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (761, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:19.567' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (762, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:19.577' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (763, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:19.590' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (764, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:19.587' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (765, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:29.413' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (766, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:54.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (767, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:54.857' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (768, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:54.877' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (769, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:54.897' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (770, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:26:54.953' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (771, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:27:05.987' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (772, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:27:32.807' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (773, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:27:32.807' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (774, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:27:32.830' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (775, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:27:32.843' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (776, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:27:32.833' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (777, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:27:40.763' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (778, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:28:37.533' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (779, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:28:37.603' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (780, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:28:37.637' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (781, 20, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:28:37.647' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (782, 1, 105.8235693, 21.0083416, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:28:37.673' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (783, 20, 105.8235747, 21.0083283, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:28:52.093' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (784, 20, 105.8235943, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:12.913' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (785, 20, 105.8235943, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:12.913' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (786, 1, 105.8235943, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:12.923' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (787, 20, 105.8235943, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:12.900' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (788, 1, 105.8235943, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:12.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (789, 20, 105.8235943, 21.0083251, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:25.317' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (790, 1, 105.8235747, 21.0083271, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:46.927' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (791, 20, 105.8235747, 21.0083271, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:46.970' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (792, 20, 105.8235747, 21.0083271, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:46.997' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (793, 20, 105.8235747, 21.0083271, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:47.020' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (794, 1, 105.8235747, 21.0083271, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:29:47.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (795, 20, 105.8235612, 21.0083219, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:01.440' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (796, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:22.767' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (797, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:22.787' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (798, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:22.793' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (799, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:22.790' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (800, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:22.810' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (801, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:32.677' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (802, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:58.107' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (803, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:58.133' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (804, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:58.177' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (805, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:58.207' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (806, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:30:58.217' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (807, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:31:08.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (808, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:31:33.563' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (809, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:31:33.603' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (810, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:31:33.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (811, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:31:33.663' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (812, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:31:33.763' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (813, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:31:43.730' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (814, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:32:09.087' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (815, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:32:09.140' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (816, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:32:09.157' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (817, 20, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:32:09.180' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (818, 1, 105.8235553, 21.0083167, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:32:09.200' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (819, 1, 105.8236667, 21.0083356, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:49:46.350' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (820, 20, 105.8236667, 21.0083356, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:49:46.350' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (821, 20, 105.8236667, 21.0083356, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:49:46.373' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (822, 20, 105.8236667, 21.0083356, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:49:46.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (823, 1, 105.8236667, 21.0083356, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:49:46.437' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (824, 1, 105.8235686, 21.008316, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:18.697' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (825, 20, 105.8235686, 21.008316, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:18.727' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (826, 20, 105.8235686, 21.008316, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:18.777' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (827, 20, 105.8235686, 21.008316, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:18.783' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (828, 1, 105.8235686, 21.008316, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:18.993' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (829, 20, 105.823566, 21.0083214, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:41.130' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (830, 1, 105.8235395, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:55.393' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (831, 20, 105.8235395, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:55.430' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (832, 20, 105.8235395, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:55.483' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (833, 20, 105.8235395, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:55.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (834, 1, 105.8235395, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:50:55.520' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (835, 20, 105.8235934, 21.0083333, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:51:14.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (836, 1, 105.8235934, 21.0083333, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:51:30.143' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (837, 20, 105.8235934, 21.0083333, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:51:30.203' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (838, 20, 105.8235934, 21.0083333, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:51:30.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (839, 20, 105.8235934, 21.0083333, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:51:30.307' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (840, 1, 105.8235934, 21.0083333, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:51:30.430' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (841, 20, 105.8236667, 21.0083271, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:51:49.207' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (842, 1, 105.8235673, 21.0083541, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:02.227' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (843, 20, 105.8235673, 21.0083541, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:02.247' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (844, 20, 105.8235673, 21.0083541, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:02.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (845, 20, 105.8235673, 21.0083541, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:02.330' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (846, 1, 105.8235673, 21.0083541, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:02.350' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (847, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:24.077' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (848, 1, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:33.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (849, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:33.903' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (850, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:33.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (851, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:33.973' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (852, 1, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:34.003' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (853, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:52:59.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (854, 1, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:09.433' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (855, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:09.593' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (856, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:09.597' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (857, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:09.597' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (858, 1, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:09.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (859, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:34.863' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (860, 1, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:45.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (861, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:45.083' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (862, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:45.093' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (863, 20, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:45.130' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (864, 1, 105.823574, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:53:45.163' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (865, 20, 105.823707, 21.0083257, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:08.253' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (866, 1, 105.823707, 21.0083257, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:14.770' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (867, 20, 105.823707, 21.0083257, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:14.780' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (868, 20, 105.823707, 21.0083257, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:14.783' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (869, 1, 105.823707, 21.0083257, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:14.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (870, 20, 105.823707, 21.0083257, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:14.857' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (871, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:51.947' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (872, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:51.947' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (873, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:52.017' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (874, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:52.080' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (875, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:57:52.177' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (876, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:58:30.707' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (877, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:58:30.720' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (878, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:58:30.743' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (879, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:58:30.773' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (880, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:58:30.787' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (881, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:58:53.780' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (882, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:00.550' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (883, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:00.567' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (884, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:01.017' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (885, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:01.017' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (886, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:01.760' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (887, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:27.370' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (888, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:32.480' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (889, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:32.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (890, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:32.540' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (891, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:32.540' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (892, 1, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T12:59:32.577' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (893, 20, 105.8235698, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:00:03.117' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (894, 20, 105.823607, 21.0083359, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:04:48.270' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (895, 1, 105.823607, 21.0083359, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:04:48.277' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (896, 20, 105.823607, 21.0083359, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:04:48.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (897, 20, 105.823607, 21.0083359, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:04:48.290' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (898, 1, 105.823607, 21.0083359, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:04:59.713' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (899, 1, 105.8236633, 21.0083319, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:05:17.337' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (900, 20, 105.8236633, 21.0083319, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:05:17.370' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (901, 20, 105.8236633, 21.0083319, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:05:17.380' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (902, 20, 105.8236633, 21.0083319, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:05:17.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (903, 20, 105.8236633, 21.0083319, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:05:17.440' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (904, 1, 105.8236633, 21.0083319, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:05:17.620' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (905, 1, 105.8235844, 21.0083331, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:05:31.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (906, 1, 105.8235696, 21.0083218, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:02.403' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (907, 1, 105.8235696, 21.0083218, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:22.837' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (908, 20, 105.8235696, 21.0083218, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:22.863' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (909, 20, 105.8235696, 21.0083218, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:22.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (910, 20, 105.8235696, 21.0083218, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:22.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (911, 20, 105.8235696, 21.0083218, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:22.957' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (912, 1, 105.8235696, 21.0083218, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:23.007' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (913, 1, 105.8235754, 21.0083244, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:35.703' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (914, 1, 105.8235682, 21.0083492, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:57.220' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (915, 20, 105.8235682, 21.0083492, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:57.217' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (916, 20, 105.8235682, 21.0083492, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:57.223' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (917, 1, 105.8235682, 21.0083492, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:57.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (918, 20, 105.8235682, 21.0083492, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:57.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (919, 20, 105.8235682, 21.0083492, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:06:57.263' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (920, 1, 105.8236815, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:07:07.840' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (921, 20, 105.8236815, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:07:35.610' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (922, 20, 105.8236815, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:07:35.613' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (923, 20, 105.8236815, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:07:35.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (924, 20, 105.8236815, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:07:35.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (925, 1, 105.8236815, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:07:35.677' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (926, 1, 105.8236201, 21.0083319, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:07:44.020' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (927, 1, 105.8236893, 21.0083312, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:08.480' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (928, 20, 105.8236893, 21.0083312, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:08.480' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (929, 20, 105.8236893, 21.0083312, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:08.487' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (930, 1, 105.8236893, 21.0083312, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:11.383' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (931, 20, 105.8236893, 21.0083312, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:11.417' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (932, 20, 105.8236893, 21.0083312, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:11.437' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (933, 1, 105.8236893, 21.0083312, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:18.593' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (934, 1, 105.8235971, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:44.750' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (935, 20, 105.8235971, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:44.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (936, 20, 105.8235971, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:44.877' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (937, 20, 105.8235971, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:44.900' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (938, 20, 105.8235971, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:45.070' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (939, 1, 105.8235971, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:45.133' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (940, 1, 105.8235971, 21.0083205, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:08:50.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (941, 20, 105.8236304, 21.0083209, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:09:52.053' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (942, 20, 105.8236304, 21.0083209, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:09:52.093' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (943, 20, 105.8236304, 21.0083209, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:09:52.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (944, 1, 105.8236304, 21.0083209, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:09:52.100' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (945, 20, 105.8236304, 21.0083209, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:09:52.117' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (946, 1, 105.8236304, 21.0083209, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:09:52.290' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (947, 1, 105.8236304, 21.0083209, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:09:54.107' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (948, 1, 105.8235779, 21.0083831, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:06.137' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (949, 20, 105.8235779, 21.0083831, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:06.150' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (950, 20, 105.8235779, 21.0083831, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:06.190' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (951, 20, 105.8235779, 21.0083831, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:06.217' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (952, 20, 105.8235779, 21.0083831, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:06.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (953, 1, 105.8235779, 21.0083831, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:06.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (954, 1, 105.8235779, 21.0083831, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:06.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (955, 1, 105.8235885, 21.0083615, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:37.517' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (956, 20, 105.8235885, 21.0083615, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:37.523' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (957, 20, 105.8235885, 21.0083615, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:37.543' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (958, 20, 105.8235885, 21.0083615, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:37.553' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (959, 1, 105.8235885, 21.0083615, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:37.587' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (960, 1, 105.8235885, 21.0083615, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:37.587' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (961, 20, 105.8235885, 21.0083615, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:11:37.610' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (962, 1, 105.8235522, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:12:11.800' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (963, 20, 105.8235522, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:12:12.010' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (964, 20, 105.8235522, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:12:12.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (965, 1, 105.8235522, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:12:12.043' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (966, 20, 105.8235522, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:12:12.053' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (967, 1, 105.8235522, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:12:12.063' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (968, 20, 105.8235522, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:12:12.080' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (969, 1, 105.8235678, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:13:25.700' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (970, 20, 105.8235678, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:13:25.900' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (971, 20, 105.8235678, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:13:25.897' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (972, 20, 105.8235678, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:13:25.917' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (973, 20, 105.8235678, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:13:25.930' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (974, 1, 105.8235678, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:13:25.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (975, 1, 105.8235678, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:13:26.017' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (976, 1, 105.8235845, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:14:30.613' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (977, 20, 105.8235845, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:14:33.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (978, 1, 105.8235845, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:14:33.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (979, 20, 105.8235845, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:14:33.130' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (980, 20, 105.8235845, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:14:33.140' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (981, 20, 105.8235845, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:14:33.157' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (982, 1, 105.8235845, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:14:33.173' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (983, 1, 105.823572, 21.0083391, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:16.707' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (984, 1, 105.8235806, 21.0083632, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:40.947' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (985, 20, 105.8235806, 21.0083632, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:41.003' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (986, 20, 105.8235806, 21.0083632, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:41.017' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (987, 1, 105.8235806, 21.0083632, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:41.020' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (988, 20, 105.8235806, 21.0083632, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:41.033' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (989, 20, 105.8235806, 21.0083632, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:41.057' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (990, 1, 105.8235806, 21.0083632, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:41.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (991, 1, 105.8236056, 21.0083487, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:15:49.840' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (992, 1, 105.8235572, 21.0083191, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:25.520' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (993, 20, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:51.357' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (994, 20, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:51.373' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (995, 1, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:51.393' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (996, 20, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:51.397' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (997, 20, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:51.397' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (998, 1, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:51.417' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (999, 1, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:51.483' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1000, 1, 105.8235767, 21.0083231, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:16:56.250' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1001, 1, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:25.733' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1002, 20, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:25.740' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1003, 20, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:25.767' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1004, 20, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:25.833' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1005, 1, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:25.867' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1006, 20, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:25.880' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1007, 1, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:25.923' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1008, 1, 105.8236071, 21.0083394, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:31.070' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1009, 20, 105.8235832, 21.0083295, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:57.833' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1010, 20, 105.8235832, 21.0083295, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:57.830' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1011, 1, 105.8235832, 21.0083295, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:57.833' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1012, 20, 105.8235832, 21.0083295, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:57.877' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1013, 20, 105.8235832, 21.0083295, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:57.907' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1014, 1, 105.8235832, 21.0083295, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:57.920' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1015, 1, 105.8235832, 21.0083295, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:17:58.137' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1016, 1, 105.8235741, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:21:55.743' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1017, 1, 105.8236928, 21.0083313, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:22:27.527' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1018, 1, 105.8235678, 21.0083518, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:23:03.390' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1019, 1, 105.823647, 21.0083323, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:23:32.313' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1020, 1, 105.8235742, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:24:07.160' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1021, 1, 105.8235742, 21.008345, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:24:42.067' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1022, 1, 105.8237185, 21.0083216, N'236 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:25:17.070' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1023, 1, 105.8237125, 21.0083214, N'236 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:25:49.450' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1024, 1, 105.823707, 21.0083243, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:27:00.007' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1025, 1, 105.823707, 21.0083243, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:27:34.520' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1026, 1, 105.823707, 21.0083243, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:41:12.437' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1027, 1, 105.8237006, 21.0083188, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:41:42.993' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1028, 1, 105.8235974, 21.0083227, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:42:16.347' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1029, 1, 105.8235974, 21.0083227, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:43:27.913' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1030, 1, 105.8235995, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:56:21.460' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1031, 1, 105.8235995, 21.0083269, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:56:57.030' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1032, 1, 105.8237013, 21.0083231, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:57:31.480' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1033, 1, 105.8237013, 21.0083231, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:58:06.947' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1034, 1, 105.8235642, 21.0083252, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:58:41.100' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1035, 1, 105.8235604, 21.0083452, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:59:17.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1036, 1, 105.8237138, 21.0083235, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T13:59:51.773' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1037, 1, 105.8237124, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:00:24.663' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1038, 1, 105.8237124, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:00:56.007' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1039, 1, 105.8237124, 21.0083287, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:01:31.470' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1040, 1, 105.8236157, 21.0083193, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:05:12.737' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1041, 1, 105.8235883, 21.0083407, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:05:43.640' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1042, 1, 105.823717, 21.0083236, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:06:17.703' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1043, 1, 105.8236666, 21.0083197, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:06:52.183' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1044, 1, 105.8235474, 21.0083373, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:07:24.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1045, 1, 105.8237112, 21.0083238, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:08:33.447' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1046, 1, 105.8237099, 21.0083239, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:09:09.187' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1047, 1, 105.8237099, 21.0083239, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:09:43.873' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1048, 1, 105.8237099, 21.0083239, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:10:19.333' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1049, 1, 105.8235654, 21.0083207, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:13:10.313' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1050, 20, 105.8235654, 21.0083207, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:13:10.473' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1051, 1, 105.8235903, 21.0083365, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:13:43.433' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1052, 20, 105.8235903, 21.0083365, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:13:43.433' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1053, 20, 105.8235903, 21.0083365, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:14:15.793' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1054, 1, 105.8235903, 21.0083365, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:14:15.823' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1055, 20, 105.8235677, 21.0083343, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:14:51.753' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1056, 1, 105.8235677, 21.0083343, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:14:51.797' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1057, 20, 105.8235684, 21.0083338, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:15:27.023' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1058, 1, 105.8235684, 21.0083338, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:15:27.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1059, 20, 105.8236692, 21.0083278, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:16:38.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1060, 1, 105.8236692, 21.0083278, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:16:38.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1061, 1, 105.8235681, 21.0083283, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:17:12.753' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1062, 20, 105.8235681, 21.0083283, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:17:15.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1063, 1, 105.8236214, 21.0083196, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:17:47.747' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1064, 1, 105.8237134, 21.008322, N'236 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:18:54.930' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1065, 20, 105.8237134, 21.008322, N'236 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:18:54.930' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1066, 20, 105.8236113, 21.008331, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:19:29.197' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1067, 1, 105.8236113, 21.008331, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:19:29.213' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1068, 1, 105.8236113, 21.008331, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:19:34.457' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1069, 1, 105.8236247, 21.0083255, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:20:05.070' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1070, 20, 105.8236247, 21.0083255, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:20:05.070' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1071, 1, 105.8236247, 21.0083255, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:20:10.080' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1072, 20, 105.8235569, 21.0083346, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:20:36.803' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1073, 1, 105.8235569, 21.0083346, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:20:36.803' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1074, 1, 105.8235569, 21.0083346, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:20:41.830' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1075, 20, 105.8235702, 21.0083426, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:21:11.793' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1076, 1, 105.8235702, 21.0083426, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:21:11.797' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1077, 1, 105.8235702, 21.0083426, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:21:16.727' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1078, 20, 105.8235866, 21.0083336, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:21:43.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1079, 1, 105.8235866, 21.0083336, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:21:43.537' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1080, 1, 105.8235822, 21.0083203, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:21:53.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1081, 20, 105.8235521, 21.0083391, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:22:17.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1082, 1, 105.8235521, 21.0083391, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:22:17.653' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1083, 1, 105.8235521, 21.0083391, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:22:27.710' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1084, 1, 105.8235367, 21.0083282, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:22:52.333' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1085, 20, 105.8235367, 21.0083282, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:22:52.333' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1086, 1, 105.8235795, 21.0083423, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:23:03.417' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1087, 20, 105.8235795, 21.0083423, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:23:23.663' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1088, 1, 105.8235795, 21.0083423, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:23:23.700' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1089, 1, 105.8237061, 21.0083253, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:23:43.397' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1090, 20, 105.8237022, 21.0083268, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:23:58.173' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1091, 1, 105.8237022, 21.0083268, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:23:58.180' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1092, 1, 105.8237022, 21.0083268, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:24:18.717' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1093, 1, 105.8237022, 21.0083268, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:24:54.673' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1094, 20, 105.8237022, 21.0083268, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:25:09.337' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1095, 1, 105.8237022, 21.0083268, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:25:09.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1096, 1, 105.8235825, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:25:29.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1097, 20, 105.8235825, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:25:43.910' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1098, 1, 105.8235825, 21.0083484, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:25:43.933' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1099, 1, 105.8237036, 21.0083283, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:26:01.137' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1100, 20, 105.8237104, 21.0083249, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:26:22.893' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1101, 1, 105.8237104, 21.0083249, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:26:22.927' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1102, 1, 105.8235877, 21.0083199, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:26:34.750' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1103, 20, 105.8235974, 21.0083356, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:26:55.527' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1104, 1, 105.8235974, 21.0083356, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:26:55.603' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1105, 1, 105.8235974, 21.0083356, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:27:09.757' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1106, 20, 105.8236073, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:27:27.207' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1107, 1, 105.8236073, 21.0083427, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:27:27.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1108, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:27:54.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1109, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:28:00.023' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1110, 20, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:28:00.023' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1111, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:28:30.400' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1112, 20, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:28:35.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1113, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:28:35.393' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1114, 20, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:29:08.087' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1115, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:29:08.103' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1116, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:29:08.113' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1117, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:29:43.523' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1118, 20, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:29:43.537' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1119, 1, 105.8236082, 21.0083309, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:29:43.587' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1120, 1, 105.823697, 21.00833, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:33:45.157' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1121, 20, 105.823697, 21.00833, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:33:45.157' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1122, 1, 105.823697, 21.00833, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:33:46.023' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1123, 20, 105.8235425, 21.0083288, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:34:20.680' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1124, 1, 105.8235425, 21.0083288, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:34:20.677' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1125, 1, 105.8235425, 21.0083288, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:34:20.690' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1126, 1, 105.823618, 21.0083322, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:34:56.073' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1127, 20, 105.823618, 21.0083322, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:34:56.073' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1128, 1, 105.823618, 21.0083322, N'Số 224 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:34:56.080' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1129, 1, 105.8236418, 21.0083288, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:35:30.377' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1130, 20, 105.8236418, 21.0083288, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:35:30.380' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1131, 1, 105.8236418, 21.0083288, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:35:30.413' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1132, 1, 105.8235905, 21.0083226, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:36:05.740' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1133, 20, 105.8235905, 21.0083226, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:36:05.743' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1134, 1, 105.8235905, 21.0083226, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:36:05.753' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1135, 1, 105.8236034, 21.0083364, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:36:38.777' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1136, 20, 105.8236034, 21.0083364, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:36:38.783' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1137, 1, 105.8236034, 21.0083364, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:36:38.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1138, 1, 105.823559, 21.0083129, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:37:15.037' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1139, 1, 105.823559, 21.0083129, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:37:15.037' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1140, 20, 105.823559, 21.0083129, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:37:15.037' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1141, 1, 105.8235972, 21.0083252, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:37:49.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1142, 20, 105.8235972, 21.0083252, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:37:49.320' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1143, 1, 105.8235972, 21.0083252, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:37:49.373' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1144, 1, 105.8235974, 21.008341, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:38:23.060' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1145, 20, 105.8235974, 21.008341, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:38:23.120' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1146, 1, 105.8235974, 21.008341, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:38:23.153' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1147, 1, 105.8237135, 21.0083262, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:38:58.300' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1148, 20, 105.8237135, 21.0083262, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:38:58.340' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1149, 1, 105.8237135, 21.0083262, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:38:58.353' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1150, 1, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:39:29.787' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1151, 20, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:39:29.810' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1152, 1, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:39:29.857' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1153, 1, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:40:05.477' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1154, 20, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:40:05.507' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1155, 1, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:40:05.633' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1156, 20, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:40:41.140' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1157, 1, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:40:41.140' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1158, 1, 105.8237147, 21.0083255, N'234 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:40:41.433' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1159, 1, 105.8235651, 21.0083362, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:43:04.503' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1160, 20, 105.8235651, 21.0083362, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:43:04.507' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1161, 1, 105.8235651, 21.0083362, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:43:04.557' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1162, 1, 105.8236714, 21.0083192, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:43:37.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1163, 20, 105.8236714, 21.0083192, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:43:37.203' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1164, 1, 105.8236714, 21.0083192, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:43:37.210' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1165, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:44:13.390' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1166, 20, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:44:13.393' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1167, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:44:13.440' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1168, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:44:48.923' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1169, 20, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:44:48.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1170, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:44:48.960' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1171, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:45:24.477' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1172, 20, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:45:24.503' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1173, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:45:24.530' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1174, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:46:00.060' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1175, 20, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:46:00.067' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1176, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:46:00.110' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1177, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:52:53.203' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1178, 20, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:52:53.227' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1179, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:52:53.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1180, 20, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:53:28.907' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1181, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:53:28.907' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1182, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:53:28.907' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1183, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:54:04.353' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1184, 20, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:54:04.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1185, 1, 105.8236232, 21.0083208, N'198ba Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:54:04.383' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1186, 1, 105.8235664, 21.00836, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:54:39.717' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1187, 20, 105.8235664, 21.00836, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:54:39.767' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1188, 1, 105.8235664, 21.00836, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:54:39.850' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1189, 1, 105.8235622, 21.0083739, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:55:11.553' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1190, 1, 105.8235622, 21.0083739, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:55:11.560' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1191, 20, 105.8235622, 21.0083739, N'238 Tây Sơn, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:55:11.567' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1192, 1, 105.8235953, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:55:47.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1193, 20, 105.8235953, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:55:47.290' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1194, 1, 105.8235953, 21.0083212, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:55:47.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1195, 1, 105.8236001, 21.0083246, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:57:07.750' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1196, 1, 105.8236001, 21.0083246, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:57:07.880' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1197, 20, 105.8236001, 21.0083246, N'09/02, Phố Tây Sơn, Phường Trung Liệt, Quận Hà Đông, Trung Liệt, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-06-28T14:57:07.880' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1198, 1, 105.8157239, 21.0093575, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:18:52.483' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1199, 1, 105.8157588, 21.0093673, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:19:23.217' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1200, 1, 105.8157495, 21.0093861, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:19:54.773' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1201, 1, 105.8157358, 21.0093786, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:20:26.240' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1202, 1, 105.8157891, 21.0094371, N'114 Ngõ Thái Thịnh 1, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:20:58.393' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1203, 1, 105.8158812, 21.0094336, N'114 Ngõ Thái Thịnh 1, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:21:30.390' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1204, 1, 105.8158135, 21.0094042, N'114 Ngõ Thái Thịnh 1, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:22:01.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1205, 1, 105.8157775, 21.0093307, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:22:33.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1206, 1, 105.8157346, 21.0092994, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:23:04.487' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1207, 1, 105.8157408, 21.009307, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:23:36.230' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1208, 1, 105.8157439, 21.0092876, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:24:07.257' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1209, 1, 105.8157487, 21.0093183, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:24:39.390' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1210, 1, 105.815744, 21.0093256, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:25:11.190' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1211, 1, 105.8157096, 21.0093115, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:25:43.303' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1212, 1, 105.815719, 21.0093082, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:26:14.210' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1213, 1, 105.8157967, 21.0093791, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:26:45.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1214, 1, 105.8158196, 21.0093712, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:27:17.123' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1215, 1, 105.8157496, 21.0093626, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:27:48.130' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1216, 1, 105.8157666, 21.0093639, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:28:20.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1217, 1, 105.81572, 21.0093202, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:28:51.830' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1218, 1, 105.8157072, 21.0093095, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:29:23.207' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1219, 1, 105.8157067, 21.009337, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:29:55.200' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1220, 1, 105.8157081, 21.0093429, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:30:26.237' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1221, 1, 105.8157026, 21.0093282, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:30:58.180' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1222, 1, 105.8157812, 21.0093032, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:31:29.273' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1223, 1, 105.8157767, 21.009301, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:31:32.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1224, 1, 105.8156977, 21.0093421, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:33:11.110' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1225, 1, 105.8156825, 21.0093434, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:33:14.373' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1226, 1, 105.815683, 21.0093253, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:34:52.153' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1227, 1, 105.8156855, 21.0093257, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:34:55.730' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1228, 1, 105.8156673, 21.0092424, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:36:33.200' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1229, 1, 105.8156621, 21.0092737, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:36:37.200' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1230, 1, 105.815778, 21.0093824, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:38:14.237' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1231, 1, 105.8157683, 21.0093857, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:38:19.197' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1232, 1, 105.8157027, 21.009338, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:39:56.133' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1233, 1, 105.8157017, 21.0093379, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:40:01.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1234, 1, 105.8156829, 21.0093605, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:41:37.137' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1235, 1, 105.8156774, 21.0093371, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:41:42.253' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1236, 1, 105.8156583, 21.0093507, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:42:41.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1237, 1, 105.8156858, 21.0093481, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:43:18.373' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1238, 1, 105.815685, 21.0093496, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:43:24.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1239, 1, 105.8156736, 21.0093252, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:43:36.763' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1240, 21, 105.8156736, 21.0093252, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:43:36.767' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1241, 1, 105.815681, 21.0093526, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:43:50.160' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1242, 1, 105.8156951, 21.0093441, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:43:56.117' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1243, 1, 105.8156865, 21.0093632, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:44:08.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1244, 21, 105.8156865, 21.0093632, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:44:08.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1245, 1, 105.8156578, 21.0093538, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:44:22.110' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1246, 1, 105.815658, 21.0093498, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:44:27.110' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1247, 1, 105.815681, 21.0093602, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:44:39.117' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1248, 21, 105.815681, 21.0093602, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:44:39.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1249, 1, 105.8156843, 21.0093668, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:44:54.230' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1250, 1, 105.8156927, 21.0093698, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:44:59.200' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1251, 1, 105.8156842, 21.0093689, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:45:10.183' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1252, 21, 105.8156842, 21.0093689, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:45:10.220' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1253, 1, 105.8156562, 21.0094205, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:45:26.477' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1254, 1, 105.8156621, 21.0094129, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:45:31.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1255, 1, 105.8156546, 21.0094161, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:45:41.227' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1256, 21, 105.8156546, 21.0094161, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:45:41.240' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1257, 1, 105.81564, 21.0093354, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:45:58.153' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1258, 1, 105.8156452, 21.0093313, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:46:02.220' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1259, 1, 105.8156658, 21.0093736, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:46:13.160' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1260, 21, 105.8156658, 21.0093736, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:46:13.190' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1261, 1, 105.81565, 21.0093817, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:46:29.160' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1262, 1, 105.8156822, 21.0093667, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:46:34.170' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1263, 1, 105.815683, 21.009342, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:46:45.177' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1264, 21, 105.815683, 21.009342, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:46:45.180' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1265, 1, 105.8156772, 21.0093405, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:47:01.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1266, 1, 105.8156734, 21.0093383, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:47:06.133' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1267, 1, 105.8156985, 21.0093262, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:47:17.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1268, 21, 105.8156985, 21.0093262, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:47:17.183' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1269, 1, 105.815716, 21.0093513, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:47:33.340' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1270, 1, 105.8157005, 21.0093493, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:47:38.140' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1271, 21, 105.8157086, 21.0093581, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:47:49.153' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1272, 1, 105.8157086, 21.0093581, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:47:49.170' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1273, 1, 105.8157128, 21.0093571, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:48:04.237' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1274, 1, 105.8157065, 21.0093541, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:48:09.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1275, 21, 105.8157071, 21.0093468, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:48:20.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1276, 1, 105.8157071, 21.0093468, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:48:20.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1277, 1, 105.8156749, 21.0093475, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:48:28.513' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1278, 1, 105.8156372, 21.0093365, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:49:46.173' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1279, 1, 105.815641, 21.0093389, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:49:51.160' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1280, 1, 105.81565, 21.009354, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:50:02.180' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1281, 21, 105.81565, 21.009354, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:50:02.183' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1282, 1, 105.8156464, 21.009354, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:50:09.713' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1283, 1, 105.8156933, 21.0093296, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:51:27.213' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1284, 1, 105.8156849, 21.0093426, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:51:32.210' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1285, 1, 105.8156527, 21.009351, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:51:43.177' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1286, 21, 105.8156527, 21.009351, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:51:43.187' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1287, 1, 105.8156714, 21.0093498, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:51:51.170' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1288, 1, 105.8156876, 21.009344, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:53:09.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1289, 1, 105.8156955, 21.0093379, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:53:13.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1290, 21, 105.8156735, 21.0093473, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:53:25.280' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1291, 1, 105.8156735, 21.0093473, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:53:25.297' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1292, 1, 105.815651, 21.0093224, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 0, CAST(N'2020-07-05T18:54:50.133' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1293, 1, 105.8156103, 21.0093198, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T18:54:55.440' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1294, 1, 105.8141693, 21.0096354, N'15B/508, Đường Láng, Quận Đống Đa, Láng Hạ, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T19:43:13.883' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1295, 1, 105.8157037, 21.0093035, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T19:44:55.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1296, 1, 105.8156734, 21.0093229, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T19:45:18.457' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1297, 1, 105.8156976, 21.0093527, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T19:46:36.340' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1298, 1, 105.8156639, 21.0093462, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T19:47:00.297' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1299, 1, 105.8157912, 21.0093716, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T19:48:18.297' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1300, 1, 105.8157632, 21.0093587, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-05T19:48:42.223' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1301, 1, 105.8458301, 21.0060108, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:03:39.930' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1302, 21, 105.8458287, 21.0059944, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:04:14.957' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1303, 1, 105.8458365, 21.0059066, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:05:21.507' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1304, 21, 105.8458522, 21.005938, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:05:56.520' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1305, 1, 105.8457973, 21.0058843, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:07:05.790' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1306, 1, 105.8458413, 21.0059263, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:08:43.563' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1307, 21, 105.8458561, 21.0058854, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:09:20.693' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1308, 1, 105.8458339, 21.0059204, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:10:25.537' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1309, 21, 105.845804, 21.0059368, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:11:01.977' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1310, 18, 105.8458277, 21.0059136, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:12:02.823' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1311, 1, 105.84583, 21.0059157, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:12:07.760' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1312, 21, 105.8458391, 21.00592, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:12:42.557' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1313, 18, 105.8458443, 21.0059004, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:13:44.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1314, 1, 105.8458509, 21.0059, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:13:49.560' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1315, 21, 105.84587, 21.0059201, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:14:25.417' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1316, 1, 105.8458186, 21.0058741, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:15:02.800' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1317, 1, 105.8458576, 21.0059422, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:19:41.083' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1318, 18, 105.8458576, 21.0059422, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:20:00.007' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1319, 1, 105.845846, 21.0058891, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:23:28.403' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1320, 21, 105.8458863, 21.0059796, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:23:28.473' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1321, 18, 105.8457786, 21.0059105, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:23:49.547' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1322, 1, 105.8457877, 21.0059381, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:23:54.920' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1323, 21, 105.8457803, 21.0059469, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:24:28.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1324, 1, 105.8458077, 21.0061972, N'75 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:25:21.853' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1325, 18, 105.8458025, 21.0059911, N'B7, Đường Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:28:50.737' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1326, 1, 105.8457982, 21.0060003, N'B7, Đường Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:28:55.530' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1327, 21, 105.8458112, 21.00599, N'B7, Đường Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:29:28.550' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1328, 1, 105.84582, 21.0059098, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:35:24.490' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1329, 1, 105.8458199, 21.0059152, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:35:27.313' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1330, 1, 105.8458241, 21.0058589, N'73 Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:35:59.917' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1331, 1, 105.8456545, 21.0059871, N'B7, Đường Trần Đại Nghĩa, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T02:41:04.493' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1332, 1, 105.8468915, 21.0045625, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:10:32.590' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1333, 1, 105.8468824, 21.004546, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:15:34.077' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1334, 1, 105.8471022, 21.0043641, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:20:36.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1335, 21, 105.8470307, 21.0045193, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:21:52.123' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1336, 1, 105.8468863, 21.0045368, N'21.0045368 / 105.8468863', 0, CAST(N'2020-07-06T03:25:41.910' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1337, 21, 105.8469462, 21.0044716, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:26:51.677' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1338, 1, 105.8467437, 21.004576, N'B1, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:28:59.587' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1339, 1, 105.8468313, 21.004594, N'B1, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:30:37.697' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1340, 21, 105.8469093, 21.0045736, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:31:53.473' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1341, 1, 105.8468104, 21.0045874, N'B1, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:34:00.607' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1342, 1, 105.8468875, 21.004561, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:35:39.520' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1343, 21, 105.846808, 21.0045496, N'B1, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:36:54.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1344, 1, 105.8469176, 21.0044527, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:39:06.130' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1345, 1, 105.8468014, 21.0045883, N'B1, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:40:40.993' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1346, 21, 105.8468765, 21.0045057, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:41:55.303' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1347, 1, 105.8468053, 21.0045392, N'B1, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:44:07.700' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1348, 1, 105.8469074, 21.0045776, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:45:42.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1349, 21, 105.8468754, 21.0045625, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:46:57.320' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1350, 21, 105.8469375, 21.0045065, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:48:46.840' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1351, 1, 105.8468948, 21.0045215, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:49:12.327' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1352, 1, 105.8468946, 21.0045215, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:50:43.680' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1353, 21, 105.8468946, 21.0045215, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:51:58.870' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1354, 21, 105.8468823, 21.0045332, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:53:48.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1355, 1, 105.8468803, 21.004533, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:54:11.777' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1356, 1, 105.8468803, 21.004533, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:55:45.367' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1357, 21, 105.8468848, 21.0045303, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:57:00.533' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1358, 21, 105.8468949, 21.0045094, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:58:50.400' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1359, 1, 105.8469178, 21.0044836, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T03:59:13.287' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1360, 1, 105.8469716, 21.0044552, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:00:49.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1361, 21, 105.8468896, 21.0045333, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:02:01.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1362, 21, 105.8469024, 21.0044602, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:03:51.347' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1363, 1, 105.8468511, 21.004497, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:04:15.543' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1364, 1, 105.8468462, 21.0045129, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:05:50.267' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1365, 21, 105.8468716, 21.0044854, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:07:03.880' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1366, 21, 105.8469168, 21.0045185, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:08:53.353' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1367, 1, 105.8468833, 21.004522, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:10:52.597' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1368, 21, 105.8468686, 21.004494, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:12:04.550' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1369, 21, 105.8468902, 21.0045086, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:13:55.283' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1370, 1, 105.8469063, 21.0045256, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:14:18.310' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1371, 1, 105.8467103, 21.0044553, N'21.0044553 / 105.8467103', 0, CAST(N'2020-07-06T04:16:01.987' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1372, 21, 105.8469332, 21.004519, N'23, Tạ Quang Bửu, Quận Hai Bà Trưng, Bách Khoa, Hai Bà Trưng, Hà Nội, Việt Nam', 0, CAST(N'2020-07-06T04:17:07.900' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1373, 21, 105.8156787, 21.0093579, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:49:44.737' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1374, 21, 105.8156939, 21.0093586, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:49:50.500' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1375, 21, 105.815695, 21.009359, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:49:57.037' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1376, 21, 105.8157008, 21.0093467, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:50:04.000' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1377, 21, 105.8157134, 21.0093765, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:50:10.787' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1378, 21, 105.8157165, 21.0093801, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:50:17.103' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1379, 21, 105.8157116, 21.0093482, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.093' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1380, 21, 105.8156937, 21.0093524, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.307' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1381, 21, 105.8156805, 21.0093583, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.570' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1382, 21, 105.8156696, 21.0093622, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.573' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1383, 21, 105.8156695, 21.0093622, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.633' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1384, 21, 105.8157277, 21.0093574, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.650' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1385, 21, 105.8156695, 21.0093622, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.673' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1386, 21, 105.8157371, 21.0093773, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:57.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1387, 21, 105.815736, 21.0093768, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:45.700' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1388, 21, 105.8156704, 21.0093771, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:58.317' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1389, 21, 105.8157111, 21.0093486, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:57.120' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1390, 21, 105.8156917, 21.0093725, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:58.457' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1391, 21, 105.8156975, 21.009371, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:58.543' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1392, 21, 105.8156792, 21.0093773, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:58.627' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1393, 21, 105.8156918, 21.0093725, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:51:58.927' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1394, 21, 105.8156696, 21.0093469, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:05.170' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1395, 21, 105.8156886, 21.0093796, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:12.900' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1396, 21, 105.8157001, 21.009383, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:18.160' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1397, 21, 105.8157024, 21.0093826, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:25.303' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1398, 21, 105.8157045, 21.0093591, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:31.900' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1399, 21, 105.8156952, 21.009352, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:39.227' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1400, 21, 105.8156834, 21.0093656, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:46.113' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1401, 21, 105.8156756, 21.0093688, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:52.957' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1402, 21, 105.8156793, 21.0093817, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:52:59.210' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1403, 21, 105.8156786, 21.0093817, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:53:05.350' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1404, 21, 105.8156756, 21.0093753, N'25, Thai Thinh 1 Alley, Dong Da District, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:53:12.453' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1405, 21, 105.8157175, 21.0093792, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1406, 21, 105.8157175, 21.0093843, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1407, 21, 105.8157214, 21.009368, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1408, 21, 105.8157194, 21.0093884, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1409, 21, 105.8157214, 21.009368, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1410, 21, 105.8157177, 21.0093843, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1411, 21, 105.8156953, 21.0093726, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1412, 21, 105.8157213, 21.0093678, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.177' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1413, 21, 105.8156958, 21.0093734, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.127' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1414, 21, 105.8156971, 21.0093721, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:26.137' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1415, 21, 105.8156995, 21.0093758, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:29.343' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1416, 21, 105.8157124, 21.0093668, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:31.800' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1417, 21, 105.8157219, 21.0093588, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:35.827' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1418, 21, 105.8157284, 21.0093523, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:37.967' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1419, 21, 105.8157171, 21.0093384, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:43.410' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1420, 21, 105.8157113, 21.0093368, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:44.883' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1421, 21, 105.8157101, 21.0093362, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:49.840' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1422, 21, 105.81571, 21.0093362, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:51.030' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1423, 21, 105.81571, 21.0093362, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:57.277' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1424, 21, 105.81571, 21.0093362, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:58:58.770' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1425, 21, 105.8156888, 21.0093545, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:03.403' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1426, 21, 105.8156896, 21.0093545, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:04.073' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1427, 21, 105.8156899, 21.0093535, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:09.467' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1428, 21, 105.8156899, 21.0093483, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:11.143' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1429, 21, 105.8156934, 21.0093472, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:15.890' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1430, 21, 105.8156935, 21.0093472, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:18.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1431, 21, 105.8156935, 21.0093472, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:22.380' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1432, 21, 105.8156935, 21.0093472, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:24.933' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1433, 21, 105.8156935, 21.0093472, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:28.467' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1434, 21, 105.8156935, 21.0093472, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:30.840' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1435, 21, 105.8156935, 21.0093472, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:34.660' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1436, 21, 105.8157017, 21.0093443, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:37.107' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1437, 21, 105.8157156, 21.0093453, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:41.310' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1438, 21, 105.8157153, 21.0093449, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:43.337' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1439, 21, 105.8157177, 21.0093661, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:47.860' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1440, 21, 105.8157179, 21.0093678, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:49.470' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1441, 21, 105.815718, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:53.943' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1442, 21, 105.815718, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T13:59:55.970' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1443, 21, 105.815718, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:01.187' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1444, 21, 105.815718, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:03.143' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1445, 21, 105.815718, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:07.330' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1446, 21, 105.815718, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:09.880' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1447, 21, 105.8156996, 21.0093667, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:13.963' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1448, 21, 105.8156986, 21.0093666, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:15.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1449, 21, 105.8156893, 21.0093728, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:21.060' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1450, 21, 105.8156886, 21.0093728, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:23.003' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1451, 21, 105.8156883, 21.0093728, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:27.870' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1452, 21, 105.8156883, 21.0093728, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:28.880' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1453, 21, 105.8156883, 21.0093728, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:34.400' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1454, 21, 105.8156883, 21.0093728, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:35.920' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1455, 21, 105.8156973, 21.0093623, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:41.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1456, 21, 105.8156981, 21.0093627, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:43.123' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1457, 21, 105.8156984, 21.0093628, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:47.870' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1458, 21, 105.8156984, 21.0093628, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:49.713' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1459, 21, 105.8156892, 21.0093619, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:54.337' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1460, 21, 105.8156888, 21.0093633, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:00:55.867' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1461, 21, 105.8156887, 21.0093635, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:00.883' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1462, 21, 105.8156859, 21.0093666, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:02.753' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1463, 21, 105.8156849, 21.0093677, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:07.027' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1464, 21, 105.8156853, 21.0093677, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:10.097' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1465, 21, 105.8156933, 21.009366, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:13.857' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1466, 21, 105.8156931, 21.0093661, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:16.353' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1467, 21, 105.8156938, 21.0093657, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:20.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1468, 21, 105.8156928, 21.0093646, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:22.893' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1469, 21, 105.8156924, 21.0093649, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:27.040' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1470, 21, 105.8156924, 21.0093649, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:29.147' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1471, 21, 105.8156953, 21.0093579, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:33.220' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1472, 21, 105.8156946, 21.0093486, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:36.190' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1473, 21, 105.8156947, 21.0093481, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:40.303' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1474, 21, 105.8156975, 21.0093428, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:41.803' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1475, 21, 105.8156973, 21.0093432, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:45.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1476, 21, 105.8156933, 21.0093458, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:47.813' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1477, 21, 105.8156881, 21.009348, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:52.843' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1478, 21, 105.8156892, 21.0093574, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:54.213' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1479, 21, 105.8156897, 21.009365, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:01:58.867' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1480, 21, 105.8156897, 21.0093648, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:01.400' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1481, 21, 105.8156897, 21.0093648, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:05.493' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1482, 21, 105.8156897, 21.0093648, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:06.917' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1483, 21, 105.815709, 21.0093667, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:12.143' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1484, 21, 105.81571, 21.0093679, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:13.860' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1485, 21, 105.8157169, 21.0093787, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:18.090' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1486, 21, 105.8157219, 21.0093783, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:20.460' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1487, 21, 105.8157253, 21.0093781, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:24.243' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1488, 21, 105.8157256, 21.0093781, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:26.860' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1489, 21, 105.8157365, 21.0093794, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:31.007' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1490, 21, 105.8157372, 21.0093751, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:32.940' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1491, 21, 105.815739, 21.0093745, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:37.087' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1492, 21, 105.8157381, 21.0093694, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:40.107' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1493, 21, 105.8157373, 21.009367, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:44.700' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1494, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:47.387' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1495, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:50.960' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1496, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:52.900' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1497, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:02:57.000' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1498, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:00.113' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1499, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:04.233' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1500, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:07.383' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1501, 21, 105.8157372, 21.0093671, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:09.917' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1502, 21, 105.8157079, 21.0093648, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:13.870' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1503, 21, 105.8156965, 21.009365, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:16.993' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1504, 21, 105.8156999, 21.0093644, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:19.920' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1505, 21, 105.8157089, 21.0093706, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:23.230' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1506, 21, 105.8157119, 21.0093689, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:26.707' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1507, 21, 105.8157042, 21.0093672, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:29.793' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1508, 21, 105.8156976, 21.0093622, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:32.807' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1509, 21, 105.8157211, 21.0093627, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:36.307' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1510, 21, 105.8156802, 21.0093531, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:40.363' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1511, 21, 105.8156762, 21.009349, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:42.870' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1512, 21, 105.8156752, 21.0093499, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:46.783' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1513, 21, 105.8156752, 21.0093504, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:49.033' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1514, 21, 105.8156742, 21.0093515, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:53.237' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1515, 21, 105.8156731, 21.0093521, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:55.260' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1516, 21, 105.8156839, 21.00936, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:03:59.873' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1517, 21, 105.815689, 21.0093602, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:01.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1518, 21, 105.8157177, 21.0093695, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:06.763' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1519, 21, 105.8157132, 21.0093706, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:09.093' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1520, 21, 105.8157131, 21.0093738, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:13.200' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1521, 21, 105.8157171, 21.009377, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:14.790' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1522, 21, 105.8157158, 21.0093775, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:18.790' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1523, 21, 105.8157157, 21.0093775, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:21.380' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1524, 21, 105.8156954, 21.0093659, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:25.777' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1525, 21, 105.8156871, 21.0093587, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:26.787' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1526, 21, 105.8156859, 21.0093529, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:31.817' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1527, 21, 105.8156879, 21.0093556, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:33.163' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1528, 21, 105.8157189, 21.0093692, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:38.827' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1529, 21, 105.8157189, 21.0093692, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:38.827' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1530, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:45.970' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1531, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:45.973' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1532, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:51.827' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1533, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:51.827' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1534, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:59.290' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1535, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:04:59.290' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1536, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:04.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1537, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:07.070' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1538, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:10.867' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1539, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:10.873' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1540, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:17.297' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1541, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:17.297' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1542, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:23.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1543, 21, 105.8157271, 21.0093611, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:23.857' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1544, 21, 105.8157416, 21.0093452, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:31.040' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1545, 21, 105.8157416, 21.0093452, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:31.040' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1546, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:36.930' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1547, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:36.980' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1548, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:43.837' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1549, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:43.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1550, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:49.990' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1551, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:49.990' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1552, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:55.887' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1553, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:05:55.890' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1554, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:03.180' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1555, 21, 105.8157417, 21.0093454, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:03.180' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1556, 21, 105.8157137, 21.0093426, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:10.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1557, 21, 105.8157137, 21.0093426, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:10.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1558, 21, 105.8157117, 21.0093433, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:16.883' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1559, 21, 105.8157117, 21.0093433, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:16.897' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1560, 21, 105.8157117, 21.0093433, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:23.863' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1561, 21, 105.8157117, 21.0093433, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:23.930' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1562, 21, 105.8157101, 21.0093483, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:31.327' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1563, 21, 105.8157101, 21.0093483, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:31.330' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1564, 21, 105.8157031, 21.0093545, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:36.853' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1565, 21, 105.8157031, 21.0093545, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:36.867' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1566, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:42.937' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1567, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:42.943' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1568, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:50.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1569, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:50.167' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1570, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:56.920' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1571, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:06:56.930' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1572, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:07:03.833' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1573, 21, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:07:03.837' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1574, 1, 105.815703, 21.0093544, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:07:10.413' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1575, 21, 105.8157211, 21.0093865, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:12:04.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1576, 21, 105.8157211, 21.0093865, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:12:04.847' AS DateTime))
GO
INSERT [dbo].[PositionHistoryDetail] ([Id], [TimeOutId], [Lng], [Lat], [Address], [IsWarning], [VerifyDate]) VALUES (1577, 1, 105.8157211, 21.0093865, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', 1, CAST(N'2020-07-08T14:12:11.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PositionHistoryDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[PositionWarning] ON 
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (289, N'W-1', N'2020-12-06 00:00:00.000', N'Điểm cảnh báo có dịch bệnh', 108.123456, 16.123456, N'Điện máy xanh...', NULL, 600, 1000, 0, 1, N'0336644881', CAST(N'2020-06-28T09:45:46.700' AS DateTime), CAST(N'2020-06-28T09:55:58.943' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (290, N'BN-22', N'08/03/2020', N'Từ 18h49p ngày 4/3/2020 đến 19h ngày 4/3/2020: Mua sim điện thoại', 108.222513, 16.060648, N'Điện Máy Xanh, phường Bình Hiên, Quận Hải Châu, Thành phố Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.623' AS DateTime), CAST(N'2020-06-28T12:05:17.623' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (291, N'BN-23', N'08/03/2020', N'Từ 18h49p ngày 4/3/2020 đến 19h ngày 4/3/2020: Mua sim điện thoại', 108.223513, 16.060648, N'Điện Máy Xanh, Phường Bình Hiên, Quận Hải Châu, Thành phố Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.630' AS DateTime), CAST(N'2020-06-28T12:05:17.630' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (292, N'BN-21', N'02/03/2020', N'Từ 2h30p ngày 2/3/2020 đến 3h15p ngày 2/3/2020: di chuyển từ sân bay về nhà riêng', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.633' AS DateTime), CAST(N'2020-06-28T12:05:17.633' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (293, N'BN-21', N'03/03/2020', N'Từ 12h15p ngày 4/3/2020 đến 14h ngày 4/3/2020: Đi họp', 105.811726, 21.030931, N'Khách sạn Daewoo, 360 Kim Mã', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.637' AS DateTime), CAST(N'2020-06-28T12:05:17.637' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (294, N'BN-23', N'02/03/2020', N'Từ 5h20p ngày 2/3/2020 đến 5h40p ngày 2/3/2020: Hạ cánh ở sân bay Nội Bài', 105.804127, 21.218809, N'Sân bay Quốc tế Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.637' AS DateTime), CAST(N'2020-06-28T12:05:17.637' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (295, N'BN-20', N'03/03/2020', N'Từ 9h ngày 5/3/2020 đến 10h ngày 5/3/2020: Mua thuốc cho cháu (NB17)', 105.84213, 21.043622, N' Tiệm thuốc ở phố Châu Long, 59 Châu Long, Quán Thánh, Ba Đình, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.813' AS DateTime), CAST(N'2020-06-28T12:05:17.813' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (296, N'BN-20', N'05/03/2020', N'Từ 15h ngày 5/3/2020 đến 22h ngày 5/3/2020: Đưa cháu gái (NB17) đi khám chữa bệnh', 105.844066, 21.04252, N'Bệnh viện Đa khoa quốc tế Hồng Ngọc, 55 Yên Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.817' AS DateTime), CAST(N'2020-06-28T12:05:17.817' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (297, N'BN-21', N'06/03/2020', N'Từ 12h ngày 6/3/2020 đến 13h30p ngày 6/3/2020: ăn trưa cùng đồng nghiệp', 105.845183, 21.041861, N'Quán ăn số 3 Hàng Bún', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.823' AS DateTime), CAST(N'2020-06-28T12:05:17.823' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (298, N'BN-23', N'04/03/2020', N'Hạ cánh sân bay Đà Nẵng trên chuyến bay VN183', 108.199907, 16.055922, N'Sân bay Quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.830' AS DateTime), CAST(N'2020-06-28T12:05:17.830' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (299, N'BN-17', N'05/03/2020', N'Từ 14h ngày 05/03/2020 đến 15h ngày 05/03/2020: Đi khám bệnh', 105.844116, 21.042473, N'Bệnh viện Đa khoa quốc tế Hồng Ngọc, 55 Yên Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:17.833' AS DateTime), CAST(N'2020-06-28T12:05:17.833' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (300, N'BN-19', N'06/03/2020', N'không có', 105.84213, 21.043622, N'Tiệm thuốc ở phố Châu Long', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.037' AS DateTime), CAST(N'2020-06-28T12:05:18.037' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (301, N'BN-22', N'01/03/2020', N'Từ 11h10p ngày 1/3/2020 đến 11h30p ngày 1/3/2020: Tới sân bay Nội Bài', 105.804126, 21.218809, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.040' AS DateTime), CAST(N'2020-06-28T12:05:18.040' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (302, N'BN-22', N'04/03/2020', N'Từ 10h20p ngày 04/03/2020 đến 10h40p ngày 04/03/2020: Tới sân bay quốc tế Đà Nẵng', 108.199907, 16.055922, N'Sân bay quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.047' AS DateTime), CAST(N'2020-06-28T12:05:18.047' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (303, N'BN-24', N'02/03/2020', N'không có', 105.804128, 21.21881, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.053' AS DateTime), CAST(N'2020-06-28T12:05:18.053' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (304, N'BN-24', N'04/03/2020', N'Từ 9h ngày 5/3/2020 đến 22h ngày 5/3/2020: Đi du lịch Ninh Bình', 105.937606, 20.216611, N'Đi du lịch Ninh Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.057' AS DateTime), CAST(N'2020-06-28T12:05:18.057' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (305, N'BN-24', N'06/03/2020', N'Từ 6/3/2020 đến 8/3/2020: Đi du lịch Hạ Long, Quảng Ninh', 107.026398, 20.947777, N'Đi du lịch Hạ Long, Quảng Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.200' AS DateTime), CAST(N'2020-06-28T12:05:18.200' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (306, N'BN-25', N'02/03/2020', N'Từ 5h20p ngày 2/3/2020 đến 5h40p ngàu 2/3/2020: Ở sân bay Nội Bài', 105.804128, 21.21881, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.203' AS DateTime), CAST(N'2020-06-28T12:05:18.203' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (307, N'BN-26', N'02/03/2020', N'Từ 5h20p ngày 1/3/2020 đến 5h40p ngày 2/3/2020: Ở sân bay Nội Bài', 105.804415, 21.218441, N'Sân bay quốc tế Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.207' AS DateTime), CAST(N'2020-06-28T12:05:18.207' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (308, N'BN-25', N'02/03/2020', N'Ở Hà Nội từ 2/3/2020 5h20'' đến 4/3/2020 23h59'' đi tham quan du lịch', 105.851085, 21.030385, N'Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.210' AS DateTime), CAST(N'2020-06-28T12:05:18.210' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (309, N'BN-26', N'05/03/2020', N'5/3/2020 di chuyển về Hạ Long - tàu du lịch QN 5228 ngày 5-7/3/2020 - 8/3 trở về đất liên và đưa đi cách ly', 107.058736, 20.953138, N'Hạ Long, Quảng Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.210' AS DateTime), CAST(N'2020-06-28T12:05:18.210' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (310, N'BN-27', N'2020', N'1/từ 3/2020 11:10:00 đến 2/3/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.804546, 21.218145, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.380' AS DateTime), CAST(N'2020-06-28T12:05:18.380' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (311, N'BN-25', N'05/03/2020', N'5/3/2020 di chuyển về Hạ Long - tàu du lịch QN 5228 ngày 5-7/3/2020 - 8/3 trở về đất liên và đưa đi cách ly', 107.028542, 20.94817, N'Hạ Long, Quảng Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.383' AS DateTime), CAST(N'2020-06-28T12:05:18.383' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (312, N'BN-27', N'2020', N'Từ 2/3/2020 5:20:00 đến 2/3/2020 9:30:00 di chuyển Sân bay quốc tế Nội Bài, Hà Nội Xe taxi 14A.20033 đến Khách sạn Wyndham Hạ Long', 107.060272, 20.959441, N'Khách sạn Wyndham Hạ Long', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.387' AS DateTime), CAST(N'2020-06-28T12:05:18.387' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (313, N'BN-28', N'02/03/2020', N'Đi từ London Heathrow Airport 1/3/2020 11h10'' đến Sân bay Quốc tế Nội Bài 2/3/2020 05h20''', 105.804415, 21.218441, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.387' AS DateTime), CAST(N'2020-06-28T12:05:18.387' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (314, N'BN-29', N'2020', N'từ 1/3/2020 11:10:00 đến 2/3/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.802465, 21.218745, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.390' AS DateTime), CAST(N'2020-06-28T12:05:18.390' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (315, N'BN-28', N'02/03/2020', N'Từ 2/3/2020 lúc 5h20'' đến 4/3/2020 lúc 22h đi tham quan du lịch ở Hà Nội', 105.853388, 21.034231, N'Khách sạn La Siesta, 94 Mã Mây, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.613' AS DateTime), CAST(N'2020-06-28T12:05:18.613' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (316, N'BN-29', N'02/03/2020', N'từ 2/3/2020 5:20:00 đến 4/3/2020 22:00:00 nghỉ tại khách sạn La Siesta, 94 Mã Mây, Hoàn Kiếm, Hà Nội', 105.853264, 21.034204, N'khách sạn La Siesta, 94 Mã Mây, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.617' AS DateTime), CAST(N'2020-06-28T12:05:18.617' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (317, N'BN-28', N'04/03/2020', N'Đi từ khách sạn La Siesta, 94 Mã Mây, Hoàn Kiếm, Hà Nội đến Ga Hà Nội (22h) để đi Lào Cai', 105.841424, 21.024957, N'Ga Hà Nội, Lê Duẩn, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.620' AS DateTime), CAST(N'2020-06-28T12:05:18.620' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (318, N'BN-28, BN-29', N'05/03/2020', N'Đi tàu hỏa từ Ga Hà Nội ngày 4/3/2020 lúc 22h đến Ga Lào Cai ngày 5/3/2020 lúc 6h20''', 103.978129, 22.492118, N'Ga Lào Cai', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.620' AS DateTime), CAST(N'2020-06-28T12:05:18.620' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (319, N'BN-30', N'02/03/2020', N'từ 1/3/2020 11:10:00 đến 2/3/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.801896, 21.219615, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.623' AS DateTime), CAST(N'2020-06-28T12:05:18.623' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (320, N'BN-28, BN-29', N'05/03/2020', N'Đi từ ga Hà Nội lúc 6h20'' nghỉ tại Khách sạn Mường Thanh Lào Cai lúc 7h20', 103.965606, 22.502586, N'Khách sạn Mường Thanh Lào Cai', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.797' AS DateTime), CAST(N'2020-06-28T12:05:18.797' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (321, N'BN-30', N'02/03/2020', N'từ 1/3/2020 11:10:00 đến 2/3/2020 5:20:00 di chuyển Sân bay quốc tế Nội Bài, Hà Nội - VN1547 Sân bay Phú Bài - Huế', 107.700991, 16.397814, N'Sân bay Phú Bài - Huế', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.800' AS DateTime), CAST(N'2020-06-28T12:05:18.800' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (322, N'BN-31', N'02/03/2020', N'Từ 5h20p ngày 2/3/2020 đến 5h40p ngày 2/3/2020: Đến sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.803' AS DateTime), CAST(N'2020-06-28T12:05:18.803' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (323, N'BN-28, BN-29', N'05/03/2020', N'Đi từ Khách sạn Mường Thanh Lào Cai đến văn phòng công ty Phú Thịnh trong ngày 5/3/2020', 103.981638, 22.470682, N'Văn phòng Công ty Phú Thịnh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.810' AS DateTime), CAST(N'2020-06-28T12:05:18.810' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (324, N'BN-31', N'04/03/2020', N'Từ 2/3/2020 đến 4/3/2020: đi chơi Hà Nội', 105.851334, 21.029122, N'Đi chơi Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:18.813' AS DateTime), CAST(N'2020-06-28T12:05:18.813' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (325, N'BN-33', N'02/03/2020', N'từ 1/3/2020 11:10:00 đến 2/3/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.805458, 21.218065, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.013' AS DateTime), CAST(N'2020-06-28T12:05:19.013' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (326, N'BN-28, BN-29', N'05/03/2020', N'Đi từ Lào Cai (20h) đến Khách sạn Topas Ecolodge Sapa (21h) ngày 5/3/2020 Ở Khách sạn Topas Ecolodge Sapa từ 21h ngày 5/3/2020 đến 15h ngày 7/3/2020', 103.967045, 22.276246, N'Khách sạn Topas Ecolodge Sapa', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.020' AS DateTime), CAST(N'2020-06-28T12:05:19.020' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (327, N'BN-31', N'05/03/2020', N'Từ 04/03/2020 đến 05/03/2020: đi chơi Hạ Long', 107.052112, 20.953955, N'Đi du lịch Hạ Long', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.027' AS DateTime), CAST(N'2020-06-28T12:05:19.027' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (328, N'BN-35', N'04/03/2020', N'từ 4/3/2020 18:49:00 đến 4/3/2020 19:00:00 làm việc tại Điện Máy Xanh, 7 Nguyễn Văn Linh, Đà Nẵng', 108.216094, 16.060457, N'Điện Máy Xanh, 7 Nguyễn Văn Linh, Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.033' AS DateTime), CAST(N'2020-06-28T12:05:19.033' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (329, N'BN-34', N'02/03/2020', N'Đi từ Sân bay Quốc tế Doha, Qatar ngày 1/3/2020 18h45 đến Sân bay Quốc tế Tân Sơn Nhất ngày 2/3/2020 lúc 6h qua chuyến bay QR 974', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.040' AS DateTime), CAST(N'2020-06-28T12:05:19.040' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (330, N'BN-31', N'05/03/2020', N'Từ 19h20p ngày 5/3/2020 đến 19h40p ngày 5/3/2020: Đến sân bay Quốc tế Đà Nẵng', 108.201181, 16.057299, N'Sân bay quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.310' AS DateTime), CAST(N'2020-06-28T12:05:19.310' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (331, N'BN-35', N'07/03/2020', N'từ 3/7/2020 18:30:00 đến 3/7/2020 19:30:00 đến Siêu thị Danavi, Đà Nẵng', 108.220958, 16.070602, N'Siêu thị Danavi, Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.320' AS DateTime), CAST(N'2020-06-28T12:05:19.320' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (332, N'BN-39', N'04/03/2020', N'Đi từ Hà Nội 7h sáng 4/3/2020 đến Ninh Bình đưa hành khách đi du lịch bằng ô tô cùng BN-24, quay lại Hà Nội 19h tối 4/3/2020', 105.937606, 20.216611, N'Đưa hành khách đi tour Ninh Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.327' AS DateTime), CAST(N'2020-06-28T12:05:19.327' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (333, N'BN-31', N'05/03/2020', N'từ ngày 05/03/2020 đến 07/03/2020: Đi chơi Hội An', 108.317649, 15.928861, N'Đi chơi Hội An', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.330' AS DateTime), CAST(N'2020-06-28T12:05:19.330' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (334, N'BN-35', N'09/03/2020', N'từ 3/9/2020 16:30:00 đến 3/9/2020 17:00:00 đi Vinmart 408 Hoàng Diệu', 108.22207, 16.066464, N'Vinmart 408 Hoàng Diệu', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.337' AS DateTime), CAST(N'2020-06-28T12:05:19.337' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (335, N'BN-39', N'06/03/2020', N'Đưa hành khách đi tour du lịch xung quanh Hà Nội', 105.851085, 21.030385, N'Đưa hành khách đi du lịch Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.490' AS DateTime), CAST(N'2020-06-28T12:05:19.490' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (336, N'BN-49', N'02/03/2020', N'từ 1/3/2020 11:10:00 đến 2/3/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.801306, 21.220435, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.507' AS DateTime), CAST(N'2020-06-28T12:05:19.507' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (337, N'BN-49', N'06/03/2020', N'Từ 6/3/2020 16:05:00 đến 6/3/2020 17:20:00	1.25	di chuyển Sân bay quốc tế Nội Bài, Hà Nội VN1547 đến Huế"', 107.699762, 16.397845, N'Sân bay Phú Bài - Huế', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.510' AS DateTime), CAST(N'2020-06-28T12:05:19.510' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (338, N'BN-46', N'09/03/2020', N'Từ 5h20p ngày 3/9/2020 đến 5h40p ngày 3/9/2020: Tới Sân bay Nội Bài', 105.802465, 21.218745, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:19.513' AS DateTime), CAST(N'2020-06-28T12:05:19.513' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (339, N'BN-50', N'09/03/2020', N'từ 3/8/2020 11:00:00 đến 3/9/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.802969, 21.219435, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.153' AS DateTime), CAST(N'2020-06-28T12:05:20.153' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (340, N'BN-46', N'11/03/2020', N'Từ 9h ngày 3/11/2020 đến 11h ngày 3/11/2020: Khám tại Trung tâm Y tế Hàng không', 105.87895, 21.039573, N'Trung tâm Y tế Hàng không', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.153' AS DateTime), CAST(N'2020-06-28T12:05:20.153' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (341, N'BN-50', N'09/03/2020', N'từ 3/9/2020 5:20:00 đến 3/9/2020 8:20:00 từ Sân bay quốc tế Nội Bài, Hà Nội bằng Xe taxi về phố Hồng Long, Tổ 2, Khu 4B, phường Hồng Hải, Hạ Long', 107.101121, 20.953809, N'Phố Hồng Long, Tổ 2, Khu 4B, phường Hồng Hải, Hạ Long', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.157' AS DateTime), CAST(N'2020-06-28T12:05:20.157' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (342, N'BN-51', N'10/03/2020', N'Từ 6h10p ngày 3/10/2020 đến 6h30p ngày 3/10/2020: Tới sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.160' AS DateTime), CAST(N'2020-06-28T12:05:20.160' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (343, N'BN-52', N'13/03/2020', N'Đi từ Sân bay quốc tế Doha từ 12/3/2020 lúc 21h05 bằng máy bay QR968 đến sân bay quốc tế Nội Bài, Hà Nội 10/3/2020 lúc 13h30', 105.802465, 21.218745, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.807' AS DateTime), CAST(N'2020-06-28T12:05:20.807' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (344, N'BN-53', N'10/03/2020', N'từ 3/10/2020 2:15:00 đến 3/10/2020 13:30:00 Sân bay quốc tế Doha Damar, Qatar - Máy bay QR970 về Sân bay quốc tế Tân Sơn Nhất, Hồ Chí Minh', 106.656864, 10.818101, N'Sân bay quốc tế Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.813' AS DateTime), CAST(N'2020-06-28T12:05:20.813' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (345, N'BN-51', N'2020', N'Từ 12h ngày 3/11/2020 đến 13h30p ngày 3/11/2020: ăn trưa tại Căng tin', 105.881706, 21.045091, N'Nhà hàng Lộc Vừng tại 200 Nguyễn Sơn, Long Biên', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.817' AS DateTime), CAST(N'2020-06-28T12:05:20.817' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (346, N'BN-54', N'08/03/2020', N'Đi từ Sân bay quốc tế Istabul, Thổ Nhĩ Kỳ ngày 7/3/2020 lúc 2h20 bằng chuyến bay TK162 tới Sân bay quốc tế Tân Sơn Nhất, Hồ Chí Minh ngày 8/3/2020 lúc 17h00', 106.664017, 10.815518, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.823' AS DateTime), CAST(N'2020-06-28T12:05:20.823' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (347, N'BN-55', N'14/03/2020', N'từ 13/03/2020 13:10 đến 14/03/2020 06:10 Charles de Gulles Airport, Paris, Pháp - Máy bay VN18 - Sân bay quốc tế Nội Bài, Hà Nội', 105.800545, 21.219525, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:20.827' AS DateTime), CAST(N'2020-06-28T12:05:20.827' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (348, N'BN-122', N'20/03/2020', N'Từ 12h45p ngày 20/03/2020 đến 13h05p ngày 20/03/2020: Tới sân bay quốc tế Đà Nẵng', 108.201087, 16.056397, N'Sân bay quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.100' AS DateTime), CAST(N'2020-06-28T12:05:21.100' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (349, N'BN-54', N'08/03/2020', N'Đi chơi ở Sài Gòn Square từ 19h đến 21h ngày 8/3/2020', 106.700134, 10.772436, N'Đi chơi tại Sài Gòn Square, Quận 1, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.103' AS DateTime), CAST(N'2020-06-28T12:05:21.103' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (350, N'BN-123', N'17/03/2020', N'Từ 13h25p ngày 17/03/2020 đến 13h45p ngày 17/03/2020: tới Tân Sơn Nhất', 108.201087, 16.056397, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.107' AS DateTime), CAST(N'2020-06-28T12:05:21.107' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (351, N'BN-54', N'09/03/2020', N'Đến Sân bay Tân Sơn Nhất, Hồ Chí Minh từ 9/3/2020 lúc 17h để lên chuyến bay QH1521 đi Sân bay Phú Quốc', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.110' AS DateTime), CAST(N'2020-06-28T12:05:21.110' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (352, N'BN-54', N'09/03/2020', N'Đi từ Sân bay quốc tế Tân Sơn Nhất, Hồ Chí Minh lúc 17h 09/03/2020 bằng QH1521 tới Sân bay Phú Quốc lúc 18h ngày 09/03/2020', 103.998024, 10.163386, N'Sân bay Phú Quốc', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.110' AS DateTime), CAST(N'2020-06-28T12:05:21.110' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (353, N'BN-121', N'17/03/2020', N'Từ 21h45p ngày 17/03/2020 đến 22h05p ngày 17/03/2020: Tới sân bay Tân Sơn Nhất', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.273' AS DateTime), CAST(N'2020-06-28T12:05:21.273' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (354, N'BN-54', N'09/03/2020', N'Nghỉ tại Khách sạn La Nube Residence ở Tổ 3, ấp, Cửa Lấp, Huyện Phú Quốc, tỉnh Kiên Giang từ 09/3/2020 18h đến 13/03/2020 lúc 20h45', 103.971871, 10.183397, N'Khách sạn La Nube Residence, Tổ 3, ấp, Cửa Lấp, Huyện Phú Quốc, tỉnh Kiên Giang', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.280' AS DateTime), CAST(N'2020-06-28T12:05:21.280' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (355, N'BN-54', N'13/03/2020', N'Đi từ Sân bay Phú Quốc lúc 20h45 bằng chuyến bay QH1524 đến Sân bay quốc tế Tân Sơn Nhất, Hồ Chí Minh lúc 21h45 ngày 13/3/2020', 108.201087, 16.056397, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.290' AS DateTime), CAST(N'2020-06-28T12:05:21.290' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (356, N'BN-56', N'09/03/2020', N'từ 3/8/2020 11:00:00 đến 3/9/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.799032, 21.220455, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.293' AS DateTime), CAST(N'2020-06-28T12:05:21.293' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (357, N'BN-56', N'10/03/2020', N'từ 3/9/2020 5:20:00 đến 3/10/2020 22:00:00	Khách sạn Hanoi Paradise Center Hotel', 105.8561, 21.030737, N'22 Hàng Vôi, Lý Thái Tổ, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.433' AS DateTime), CAST(N'2020-06-28T12:05:21.433' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (358, N'BN-54', N'13/03/2020', N' Ở tại nhà nghỉ 19B Lê Thị Riêng, P.Bến Thành, Quận 1, Hồ Chí Minh từ 13/03/2020 lúc 21h45 đến 14/03/2020 lúc 12h00', 106.691995, 10.771344, N'Nghỉ tại khách sạn ở 19B Lê Thị Riêng, Bến Thành, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.433' AS DateTime), CAST(N'2020-06-28T12:05:21.433' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (359, N'BN-56', N'11/03/2020', N'từ 3/11/2020 6:20:00 đến 3/11/2020 7:20:00	Ga Lào Cai Khách sạn Mountain River Homestay Sapa', 103.8942, 22.302216, N'Khách sạn Mountain River Homestay Sapa', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.437' AS DateTime), CAST(N'2020-06-28T12:05:21.437' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (360, N'BN-56', N'14/03/2020', N'từ 3/13/2020 19:32:00 đến 3/14/2020 10:00:00 Ga Hà Nội - Khách sạn Oriental Suiter', 105.851075, 21.033215, N'58 Hàng Đào, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.440' AS DateTime), CAST(N'2020-06-28T12:05:21.440' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (361, N'BN-54', N'14/03/2020', N'ngày 14/03/2020, đến ăn tại Nhà hàng Nonla Guys, 40/24 Bùi Viện, từ 12:00 đến 14:00', 106.69422, 10.768184, N'Nhà hàng Nonla Guys, 40/24 Bùi Viện, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.443' AS DateTime), CAST(N'2020-06-28T12:05:21.443' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (362, N'BN-57', N'09/03/2020', N'từ 3/8/2020 11:10:00 đến 3/9/2020 5:20:00 London Heathrow Airport, Luân Đôn, Anh Quốc - Máy bay VN0054', 105.802229, 21.218695, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.593' AS DateTime), CAST(N'2020-06-28T12:05:21.593' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (363, N'BN-57', N'09/03/2020', N'từ 3/9/2020 5:20:00 đến 3/9/2020 8:15:00 Sân bay quốc tế Nội Bài, Hà Nội - đi Taxi về Khách sạn Anise Hotel', 105.846613, 21.040341, N'22 Quán Thánh, Ba Đình, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.597' AS DateTime), CAST(N'2020-06-28T12:05:21.597' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (364, N'BN-118', N'19/03/2020', N'Từ 13h ngày 19/3/2020 đến 14h ngày 19/3/2020', 106.180737, 11.081721, N'Cửa khẩu Mộc Bài - Tây Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.603' AS DateTime), CAST(N'2020-06-28T12:05:21.603' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (365, N'BN-54', N'14/03/2020', N'Đi từ Nhà hàng Nonla Guys, 40/24 Bùi Viện, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh ngày 14/03/2020 lúc 14h tới nhà nghỉ 40/7 Bùi Viện, P. Phạm Ngũ Lão, Quận 1 ngày 14/03/2020 lúc 16h', 106.694269, 10.767748, N'nhà nghỉ ở 40/7 Bùi Viện, P. Phạm Ngũ Lão, Quận 1', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.607' AS DateTime), CAST(N'2020-06-28T12:05:21.607' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (366, N'BN-57', N'10/03/2020', N'từ 3/10/2020 7:00:00 đến 3/10/2020 10:00:00 Khách sạn Anise Hotel đi Taxi Tàu Paradise Hạ Long', 106.986381, 20.916885, N'Tàu Paradise Hạ Long', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.613' AS DateTime), CAST(N'2020-06-28T12:05:21.613' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (367, N'BN-117', N'19/03/2020', N'Từ 15h ngày 19/3/2020 đến 16h ngày 19/3/2020: đến cửa khẩu Mộc Bài - Tây Ninh', 106.180737, 11.081721, N'Cửa khẩu Mộc Bài - Tây Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.817' AS DateTime), CAST(N'2020-06-28T12:05:21.817' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (368, N'BN-58', N'15/03/2020', N'Đi từ Charles de Gulles Airport, Paris, Pháp 14/03/2020 lúc 13h10 bằng máy bay VN18 tới Sân bay quốc tế Nội Bài, Hà Nội 15/3/2020 lúc 6h10', 105.8019823, 21.218715, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.820' AS DateTime), CAST(N'2020-06-28T12:05:21.820' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (369, N'BN-101, BN-102, BN-103, BN-104, BN-105, BN-106', N'18/03/2020', N'Từ 9h20p ngày 18/03/2020 đến 9h40p ngày 18/03/2020: tại Sân bay Quốc tế Cần Thơ', 105.711523, 10.080694, N'Sân bay Quốc tế Cần Thơ', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.823' AS DateTime), CAST(N'2020-06-28T12:05:21.823' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (370, N'BN-57', N'12/03/2020', N'từ 3/12/2020 18:00:00 đến 3/12/2020 19:30:00 Sân bay Quốc tế Đà Nẵng, Đà Nẵng, đi Taxi, Khách sạn Ven sông', 108.356227, 15.88866, N'175 Đường Cửa Đại, Phường Cẩm Châu, Thành Phố Hội An, Tỉnh Quảng Nam', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.827' AS DateTime), CAST(N'2020-06-28T12:05:21.827' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (371, N'BN-59', N'02/03/2020', N'Đi từ London Heathrow Airport, Luân Đôn, Anh Quốc ngày 1/3/2020 lúc 11h10 bằng máy bay VN0054 tới sân bay quốc tế Nội Bài, Hà Nội ngày 2/3/2020 lúc 5h20', 105.801983, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:21.830' AS DateTime), CAST(N'2020-06-28T12:05:21.830' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (372, N'BN-100', N'03/03/2020', N'Từ 19h45p ngày 3/3/2020 đến 20h05p đến 3/3/2020: tại Sân bay Tân Sơn Nhất', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.053' AS DateTime), CAST(N'2020-06-28T12:05:22.053' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (373, N'BN-100', N'17/03/2020', N'Từ ngày 04/3/2020 đến ngày 17/3/2020: đi lễ 5 lần/ngày tại Thánh đường Hồi giáo Jamiul Anwar ', 106.690599, 10.747249, N'Thánh đường Hồi giáo Jamiul Anwar - số 157B/9 Dương Bá Trạc, Phường 1, Quận 8, TP HCM', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.057' AS DateTime), CAST(N'2020-06-28T12:05:22.057' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (374, N'BN-60', N'09/03/2020', N'từ 3/9/2020 13:10:00 đến 10/3/2020 6:10:00 Charles de Gulles Airport, Paris, Pháp - Máy bay VN18 Sân bay quốc tế Nội Bài, Hà Nội', 105.801251, 21.218225, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.060' AS DateTime), CAST(N'2020-06-28T12:05:22.060' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (375, N'BN-112', N'18/03/2020', N'Từ 5h15p ngày 18/03/2020 đến 5h35p ngày 18/03/2020: tại sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.060' AS DateTime), CAST(N'2020-06-28T12:05:22.060' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (376, N'BN-60', N'10/03/2020', N'từ 10/3/2020 6:10:00 đến 11/3/2020 7:00:00	49 Khách sạn Hanoi Paradise Center Hotel', 105.856092, 21.030712, N'22 Hàng Vôi, Lý Thái Tổ, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.063' AS DateTime), CAST(N'2020-06-28T12:05:22.063' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (377, N'BN-61', N'04/03/2020', N'Đi từ Sân bay Quốc tế Kuala Lumpur, Malaysia 4/3/2020 lúc 13h35 bằng máy bay VJ826 tới Sân bay Quốc tế Tân Sơn Nhất, Hồ Chí Minh 4/3/2020 lúc 14h30', 106.664058, 10.815448, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.203' AS DateTime), CAST(N'2020-06-28T12:05:22.203' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (378, N'BN-111', N'18/03/2020', N'Từ 05h15p ngày 18/03/2020 đến 05h35p ngày 18/03/2020: tại sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.207' AS DateTime), CAST(N'2020-06-28T12:05:22.207' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (379, N'BN-60', N'11/03/2020', N'từ 11/3/2020 7:00:00 đến 11/3/2020 9:30:00	Khách sạn Hanoi Paradise Center Hotel, 22 Hàng Vôi, Lý Thái Tổ, Hoàn Kiếm, Hà Nội đi Taxi tới Ninh Bình', 105.924468, 20.25478, N'Ninh Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.210' AS DateTime), CAST(N'2020-06-28T12:05:22.210' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (380, N'BN-114', N'15/03/2020', N'Từ 11h30p ngày 15/03/2020 đến 11h50p ngày 15/03/2020: tại Sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.213' AS DateTime), CAST(N'2020-06-28T12:05:22.213' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (381, N'BN-62', N'06/03/2020', N'Từ Sân bay London Heathrow Airport, Luân Đôn, Anh Quốc 5/3/2020 lúc 11h10 bằng máy bay VN0054 tới sân bay quốc tế Vân Đồn, Quảng Ninh 6/3/2020 lúc 5h20', 107.419395, 21.113909, N'Sân bay quốc tế Vân Đồn, Quảng Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.217' AS DateTime), CAST(N'2020-06-28T12:05:22.217' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (382, N'BN-108, BN-113', N'2020', N'Từ 18/03/2020 đến 20/03/2020: ở tại Khách sạn Hòa Bình', 105.853759, 21.022224, N'Khách sạn Hòa Bình, 27 Lý Thường Kiệt, Hàng Bài, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.357' AS DateTime), CAST(N'2020-06-28T12:05:22.357' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (383, N'BN-63', N'15/03/2020', N'từ 15/03/2020 19:20 đến 15/03/2020 22:00 Sân bay quốc tế Nội Bài, Hà Nội - Xe di chuyển đến nơi cách ly - Trung đoàn Bộ binh B59, Xuân Mai, Chương Mỹ', 105.805448, 21.216445, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.357' AS DateTime), CAST(N'2020-06-28T12:05:22.357' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (384, N'BN-65', N'07/03/2020', N'từ 7/3/2020 8:00:00	đến 7/3/2020 9:00:00, đường Phạm Ngũ Lão, phường 7, quận Gò Vấp, TP.HCM Công ty TOTO Việt Nam', 106.681165, 10.824524, N'Số 1a Phạm Ngọc Thạch, Bến Nghé, Quận 1, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.360' AS DateTime), CAST(N'2020-06-28T12:05:22.360' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (385, N'BN-108', N'18/03/2020', N'từ 5h15p ngày 18/03/2020 đến 5h35p ngày 18/03/2020: tại Sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.363' AS DateTime), CAST(N'2020-06-28T12:05:22.363' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (386, N'BN-64', N'15/03/2020', N'Từ Sân bay Quốc tế Dubai, UAE ngày 15/03/2020 lúc 05h30 bằng máy bay EK392 tới Sân bay Quốc tế Tân Sơn Nhất, Hồ Chí Minh ngày 15/03/2020 lúc 19h20', 106.658829, 10.818433, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.367' AS DateTime), CAST(N'2020-06-28T12:05:22.367' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (387, N'BN-66', N'16/03/2020', N'từ 16/03/2020 07:20:00 đến 16/03/2020 09:50:00, Sân bay Quốc tế Taiwan - Máy bay BR395 - Sân bay Tân Sơn Nhất', 106.663975, 10.81536, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.530' AS DateTime), CAST(N'2020-06-28T12:05:22.530' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (388, N'BN-107', N'13/03/2020', N'Từ 12h ngày 13/03/2020 đến 13h30p ngày 13/03/2020: ăn trưa', 105.822716, 21.010368, N'Quán miến lươn 42 phố Thái Hà', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.533' AS DateTime), CAST(N'2020-06-28T12:05:22.533' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (389, N'BN-107', N'17/03/2020', N'Từ 17h ngày 17/03/2020 đến 22h ngày 17/03/2020: đi tập nhảy', 105.819787, 21.035587, N'Dance More Studios tại Tầng 2 số 281 Đội Cấn, Ba Đình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.533' AS DateTime), CAST(N'2020-06-28T12:05:22.533' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (390, N'BN-67', N'04/03/2020', N'Đi từ Sân bay quốc tế Kuala Lumpur ngày 4/3/2020 lúc 13h35 bằng máy bay VJ826 tới Sân bay Tân Sơn Nhất ngày 4/3/2020 lúc 14h30', 106.658829, 10.818433, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.537' AS DateTime), CAST(N'2020-06-28T12:05:22.537' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (391, N'BN-99', N'18/03/2020', N'Từ 07h10p ngày 18/03/2020 đến 07h30p ngày 18/03/2020: tại sân bay Tân Sơn Nhất', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.540' AS DateTime), CAST(N'2020-06-28T12:05:22.540' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (392, N'BN-115', N'18/03/2020', N'Từ 9h10p ngày 18/03/2020 đến 09h20p ngày 18/03/2020: tại Sân bay Quốc tế Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.700' AS DateTime), CAST(N'2020-06-28T12:05:22.700' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (393, N'BN-69', N'13/03/2020', N'từ 12/3/2020 20:10:00 đến 13/3/2020 09:10:00, Sân bay quốc tế Moscow - Máy bay SU290 - Sân bay Nội Bài', 105.801907, 21.218905, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.703' AS DateTime), CAST(N'2020-06-28T12:05:22.703' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (394, N'BN-68', N'14/03/2014', N'Đi từ Sân bay Chagi, Singapore 14/03/2020 lúc 09h15 bằng máy bay MI632 tới sân bay Đà Nẵng 14/03/2020 lúc 11h00', 108.200887, 16.056324, N'Sân bay quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.710' AS DateTime), CAST(N'2020-06-28T12:05:22.710' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (395, N'BN-70', N'16/03/2020', N'từ 16/03/2020 02:20:00 đến 16/03/2020 16:10:00, Sân bay Istabul - Máy bay TK164 - Sân bay quốc tế Nội Bài', 105.801907, 21.218905, N'Sân bay quốc tế Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.713' AS DateTime), CAST(N'2020-06-28T12:05:22.713' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (396, N'BN-109', N'2020', N'Từ 9h35p ngày 15/03/2020 đến 9h50p ngày 15/03/2020: tại Sân bay Quốc tế Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.720' AS DateTime), CAST(N'2020-06-28T12:05:22.720' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (397, N'BN-71', N'16/03/2020', N'Đi từ Sân bay Istabul ngày 16/03/2020 lúc 02h20 bằng máy bay TK164 tới sân bay quốc tế Nội Bài ngày 16/03/2020 lúc 16h10', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.950' AS DateTime), CAST(N'2020-06-28T12:05:22.950' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (398, N'BN-72', N'10/03/2020', N'từ 3/9/2020 13:10:00 đến 10/3/2020 6:10:00, Charles de Gulles Airport, Paris, Pháp -  Máy bay VN18 - Sân bay quốc tế Nội Bài, Hà Nội', 105.801907, 21.218905, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.957' AS DateTime), CAST(N'2020-06-28T12:05:22.957' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (399, N'BN-113', N'18/03/2020', N'Từ 5h15p ngày 18/03/2020 đến 5h35p ngày 18/03/2020: tại Sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.963' AS DateTime), CAST(N'2020-06-28T12:05:22.963' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (400, N'BN-110', N'19/03/2020', N'Từ 18h30p ngày 19/03/2020 đến 18h50p ngày 19/03/2020: Tại Sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.970' AS DateTime), CAST(N'2020-06-28T12:05:22.970' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (401, N'BN-73', N'09/03/2020', N'Đi từ London Heathrow Airport, Luân Đôn, Anh Quốc 8/3/2020 lúc 11h10 bằng máy bay VN0054 tới sân bay quốc tế Nội Bài, Hà Nội 9/3/2020 lúc 5h20', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:22.973' AS DateTime), CAST(N'2020-06-28T12:05:22.973' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (402, N'BN-74', N'15/03/2020', N'Đi từ Charles de Gulles Airport, Paris, Pháp ngày 15/03/2020 lúc 13h10 bằng máy bay VN18 tới sân bay quốc tế Nội Bài, Hà Nội ngày 16/3/2020 lúc 6h10', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.157' AS DateTime), CAST(N'2020-06-28T12:05:23.157' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (403, N'BN-75', N'15/03/2020', N'Đi từ Sân bay London Heathrow, Anh Quốc 14/03/2020 lúc 11h bằng máy bay VN50 tới sân bay Tân Sơn Nhất 15/03/2020 lúc 06h15', 106.6588, 10.818433, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.163' AS DateTime), CAST(N'2020-06-28T12:05:23.163' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (404, N'BN-76', N'10/03/2020', N'Đi từ Sân bay quốc tế Istabul, Thổ Nhĩ Kỳ ngày 10/3/2020 2h20 bằng máy bay TK162 tới Sân bay quốc tế Tân Sơn Nhất, Hồ Chí Minh lúc 10/3/2020 17h00', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.170' AS DateTime), CAST(N'2020-06-28T12:05:23.170' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (405, N'BN-97, BN-98', N'13/03/2020', N'Từ 13h5p ngày 6/3/2020 đến 13h30p ngày 6/3/2020: tại Sân bay Tân Sơn Nhất', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.177' AS DateTime), CAST(N'2020-06-28T12:05:23.177' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (406, N'BN-77', N'17/03/2020', N'từ 17/03/2020 02:55:00 đến 17/03/2020 13:30:00	5.8, Sân bay quốc tế Doha - Máy bay QR976 - Sân bay quốc tế Nội Bài', 105.805287, 21.218025, N'Sân bay quốc tế Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.180' AS DateTime), CAST(N'2020-06-28T12:05:23.180' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (407, N'BN-91, BN-97, BN-98, BN-120, BN-124, BN-125, BN-126, BN-127, BN-157, BN-158, BN-159', N'14/03/2020', N'Từ 22h ngày 14/03/2020 đến 2h ngày 15/03/2020', 106.738264, 10.802073, N'Budda Bar&Grill (số 7 đường Thảo Điền, phường Thảo Điền, quận 2, TPHCM)', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.320' AS DateTime), CAST(N'2020-06-28T12:05:23.320' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (408, N'BN-76', N'10/03/2020', N'Từ Sân bay quốc tế Tân Sơn Nhất lúc 10/3/2020 17h00 tới Khách sạn Aristo Sài Gòn, lưu trú tại khách sạn này tới 11/3/2020 19h00', 106.694799, 10.780963, N'Khách sạn Aristo Sài Gòn', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.323' AS DateTime), CAST(N'2020-06-28T12:05:23.323' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (409, N'BN-78', N'17/03/2020', N'từ 17/03/2020 02:55:00 đến 17/03/2020 13:30, Sân bay quốc tế Dubai - Máy bay EK394 - Sân bay Nội Bài', 105.805287, 21.218025, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.327' AS DateTime), CAST(N'2020-06-28T12:05:23.327' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (410, N'BN-79, BN-80', N'15/03/2020', N'từ 13/03/2020 20:20:00 đến 15/03/2020 07:20:00, Sân bay quốc tế London Healthrow - Máy bay EK4 - EK392 - Sân bay quốc tế Dubai - Sân bay Tân Sơn Nhất', 106.663971, 10.815441, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.330' AS DateTime), CAST(N'2020-06-28T12:05:23.330' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (411, N'BN-96', N'19/03/2020', N'Từ 19h35p ngày 19/03/2020 đến 19h50p ngày 19/03/2020: tại Sân bay Tân Sơn Nhất', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.330' AS DateTime), CAST(N'2020-06-28T12:05:23.330' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (412, N'BN-81', N'15/03/2020', N'từ 14/03/2020 13:10:00 đén 15/03/2020 07:10:00, Sân bay quốc tế Dubai - AF258 - Sân bay Tân Sơn Nhất', 106.663971, 10.815441, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.493' AS DateTime), CAST(N'2020-06-28T12:05:23.493' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (413, N'BN-76', N'11/03/2020', N'Lưu trú Khách sạn West Cần Thơ từ 23h59 ngày 11/3/2020 tới 09h00 ngày 12/3/2020', 105.788249, 10.032598, N'Khách sạn West Cần Thơ', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.493' AS DateTime), CAST(N'2020-06-28T12:05:23.493' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (414, N'BN-82', N'14/03/2020', N'từ 14/03/2020 04:01:00	đến 15/03/2020 13:55:00, Sân bay quốc tế Dubai - Máy bay EK364 -Sân bay Tân Sơn Nhất', 106.663971, 10.815441, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.497' AS DateTime), CAST(N'2020-06-28T12:05:23.497' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (415, N'BN-83', N'14/03/2020', N'từ 14/03/2020 02:20:00 đến 15/03/2020 17:00:00	9.3, Sân bay quốc tế Istabul, Thổ Nhĩ Kỳ- TK162-Sân bay quốc tế Tân Sơn Nhất', 106.663971, 10.815441, N'Sân bay quốc tế Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.500' AS DateTime), CAST(N'2020-06-28T12:05:23.500' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (416, N'BN-84, BN-85', N'08/03/2020', N'từ 17/03/2020 11:00:00 đến 18/03/2020 05:15:00, Sân bay London Healthrow- VN54-Sân bay Nội Bài', 105.800738, 21.219395, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.503' AS DateTime), CAST(N'2020-06-28T12:05:23.503' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (417, N'BN-86', N'06/03/2020', N'từ 6/3/2020 7:55:00	 đến 6/3/2020 9:00:00, Sân bay Nội Bài - Máy bay VN7209 -Sân bay Tân Sơn Nhất', 106.663987, 10.815393, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.637' AS DateTime), CAST(N'2020-06-28T12:05:23.637' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (418, N'BN-86', N'06/03/2020', N'từ 6/3/2020 9:30:00	 đến 6/3/2020 10:30:00, Sân bay Tân Sơn Nhất - Máy bay VN8059 - Sân bay Côn Đảo', 106.62875, 8.730596, N'Sân bay Côn Đảo', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.640' AS DateTime), CAST(N'2020-06-28T12:05:23.640' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (419, N'BN-76', N'12/03/2020', N'Đi từ Sân bay Tân Sơn Nhất ngày 12/3/2020 lúc 18h05 bằng máy bay VJ642 tới sân bay Đà Nẵng ngày 12/3/2020 lúc 19h25', 108.201087, 16.056397, N'Sân bay quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.643' AS DateTime), CAST(N'2020-06-28T12:05:23.643' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (420, N'BN-86', N'08/03/2020', N'từ 6/3/2020 10:30:00 đến 8/3/2020 8:00:00 ở Côn Đảo Resort', 106.601812, 8.679048, N'Số 8 Nguyễn Đức Thuận, Biển An Hải, Quần Đảo Côn Đảo, Việt Nam', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.643' AS DateTime), CAST(N'2020-06-28T12:05:23.643' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (421, N'BN-95', N'2020', N'Từ 19h35p ngày 18/03/2020 tới 19h50p 18/03/2020: tại sân bay Tân Sơn Nhất', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.833' AS DateTime), CAST(N'2020-06-28T12:05:23.833' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (422, N'BN-88', N'12/03/2020', N'từ 12/3/2020 11:00:00 đến 13/03/2020 05:15:00, Sân bay London Healthrow - VN54 - Sân bay Nội Bài', 105.800469, 21.219505, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.837' AS DateTime), CAST(N'2020-06-28T12:05:23.837' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (423, N'BN-76', N'12/03/2020', N'Lưu trú tại Khách sạn Le Pavillon Hội An, 156 Hai Bà Trưng, Hội An, Quảng Nam từ 12/3/2020 lúc 20h25 tới 14/03/2020 lúc 7h00', 108.345664, 15.879503, N'Khách sạn Le Pavillon Hội An, 156 Hai Bà Trưng, Hội An, Quảng Nam', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.840' AS DateTime), CAST(N'2020-06-28T12:05:23.840' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (424, N'BN-88', N'13/03/2020', N'từ 13/03/2020 05:30:00 đến 13/03/2020 07:30:00, Sân bay Nội Bài  về Nhà riêng', 105.789441, 20.97472, N'KĐT Văn Quán, Phúc La, Hà Đông, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.843' AS DateTime), CAST(N'2020-06-28T12:05:23.843' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (425, N'BN-89', N'17/03/2020', N'từ 17/03/2020 16:45:00 đến 17/03/2020 21:45:00, Sân bay quốc tế Narita - Máy bay NH831 Sân bay quốc tế Tân Sơn Nhất', 106.647897, 10.820339, N'Sân bay quốc tế Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:23.847' AS DateTime), CAST(N'2020-06-28T12:05:23.847' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (426, N'BN-93, BN-94', N'18/03/2020', N'Từ 9h10p ngày 18/03/2020 tới 9h30p ngày 18/03/2020: tại sân bay Nội Bài', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.770' AS DateTime), CAST(N'2020-06-28T12:05:25.770' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (427, N'BN-76', N'14/03/2020', N'Lưu trú tại Khách sạn Thanh lịch Royal Boutique Huế, Thành phố Huế, Thừa Thiên Huế từ 14/03/2020 lúc 9h45 tới 15/03/2020 lúc 20h30', 107.58963, 16.460614, N'Khách sạn Thanh lịch Royal Boutique Huế, Thành phố Huế, Thừa Thiên Huế', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.773' AS DateTime), CAST(N'2020-06-28T12:05:25.773' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (428, N'BN-90', N'14/03/2020', N'từ 14/03/2020 09:40:00 đến 15/03/2020 19:35:00, Sân bay Quốc tế Dubai - EK392 - Sân bay Tân Sơn Nhất', 106.647897, 10.820339, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.780' AS DateTime), CAST(N'2020-06-28T12:05:25.780' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (429, N'BN-91, BN-92', N'16/03/2020', N'từ 16/03/2020 07:00:00 đến 16/03/2020 09:10:00, Sân bay Tân Sơn Nhất - Máy bay VN272 - Sân bay Nội Bài', 105.802454, 21.216315, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.787' AS DateTime), CAST(N'2020-06-28T12:05:25.787' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (430, N'BN-76', N'15/03/2020', N'Di chuyển từ Khách sạn Thanh lịch Royal Boutique Huế, 33 Hai Bà Trưng, Vĩnh Ninh, Thành phố Huế, Thừa Thiên Huế tới Ga Huế vào 15/3/2020 lúc 21h30', 107.577997, 16.456445, N'Ga Huế', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.790' AS DateTime), CAST(N'2020-06-28T12:05:25.790' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (431, N'BN-76', N'16/03/2020', N'Đi từ Ga Huế từ 21h30 ngày 15/03/2020 tới ga Ninh Bình lúc 9h30 ngày 16/03/2020', 105.974512, 20.242091, N'Ga Ninh Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.983' AS DateTime), CAST(N'2020-06-28T12:05:25.983' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (432, N'BN-76', N'16/03/2020', N'Lưu trú ở Khách sạn Legend Ninh Bình từ 10h ngày 16/03/2020 tới 7h ngày 17/03/2020', 105.958624, 20.274301, N'Khách sạn Ninh Bình Legend, Ninh Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.990' AS DateTime), CAST(N'2020-06-28T12:05:25.990' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (433, N'BN-128, BN-129', N'20/03/2020', N'về nước 20/03/2020, Tới sân bay Nội Bài, cách ly sau nhập cảnh', 105.802454, 21.216315, N'Sân bay quốc tế Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:25.993' AS DateTime), CAST(N'2020-06-28T12:05:25.993' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (434, N'BN-76', N'17/03/2020', N'Di chuyển từ khách sạn Legend Ninh Bình đến Khách sạn HaLong Sail Hotel, Hạ Long, Quảng Ninh từ ngày 17/03/2020 lúc 10h sáng tới 7h sáng ngày 18/3/2020', 107.048508, 20.956666, N'Hạ Long Sail Hotel, Hạ Long, Quảng Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.000' AS DateTime), CAST(N'2020-06-28T12:05:26.000' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (435, N'BN-130, BN-131, BN-132', N'22/03/2020', N'Tới sân bay Nội Bài, cách ly sau nhập cảnh', 105.802454, 21.216315, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.007' AS DateTime), CAST(N'2020-06-28T12:05:26.007' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (436, N'BN-76', N'18/03/2020', N'Di chuyển từ Hạ Long Sails, Quảng Ninh đến Khách sạn Mường Thanh Grand Hà Nội từ 10h ngày 18/03/2020 tới 21h ngày 19/3/2020', 105.847699, 21.023361, N'Khách sạn Mường Thanh Grand Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.180' AS DateTime), CAST(N'2020-06-28T12:05:26.180' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (437, N'BN-133', N'24/03/2020', N'Di chuyển từ Bạch Mai về Lai Châu', 103.654147, 22.103886, N'Lai Châu', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.183' AS DateTime), CAST(N'2020-06-28T12:05:26.183' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (438, N'BN-76', N'19/03/2020', N' Di chuyển từ Khách sạn Mường Thanh Hà Nội tới Phở Thìn Đinh Tiên Hoàng lúc 20h30', 105.854026, 21.030213, N'Phở Thìn Đinh Tiên Hoàng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.183' AS DateTime), CAST(N'2020-06-28T12:05:26.183' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (439, N'BN-138, BN-139, BN-140', N'21/03/2020', N'Nhập cảnh 21/03/2020, tại sân bay Nội Bài trên chuyến bay VN54 ngày 21/3/2020, cách ly sau nhập cảnh', 105.802309, 21.21871, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.187' AS DateTime), CAST(N'2020-06-28T12:05:26.187' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (440, N'BN-134', N'18/03/2020', N'Bay từ Moscow, Nga từ 17/3/2020 qua chuyến bay SU290 tới Sân bay Nội bài ngày 18/3/2020', 105.80419, 21.21875, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.190' AS DateTime), CAST(N'2020-06-28T12:05:26.190' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (441, N'BN-135', N'21/03/2020', N'Đi từ Copenhagen, Đan Mạch tới Sân bay Đà Nẵng ngày 21/3/2020 qua chuyến bay PG974 (Quá cảnh qua Thái Lan, Qatar)', 108.200895, 16.056333, N'Sân bay quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.320' AS DateTime), CAST(N'2020-06-28T12:05:26.320' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (442, N'BN-136', N'16/03/2020', N'Ngày 16/03/2020 tới sân bay Nội Bài, trên chuyến bay BR0397 ngày 16/03/2020, cách ly sau nhập cảnh', 105.802309, 21.21871, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.320' AS DateTime), CAST(N'2020-06-28T12:05:26.320' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (443, N'BN-137', N'15/03/2020', N'Di chuyển từ Đức tới Sân bay Nội Bài, Hà Nội ngày 15/3/2020', 105.804255, 21.218425, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.323' AS DateTime), CAST(N'2020-06-28T12:05:26.323' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (444, N'BN-148', N'12/03/2020', N'Lưu trú tại Chung cư Tân Hoàng Minh, 36 Hoàng Cầu, Ô Chợ Dừa, Đống Đa', 105.82126, 21.015823, N'Tân Hoàng Minh, 36 Hoàng Cầu, Ô Chợ Dừa, Đống Đa', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.327' AS DateTime), CAST(N'2020-06-28T12:05:26.327' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (445, N'BN-148', N'12/03/2020', N'Chiều - đến cửa hàng giặt là PARIS LAUNDRY (36 Hàm Long) (10 phút)', 105.852514, 21.019556, N'Cửa hàng giặt là PARIS LAUNDRY, 36 Hàm Long', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.330' AS DateTime), CAST(N'2020-06-28T12:05:26.330' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (446, N'BN-148', N'12/03/2020', N'Đến Lela Coffee 40 Trần Hưng Đạo trong 40 phút', 105.853207, 21.020819, N'Lela Coffee 40 Trần Hưng Đạo', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.520' AS DateTime), CAST(N'2020-06-28T12:05:26.520' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (447, N'BN-148', N'16/03/2020', N'Ngày 16/03/2020 Đi ngân hàng BIDV – chi nhánh Hà Thành ở 74 Thợ Nhuộm', 105.84752, 21.02356, N'74 Thợ Nhuộm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.523' AS DateTime), CAST(N'2020-06-28T12:05:26.523' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (448, N'BN-148', N'16/03/2020', N'16/03/2020 đi đến VPS (Công ty đầu tư chứng khoán VPSB) tại số 02 Đại Cồ Việt để giao dịch ', 105.850889, 21.008813, N'số 02 Đại Cồ Việt, Hai Bà Trưng, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.527' AS DateTime), CAST(N'2020-06-28T12:05:26.527' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (449, N'BN-148', N'17/03/2020', N'Uống cà phê ở quán O''DOUCEURS số 8 Phan Chu Trinh', 105.856548, 21.0235, N'8 Phan Chu Trinh, Tràng Tiền, Hoàn Kiếm, Hà Nội, Việt Nam', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.527' AS DateTime), CAST(N'2020-06-28T12:05:26.527' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (450, N'BN-148', N'18/03/2020', N'Đến phòng tập Gym ở Lý Thường Kiệt ', 105.855279, 21.021839, N'Lý Thường Kiệt, Phan Chu Trinh, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.530' AS DateTime), CAST(N'2020-06-28T12:05:26.530' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (451, N'BN-136', N'20/03/2020', N'Tự cách ly ở nhà', 105.833101, 20.963044, N'Khu BT 3, Linh Đàm, Hoàng Mai, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.693' AS DateTime), CAST(N'2020-06-28T12:05:26.693' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (452, N'BN-142', N'10/03/2020', N'Từ ngày 10/03/2020 đến 23/3/2020, lưu trú tại xã Tân Túc, huyện Bình Chánh', 106.573253, 10.685015, N'Tân Túc, Huyện Bình Chánh, TP.Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.697' AS DateTime), CAST(N'2020-06-28T12:05:26.697' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (453, N'BN-142', N'11/03/2020', N'Đi đến thăm người nhà tại Bệnh viện Bình Dân', 106.681018, 10.77411, N'371 Điện Biên Phủ, Phường 4, Quận 3, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.700' AS DateTime), CAST(N'2020-06-28T12:05:26.700' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (454, N'BN-142', N'12/03/2020', N'Đến thăm người nhà tại Lãnh sự quán Hoa Kỳ', 106.700602, 10.782768, N'Lãnh sự quán Hoa Kỳ, 4 Lê Duẩn, Bến Nghé, Quận 1, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.707' AS DateTime), CAST(N'2020-06-28T12:05:26.707' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (455, N'BN-107', N'13/03/2020', N'Ăn bún đậu trong 13 ngõ Thái Hà (Quán tên là 173 Thái Hà) vào khung giờ ăn trưa từ 12-14h', 105.815432, 21.014944, N'Quán bún đậu mắm tôm ngõ 13 Thái Hà', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.710' AS DateTime), CAST(N'2020-06-28T12:05:26.710' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (456, N'BN-107', N'15/03/2020', N'Đến quán thịt xiên nướng ở ven hồ Hồ Đắc Di trong khoảng thời gian từ 17-19h', 105.830307, 21.011685, N'Quán thịt xiên nướng, Hồ Đắc Di', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.953' AS DateTime), CAST(N'2020-06-28T12:05:26.953' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (457, N'BN-107', N'15/03/2020', N'Đến Vinmart, Vincom Phạm Ngọc Thạch, Hà Nội từ 19-22h tối 15/3/2020', 105.831936, 21.006213, N'Vinmart, Vincom Phạm Ngọc Thạch, Phạm Ngọc Thạch', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.963' AS DateTime), CAST(N'2020-06-28T12:05:26.963' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (458, N'BN-141', N'18/03/2020', N'Đi Vinmart ở khu vực Lê Đại Hành, Hai Bà Trưng từ 17-18h ngày 18/03/2020', 105.847555, 21.01219, N'Vinmart ở khu vực Lê Đại Hành, Hai Bà Trưng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.967' AS DateTime), CAST(N'2020-06-28T12:05:26.967' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (459, N'BN-143', N'21/03/2020', N'Đi từ Mỹ quá cảnh qua Đài Loan tới Sân bay Tân Sơn Nhất vào ngày 21/3/2020. Được cách ly ngay sau khi hạ cánh.', 106.664211, 10.815608, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.973' AS DateTime), CAST(N'2020-06-28T12:05:26.973' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (460, N'BN-144, BN-145', N'22/03/2020', N'Đi từ Anh ngày 21/3/2020 bằng chuyến bay VN50 đến Sân bay Nội Bài ngày 22/3/2020, đã được cách ly sau khi xuống máy bay', 105.805449, 21.21847, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:26.977' AS DateTime), CAST(N'2020-06-28T12:05:26.977' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (461, N'BN-141', N'2020', N' Di chuyển từ Bệnh viện Nhiệt đới Trung ương cơ sở Kim Chung đến khu vực Quan Hoa Cầu Giấy từ 9-12h ngày 16/3/2020', 105.799475, 21.035963, N'Quan Hoa, Cầu Giấy', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:28.930' AS DateTime), CAST(N'2020-06-28T12:05:28.930' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (462, N'BN-147', N'21/03/2020', N'Đi từ London Heathrow Airport ngày 20/3/2020 bằng chuyến bay VN0054 tới Sân bay Nội Bài ngày 21/3/2020', 105.803291, 21.219105, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:28.933' AS DateTime), CAST(N'2020-06-28T12:05:28.933' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (463, N'BN-148', N'12/03/2020', N'Đi từ Pháp ngày 11/3/2020 bằng chuyến bay VN18 đến Sân bay Nội Bài ngày 12/3/2020', 105.803291, 21.219105, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:28.933' AS DateTime), CAST(N'2020-06-28T12:05:28.933' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (464, N'BN-46', N'10/03/2020', N'10/03/2020 Ăn cơm ở quán Hoàng Giang ở ngã tư Nguyễn Văn Cừ, Nguyễn Sơn; ăn bún ngan ở quán bún ngan gần Ngã tư Nguyễn Văn Cừ, Nguyễn Sơn', 105.878057, 21.046897, N'Ngã tư Nguyễn Văn Cừ -Nguyễn Sơn, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:28.937' AS DateTime), CAST(N'2020-06-28T12:05:28.937' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (465, N'BN-148', N'13/03/2020', N'Đến quán café AROMA phố Mai Anh Tuấn sáng 13/3/2020 ', 105.822605, 21.018926, N' Café AROMA, Mai Anh Tuấn, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:28.940' AS DateTime), CAST(N'2020-06-28T12:05:28.940' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (466, N'BN-148', N'13/03/2020', N'Đi ăn trưa (11-14h) tại nhà hàng mỳ vằn thắn ở Nguyên Hồng', 105.810888, 21.016622, N'Quán Mỳ Vằn thắn, phố Nguyên Hồng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.140' AS DateTime), CAST(N'2020-06-28T12:05:29.140' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (467, N'BN-148', N'14/03/2020', N'Đi ăn trưa (11-14h) ở quán mỳ vằn thắn ở phồ Nguyên Hồng ngày 14/3/2020', 105.810888, 21.016622, N'Quán Mỳ Vằn thắn, phố Nguyên Hồng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.140' AS DateTime), CAST(N'2020-06-28T12:05:29.140' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (468, N'BN-148', N'13/03/2020', N'Đi siêu thị Vinmart ở 36 Hoàng Cầu, Ô Chợ Dừa, Hà Nội', 105.822774, 21.019512, N'Vinmart, 36 Hoàng Cầu, Ô Chợ Dừa, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.143' AS DateTime), CAST(N'2020-06-28T12:05:29.143' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (469, N'BN-148', N'14/03/2020', N'Đi siêu thị Vinmart 36 Hoàng Cầu, Ô Chợ Dừa, Hà Nội', 105.822774, 21.019512, N'Vinmart, 36 Hoàng Cầu, Ô Chợ Dừa, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.147' AS DateTime), CAST(N'2020-06-28T12:05:29.147' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (470, N'BN-148', N'15/03/2020', N'Đi siêu thị Vinmart 36 Hoàng Cầu, Ô Chợ Dừa, Hà Nội', 105.822774, 21.019512, N'Vinmart, 36 Hoàng Cầu, Ô Chợ Dừa, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.150' AS DateTime), CAST(N'2020-06-28T12:05:29.150' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (471, N'BN-149', N'23/03/2020', N'Đi từ Frankfurt Airport, Đức ngày 22/3 đến Sân bay Vân Đồn ngày 23/3 lúc 6h30, sau đó đã cách ly sau khi xuống sân bay.', 107.419386, 21.113841, N'Sân bay Vân Đồn', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.343' AS DateTime), CAST(N'2020-06-28T12:05:29.343' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (472, N'BN-150', N'13/03/2020', N'Đi từ Mỹ quá cảnh Đài Loan qua chuyến BR395 đến Sân bay Tân Sơn Nhất ngày 13/3/2020', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.577' AS DateTime), CAST(N'2020-06-28T12:05:29.577' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (473, N'BN-150', N'15/03/2020', N'không có', 106.697807, 10.77854, N'Quán bún gánh đường Hàn Thuyên, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.583' AS DateTime), CAST(N'2020-06-28T12:05:29.583' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (474, N'BN-150', N'16/03/2020', N'Dự tiệc ở Hoa Viên Tri Kỷ ngày 16/3', 106.672373, 10.810289, N'Nhà hàng Hoa Viên Tri Kỷ, phường 9, Phú Nhuận', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.590' AS DateTime), CAST(N'2020-06-28T12:05:29.590' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (475, N'BN-151, BN-124', N'13/03/2020', N'Đến Starbuck tại số 21 Thảo Điền, Quận 2, Hồ Chí Minh hàng ngày (từ 13/3/2020 đến 21/3/2020) ', 106.737649, 10.803239, N'Starbucks, số 21 Thảo Điền, Quận 2, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.593' AS DateTime), CAST(N'2020-06-28T12:05:29.593' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (476, N'BN-151', N'16/03/2020', N'không có', 106.736614, 10.805253, N'Siêu thị An Phú, 36 Đường Thảo Điền, Thảo Điền, Quận 2, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.600' AS DateTime), CAST(N'2020-06-28T12:05:29.600' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (477, N'BN-151', N'19/03/2020', N'không có', 106.647135, 10.850325, N'Nhà Máy Huê Phong, phường 14, Gò Vấp, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.817' AS DateTime), CAST(N'2020-06-28T12:05:29.817' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (478, N'BN-152', N'17/03/2020', N'Dùng bữa trưa tại nhà hàng Chay SEN 171 Nguyễn Thái Học, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh ', 106.694829, 10.768248, N'Nhà hàng Chay SEN, 171 Nguyễn Thái Học, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.823' AS DateTime), CAST(N'2020-06-28T12:05:29.823' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (479, N'BN-153', N'21/03/2020', N'Từ Úc trở về Việt Nam ngày 21/3/2020 trên chuyến bay VN772, đã cách ly sau khi xuống máy bay.', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.830' AS DateTime), CAST(N'2020-06-28T12:05:29.830' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (480, N'BN-76', N'12/03/2020', N'Từ 7h ngày 12/03/2020 tới 11h ngày 12/03/2020: Đi chơi tại chợ nổi Cái Răng', 105.788305, 10.033982, N'Chợ nổi Cái Răng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.833' AS DateTime), CAST(N'2020-06-28T12:05:29.833' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (481, N'BN-17', N'2020', N'Lưu trú tai khu Trúc Bạch, Ba Đình, Hà Nội', 105.841884, 21.045076, N'Trúc Bạch, Ba Đình, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:29.840' AS DateTime), CAST(N'2020-06-28T12:05:29.840' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (482, N'BN-21', N'02/03/2020', N'Lưu trú tại  khu Nguyễn Khắc Nhu, Trúc Bạch, Hà Nội', 105.845205, 21.04426, N'Nguyễn Khắc Nhu, Trúc Bạch, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.080' AS DateTime), CAST(N'2020-06-28T12:05:30.080' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (483, N'BN-154, BN-155, BN-156', N'22/03/2020', N'Từ 6h15p ngày 22/03/2020 đến 6h35p ngày 22/03/2020: đến sân bay Quốc tế Cần Thơ', 105.71185, 10.080673, N'Sân bay Quốc tế Cần Thơ', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.083' AS DateTime), CAST(N'2020-06-28T12:05:30.083' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (484, N'BN-160', N'22/03/2020', N'Từ 9h30p ngày 22/03/2020 đến 10h ngày 22/03/2020: tại sân bay Tân Sơn Nhất', 106.663824, 10.81558, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.087' AS DateTime), CAST(N'2020-06-28T12:05:30.087' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (485, N'BN-146', N'20/03/2020', N'Đi từ Sân bay Suvamabhumi, Bangkok ngày 20/3/2020 11h bằng máy bay PG947 tới sân bay Đà Nẵng, Đà Nẵng ngày 20/03/2020 12h45', 108.200857, 16.056284, N'Sân bay Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.090' AS DateTime), CAST(N'2020-06-28T12:05:30.090' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (486, N'BN-160', N'22/03/2020', N'Đi từ Sân bay quốc tế Sheremetyevo, Mát-xco-va, Nga ngày 22/3/2020 19:35 bằng máy bay SU292 tới sân bay Tân Sơn Nhất, TP HCM 22/3/2020 9:30', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.093' AS DateTime), CAST(N'2020-06-28T12:05:30.093' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (487, N'BN-164, BN-165', N'23/03/2020', N'Đi từ London Heathrow Airport, Luân Đôn ngày 22/3/2020 11:00 bằng máy bay VN54 tới sân bay Vân Đồn ngày 23/3/2020 5:20:00', 107.419431, 21.113826, N'Sân bay quốc tế Vân Đồn, Quảng Ninh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.243' AS DateTime), CAST(N'2020-06-28T12:05:30.243' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (488, N'BN-166', N'20/03/2020', N'Đi từ Bangkok suvarnabhumi Airport, Bangkok, Thái Lan ngày 20/03/2020 17:30 bằng máy bay TG564 tới sân bay quốc tế Nội Bài, Hà Nội ngày 20/03/2020 19:20', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.247' AS DateTime), CAST(N'2020-06-28T12:05:30.247' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (489, N'BN-167', N'09/03/2020', N'Đi từ sân bay quốc tế Doha ngày 8/3/2020 lúc 2h55 bằng máy bay QR976 tới sân bay quốc tế Nội Bài ngày 9/3/2020 13h30', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.250' AS DateTime), CAST(N'2020-06-28T12:05:30.250' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (490, N'BN-167', N'09/03/2020', N'Ở Khách sạn Babylon Garden Hoàn Kiếm, 25-27 Lò Sũ, Lý Thái Tổ, Hoàn Kiếm, Hà Nội từ 9/3/2020 đến 12/3/2020 ', 105.855574, 21.031123, N'Khách sạn Babylon Garden, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.253' AS DateTime), CAST(N'2020-06-28T12:05:30.253' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (491, N'BN-167', N'12/03/2020', N' Đi từ Khách sạn Babylon Garden 12/3/2020 đến Khách sạn Jasmine Hotel ở xã Phương Thiện, TP Hà Giang, lưu trú từ 12/3/2020 đến 5h ngày 15/03/2020', 104.975609, 22.805381, N'Khách sạn Jasmine Hotel ở xã Phương Thiện, TP Hà Giang', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.257' AS DateTime), CAST(N'2020-06-28T12:05:30.257' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (492, N'BN-167', N'15/03/2020', N'Đi từ Khách sạn Jasmine Hotel ở xã Phương Thiện, TP Hà Giang 5h sáng ngày 15/3/2020 bằng xe du lịch đến khách sạn Kingly Hotel (số 8 Lý Thái Tổ, Hoàn Kiếm) 10h40 sáng 15/3/2020, lưu trú đến 18h ngày 16/3/2020 ', 105.854571, 21.03117, N'Khách sạn Kingly Hotel, số 8 Lý Thái Tổ, Hoàn Kiếm, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.403' AS DateTime), CAST(N'2020-06-28T12:05:30.403' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (493, N'BN-167', N'17/03/2020', N'Đi từ Khách sạn Kingly Hotel (số 8 Lý Thái Tổ, Hoàn Kiếm) lúc 18h ngày 16/3/2020 bằng xe giường nằm tới khách sạn Sunshine 3 (số 10 Võ Thị Sáu, phố Hội, TP Huế) lúc 6h ngày 17/3/2020, lưu trú đến 8h 19/3/2020', 107.596185, 16.469674, N'Khách sạn Sunshine 3, số 10 Võ Thị Sáu, phố Hội, TP Huế', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.407' AS DateTime), CAST(N'2020-06-28T12:05:30.407' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (494, N'BN-167', N'19/03/2020', N'Đi từ Khách sạn Sunshine 3 (số 10 Võ Thị Sáu, phố Hội, TP Huế) ngày 19/3/2020 8h sáng bằng xe du lịch tới khách sạn Backpacker 250 Cửa Đại, Hội An 10h30 sáng ngày 19/3/2020, lưu trú đến ngày 23/03/2020 5h30 ', 108.353493, 15.888968, N'Khách sạn Backpacker 250 Cửa Đại, Hội An', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.410' AS DateTime), CAST(N'2020-06-28T12:05:30.410' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (495, N'BN-167', N'23/03/2020', N'Từ khách sạn Backpacker 250 Cửa Đại, Hội An sáng 23/3/2020 bằng taxi tới sân bay Quốc tế Đà Nẵng sáng 23/3/2020 7h50 ', 108.200863, 16.056347, N'Sân bay quốc tế Đà Nẵng', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.410' AS DateTime), CAST(N'2020-06-28T12:05:30.410' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (496, N'BN-167', N'24/03/2020', N'Đi từ khách sạn Kingly Hotel (số 8 Lý Thái Tổ, Hoàn Kiếm) đến ăn sáng ở cửa hàng McDonald số 2 Hàng Hải, Tràng Tiền, Hoàn Kiếm sáng 24/3/2020', 105.853065, 21.025396, N'Cửa hàng McDonald số 2 Hàng Hải, Tràng Tiền, Hoàn Kiếm', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.590' AS DateTime), CAST(N'2020-06-28T12:05:30.590' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (497, N'BN-167', N'24/03/2020', N'Đến Circle K 73 Chùa Láng từ 11h đến 15h ngày 24/3/2020', 105.807053, 21.023107, N'Circle K, 73 Chùa Láng, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.593' AS DateTime), CAST(N'2020-06-28T12:05:30.593' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (498, N'BN-160', N'22/02/2020', N'22/03/2020 đi từ sân bay quốc tế Sheremetyevo, Mát-xco-va, Nga trên chuyến bay mã hiệu SU292 về Sân bay Tân Sơn Nhất, TP HCM', 106.653533, 10.81686, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.597' AS DateTime), CAST(N'2020-06-28T12:05:30.597' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (499, N'BN-86, BN-87, BN-133, BN-161, BN-162, BN-163, BN-168, BN-169, BN-170, BN-174', N'11/03/2020', N'11/03/2020 - 25/03/2020 Trung tâm BV Bệnh Nhiệt đới, Viện Tim mạch, Khoa Thần Kinh, Khoa Tiêu hoá, Tổ nước sôi, Tổ nhà ăn  (Bệnh Viện Bạch Mai)', 105.83922, 21.002114, N'Bệnh Viện Bạch Mai, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.600' AS DateTime), CAST(N'2020-06-28T12:05:30.600' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (500, N'BN-170', N'15/03/2020', N'Đến bến xe Giáp Bát lúc 9h sáng 15/3/2020, bắt xe khách Đức Long đi về Ninh Bình từ 9h-12h30', 105.841523, 20.980422, N'Bến xe Giáp Bát', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.763' AS DateTime), CAST(N'2020-06-28T12:05:30.763' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (501, N'BN-170', N'22/03/2020', N'Đến Bến xe Giáp Bát 9h sáng 22/3/2020, bắt xe khách Đức Long về Ninh Bình lúc 12h30 ngày 22/3/2020 ', 105.841523, 20.980422, N'Bến xe Giáp Bát', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.767' AS DateTime), CAST(N'2020-06-28T12:05:30.767' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (502, N'BN-179', N'18/03/2020', N'Đi từ sân bay Quốc tế Dubai, UAE từ ngày 18/3/2020 lúc 3h40 bằng chuyến bay EK394 tới sân bay Nội Bài, Hà Nội ngày 18/3/2020 lúc 12h40', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.767' AS DateTime), CAST(N'2020-06-28T12:05:30.767' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (503, N'BN-180, BN-181', N'20/03/2020', N'Đi từ Sân bay quốc tế Suvarnabhumi ngày 20/3/2020 6h trên chuyến bay TG564 tới sân bay Nội Bài, Hà Nội ngày 20/3/2020 7h30. Cách ly sau khi nhập cảnh.', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.770' AS DateTime), CAST(N'2020-06-28T12:05:30.770' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (504, N'BN-182', N'20/03/2020', N'Đi từ Zurich, Thụy Sĩ trên chuyến bay LX180 tới Sân bay quốc tế Suvarnabhumi, Bangkok, Thái Lan; sau đó bắt chuyến bay VN618 từ 20/3/2020 19:00 tới sân bay Nội Bài 20/3/2020 21:00.  ', 105.804632, 21.21869, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:30.773' AS DateTime), CAST(N'2020-06-28T12:05:30.773' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (505, N'BN-171', N'13/03/2020', N'Đi từ Mỹ quá cảnh tại Philippines đến Sân bay Tân Sơn Nhất ngày 13/3/2020. Đã cách ly tại nhà sau khi nhập cảnh.', 106.664386, 10.815654, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.057' AS DateTime), CAST(N'2020-06-28T12:05:31.057' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (506, N'BN-203', N'17/03/2020', N'Đi từ Hy Lạp quá cảnh qua Sân bay Istabul, Thổ Nhĩ Kỳ, bay về Sân bay Tân Sơn Nhất ngày 17/3/2020 trên chuyến bay TK162, đã cách ly sau khi nhập cảnh	', 106.664387, 10.815655, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.060' AS DateTime), CAST(N'2020-06-28T12:05:31.060' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (507, N'BN-212', N'27/03/2020', N'Đi từ sân bay Sheremetyevo ngày 26/03/2020 trên chuyến bay SU290 đến Sân bay Nội Bài ngày 27/03/2020, đã cách ly sau khi xuống máy bay.', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.063' AS DateTime), CAST(N'2020-06-28T12:05:31.063' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (508, N'BN-211', N'20/03/2020', N'Đi từ Washington, Mỹ quá cảnh tại Aby Dhabi và Bangkok, đến Sân bay Nội Bài ngày 20/03/2020 trên chuyến bay VN418.', 105.8019824, 21.218715, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.063' AS DateTime), CAST(N'2020-06-28T12:05:31.063' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (509, N'BN-210', N'20/03/2020', N'Đi từ Thailand về Sân bay Nội Bài ngày 20/3/2020, đã cách ly ngay sau khi xuống sân bay. Trước đó có tiếp xúc gần với BN-201', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.067' AS DateTime), CAST(N'2020-06-28T12:05:31.067' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (510, N'BN-216', N'02/04/2020', N'Đi Đức quá cảnh qua Mát-xco-va đến Sân bay Nội Bài trên chuyến bay SU290 ngày 23/3/2020, sau đó được cách ly.', 105.8019822, 21.2187146, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.370' AS DateTime), CAST(N'2020-06-28T12:05:31.370' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (511, N'BN-217', N'02/04/2020', N'Đi từ Sân bay Narita, Tokyo, Nhật Bản trên chuyến bay NH857 tới Sân bay Nội Bài ngày 25/03/2020', 105.8019822, 21.2187149, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.373' AS DateTime), CAST(N'2020-06-28T12:05:31.373' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (512, N'BN-222', N'02/04/2020', N'Đi từ Mỹ quá cảnh qua sân bay Narita, Tokyo, Nhật Bản tới sân bay Nội Bài ngày 20/03/2020 trên chuyến bay JL571', 105.8019822, 21.218715, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.377' AS DateTime), CAST(N'2020-06-28T12:05:31.377' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (513, N'NB-224', N'02/04/2020', N'Lưu trú tại Chung cư  Masteri, Quận 2, TP Hồ Chí Minh', 106.741434, 10.802645, N'Chung cư  Masteri, Quận 2, TP Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.380' AS DateTime), CAST(N'2020-06-28T12:05:31.380' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (514, N'NB-219', N'02/04/2020', N'Lưu trú tại Thôn Chí Trung, xã Tân Quang, huyện Văn Lâm, Hưng Yên', 105.963786, 20.987149, N'Thôn Chí Trung, xã Tân Quang, huyện Văn Lâm, Hưng Yên', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.383' AS DateTime), CAST(N'2020-06-28T12:05:31.383' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (515, N'BN-209', N'02/04/2020', N'Đức Giang, Thượng Thanh, Long Biên, Hà Nội, Việt Nam', 105.883653, 21.06674, N'Đức Giang, Thượng Thanh, Long Biên, Hà Nội, Việt Nam', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.710' AS DateTime), CAST(N'2020-06-28T12:05:31.710' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (516, N'NB-178', N'28/03/2020', N'Đại Từ, Thái Nguyên', 105.644728, 21.602512, N'Đại Từ, Thái Nguyên', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.717' AS DateTime), CAST(N'2020-06-28T12:05:31.717' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (517, N'BN-239', N'03/04/2020', N'Ngày 11 và 18/3 đi khám, điều trị tại Khoa Ung bướu, Bệnh viện Bạch Mai và có mua đồ ăn ở căng tin bệnh viện', 105.524821, 21.376118, N'An Hoà, Tam Dương, Vĩnh Phúc', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.723' AS DateTime), CAST(N'2020-06-28T12:05:31.723' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (518, N'BN-238', N'03/04/2020', N'Ngày 17-3, bệnh nhân đi ô tô từ Bangkok, Thái Lan về Việt Nam. Ngày 18-3, nhập cảnh qua cửa khẩu Cha Lo, tỉnh Quảng Bình và được đưa về khu cách ly tập trung của tỉnh Quảng Bình một ngày.', 105.765292, 17.679802, N'Cửa khẩu quốc tế Cha Lo, Quảng Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.730' AS DateTime), CAST(N'2020-06-28T12:05:31.730' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (519, N'BN-237', N'03/04/2020', N'Từ ngày 11/3 - 21/3/2020, BN 237 ở khách sạn Ngọc Anh, cơ sở 2 – 38 Lương Văn Tuy, Ninh Bình', 105.970998, 20.256899, N'Khách sạn Ngọc Anh, cơ sở 2 – 38 Lương Văn Tuy, Ninh Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:31.737' AS DateTime), CAST(N'2020-06-28T12:05:31.737' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (520, N'BN-237', N'03/04/2020', N'Ngày 21/3/2020, bệnh nhân này đi xe X.E.Limousine từ Ninh Bình (09h30 sáng) lên Hà Nội', 105.923314, 20.350575, N'X.E.Limousine từ Ninh Bình lên Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.310' AS DateTime), CAST(N'2020-06-28T12:05:32.310' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (521, N'BN-237', N'03/04/2020', N'Ngày 21/3 - 22/3/2020, bệnh nhân ở Khách sạn Canary Hanoi, số 4 Vũ Hữu Lợi, Hà Nội', 105.841957, 21.019458, N'Khách sạn Canary Hanoi, số 4 Vũ Hữu Lợi, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.317' AS DateTime), CAST(N'2020-06-28T12:05:32.317' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (522, N'BN-237', N'03/04/2020', N'Ngày 22/3- 31/3/2020, bệnh nhân ở Khách sạn Sao (Star), số 2, ngõ 25, Lâm Du, Bồ Đề, Long Biên.', 105.867898, 21.039089, N'Khách sạn Sao (Star), số 2, ngõ 25, Lâm Du, Bồ Đề, Long Biên', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.323' AS DateTime), CAST(N'2020-06-28T12:05:32.323' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (523, N'BN-237', N'30/03/2020', N'Ngày 30/03/2020, khám lại tại Bệnh viện, Việt Pháp', 105.840344, 21.003708, N'Bệnh viện Việt Pháp, Phương Mai, Đống Đa, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.330' AS DateTime), CAST(N'2020-06-28T12:05:32.330' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (524, N'BN-237', N'01/04/2020', N'Ngày 01/04/2020, bệnh nhân cấp cứu tại bệnh viện Đức Giang sau đó chuyển sang Viện huyết học – truyền máu Trung ương.', 105.898502, 21.062172, N'Duc Giang General Hospital, Trường Lâm, Ô Cách, Đức Giang, Long Biên, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.337' AS DateTime), CAST(N'2020-06-28T12:05:32.337' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (525, N'BN-234', N'17/03/2020', N'Đi từ Sân bay Charles de Gaulle, Pháp từ 16/3/2020 bằng chuyến bay VN2106 tới Sân bay Tân Sơn Nhất, Hồ Chí Minh ngày 17/3/2020, sau khi nhập cảnh đã cách ly.', 106.659114, 10.817715, N'Sân bay Tân Sơn Nhất, Hồ Chí Minh', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.677' AS DateTime), CAST(N'2020-06-28T12:05:32.677' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (526, N'BN-238', N'21/03/2020', N'Đi từ Bangkok, Thái Lan ngày 21/3/2020 tới Sân bay Nội Bài, Hà Nội ngày 21/3/2020, sau khi nhập cảnh đã cách ly.	', 105.8019823, 21.218715, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.683' AS DateTime), CAST(N'2020-06-28T12:05:32.683' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (527, N'BN-240', N'20/03/2020', N'Đi từ Bangkok, Thái Lan tới Sân bay Nội Bài, Hà Nội ngày 20/3/2020, sau khi nhập cảnh đã cách ly', 105.80482, 21.218445, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.687' AS DateTime), CAST(N'2020-06-28T12:05:32.687' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (528, N'BN-240', N'20/03/2020', N'Đi từ Bangkok, Thái Lan tới Sân bay Nội Bài, Hà Nội ngày 20/3/2020, sau khi nhập cảnh đã cách ly', 105.80482, 21.218445, N'Sân bay Nội Bài', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.693' AS DateTime), CAST(N'2020-06-28T12:05:32.693' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (529, N'BN-183', N'17/03/2020', N'Các ngày 17/3 (từ 8h-8h30); ngày 18/3 (từ 10h30-11h); ngày 22/3 (từ 12h-15h); ngày 23/3 (từ 15h30-16h30); ngày 24/3 (từ 12h-14h).', 105.828807, 21.038805, N'Phòng khám Đông y Mộc Linh, 182 Ngọc Hà, Ba Đình, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.697' AS DateTime), CAST(N'2020-06-28T12:05:32.697' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (530, N'BN-183', N'20/03/2020', N'Phòng khám Jc Caze, 5 Hàng Chuối, Hà Nội, ngày 18/3 từ 13h30-14h; ngày 19/3 từ 10-11h30.', 105.856926, 21.018218, N'Phòng khám Jc Caze, 5 Hàng Chuối, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:32.993' AS DateTime), CAST(N'2020-06-28T12:05:32.993' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (531, N'BN-183', N'20/03/2020', N'Trung tâm chăm sóc sức khỏe Hương Sen, 5 Lê Văn Thiêm, Thanh Xuân, Hà Nội; từ 9h-10h30 ngày 18/3.', 105.802733, 21.00217, N'Trung tâm chăm sóc sức khỏe Hương Sen, 5 Lê Văn Thiêm, Thanh Xuân, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.000' AS DateTime), CAST(N'2020-06-28T12:05:33.000' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (532, N'BN-183', N'20/03/2020', N'Khách sạn Sheraton Nghi Tàm, 11 Xuân Diệu, Tây Hồ, Hà Nội, từ  9-12h ngày 20/3', 105.831625, 21.059898, N'Khách sạn Sheraton Nghi Tàm, 11 Xuân Diệu, Tây Hồ, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.007' AS DateTime), CAST(N'2020-06-28T12:05:33.007' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (533, N'BN-243', N'06/04/2020', N'ở Hạ Lôi, Mê Linh, Hà Nội được phát hiện nhiễm nCoV sau khi thành phố rà soát người từng đi khám ở Bệnh viện Bạch Mai.', 105.731461, 21.162101, N'Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.010' AS DateTime), CAST(N'2020-06-28T12:05:33.010' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (534, N'BN-241', N'2020-03-22T00:00:00', N'không có', 105.712339, 10.07892, N'Sân bay Cân Thơ', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.013' AS DateTime), CAST(N'2020-06-28T12:05:33.013' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (535, N'BN-242, BN-244, BN-245, BN-246', N'06/04/2020', N'Ngày 25/3 từ Nga về Việt Nam trên chuyến bay SU290, ghế 23A, 40C, 30H, 49F nhập cảnh tại Nội Bài', 105.80229, 21.216444, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.293' AS DateTime), CAST(N'2020-06-28T12:05:33.293' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (536, N'BN-247', N'07/04/2020', N'BN247 - nam, ở phường 1, quận Bình Thạnh, TP.HCM, là đồng nghiệp, có tiếp xúc gần với BN124 và BN151', 106.696737, 10.798713, N'Phường 1, quận Bình Thạnh, TP.HCM', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.297' AS DateTime), CAST(N'2020-06-28T12:05:33.297' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (537, N'BN-248, BN-249 ', N'12/04/2020', N'BN-248 từ Mỹ quá cảnh Nhật Bản về Việt Nam trên chuyến bay JL079 ngày 23/3 nhập cảnh tại Tân Sơn Nhất; BN249 - nam, 55 tuổi, quốc tịch Việt Nam, từ Mỹ quá cảnh tại Hồng Kông, nhập cảnh ngày 22/3, khởi phát bệnh tại Mỹ.', 106.663159, 10.815633, N'Sân bay Tân Sơn Nhất', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.303' AS DateTime), CAST(N'2020-06-28T12:05:33.303' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (538, N'BN-250, BN-253, BN-254', N'12/04/2020', N'Trú tại Hạ Lôi, Mê Linh, Hà Nội', 105.740232, 21.154957, N'Thôn Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.307' AS DateTime), CAST(N'2020-06-28T12:05:33.307' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (539, N'BN-251', N'08/04/2020', N'BN251 - nam, 64 tuổi, trú tại Bình Nghĩa, Bình Lục, Hà Nam', 106.015045, 20.56099, N'Bình Nghĩa, Bình Lục, Hà Nam', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.313' AS DateTime), CAST(N'2020-06-28T12:05:33.313' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (540, N'BN-255', N'10/04/2020', N'BN255 - nam, 29 tuổi, ở Bắc Quang, Hà Giang, ngày 27/3 từ Nga về Nội Bài trên chuyến bay SU290, được cách ly tập trung tại Vĩnh Phúc.', 105.8008, 21.217257, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.637' AS DateTime), CAST(N'2020-06-28T12:05:33.637' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (541, N'BN-256', N'10/04/2020', N'BN256: nam, 52 tuổi, quốc tịch Việt Nam, có địa chỉ ở Đình Dù, Văn Lâm, Hưng Yên. Ngày 27/3, bệnh nhân từ Nga về sân bay Nội Bài trên chuyến bay số hiệu SU290. Sau khi nhập cảnh, bệnh nhân được chuyển cách ly tập trung tại Trường Văn hóa Nghệ thuật tỉnh Vĩnh Phúc', 105.799912, 21.217702, N'Sân bay quốc tế Nội Bài, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.640' AS DateTime), CAST(N'2020-06-28T12:05:33.640' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (542, N'BN-257, BN-258', N'10/04/2020', N'Trú tại xóm Hội, Hạ Lôi, Mê Linh, Hà Nội. ', 105.737657, 21.155957, N'xóm Hội, Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.647' AS DateTime), CAST(N'2020-06-28T12:05:33.647' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (543, N'BN-259', N'10/04/2020', N'ở xóm Bàng, thôn Hạ Lôi, xã Mê Linh, huyện Mê Linh, Hà Nội', 105.740061, 21.154556, N'ở xóm Bàng, thôn Hạ Lôi, xã Mê Linh, huyện Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.653' AS DateTime), CAST(N'2020-06-28T12:05:33.653' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (544, N'BN-260', N'12/04/2020', N'xóm Đường, thôn Hạ Lôi, Mê Linh, Hà Nội', 105.738044, 21.154637, N'xóm Đường, thôn Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.657' AS DateTime), CAST(N'2020-06-28T12:05:33.657' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (545, N'BN-261', N'12/04/2020', N'trú tại xóm Hội, Hạ Lôi, Mê Linh, Hà Nội, bán tạp hoá tại chợ Hạ trong xóm Hội,', 105.735001, 21.160353, N'xóm Hội, Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.937' AS DateTime), CAST(N'2020-06-28T12:05:33.937' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (546, N'BN-262', N'12/04/2020', N'trú tại xóm Chợ, Hạ Lôi, Mê Linh, Hà Nội', 105.736806, 21.161966, N'xóm Chợ, Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.943' AS DateTime), CAST(N'2020-06-28T12:05:33.943' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (547, N'BN-263, BN-264 ', N'12/04/2020', N'trú tại Hạ Lôi, Mê Linh, Hà Nội', 105.741972, 21.153165, N'trú tại Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.947' AS DateTime), CAST(N'2020-06-28T12:05:33.947' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (548, N'BN-265', N'13/04/2020', N'Ngày 23/3 từ Thái Lan nhập cảnh về Việt Nam qua cửa khẩu Cha Lo, Quảng Bình', 105.765374, 17.680544, N'Cửa khẩu Cha Lo, Quảng Bình', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.953' AS DateTime), CAST(N'2020-06-28T12:05:33.953' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (549, N'BN-266', N'14/04/2020', N'trú tại Thường Tín, Hà Nội', 105.879281, 20.850169, N'Thường Tín, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:33.957' AS DateTime), CAST(N'2020-06-28T12:05:33.957' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (550, N'BN-264', N'15/03/2020', N'Từ 15/3/2020, bệnh nhân thường xuyên đi tập gym tại phòng tập gym Lucky star – KĐT Tiền Phong; thường tập vào các ca 6h30 đến 8h00 và 15h00-16h30; ngày cuối cùng đi tập gym ngày 25/3/2020', 105.764608, 21.144114, N'Lucky star – KĐT Tiền Phong, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:34.193' AS DateTime), CAST(N'2020-06-28T12:05:34.193' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (551, N'BN-264', N'15/04/2020', N'Sáng ngày 25/3/2020, bệnh nhân cùng bạn đến công viên Nghĩa Đô - Cầu Giấy uống coffe từ 10h-10h20', 105.796812, 21.040415, N'Công viên Nghĩa Đô, Cầu Giấy, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:34.197' AS DateTime), CAST(N'2020-06-28T12:05:34.197' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (552, N'BN-264', N'15/04/2020', N'Đến Vincom Trần Duy Hưng ăn trưa từ 13h00-14h00', 105.7951, 21.006456, N'Vincom Trần Duy Hưng, Láng Thượng, Cầu Giấy, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:34.200' AS DateTime), CAST(N'2020-06-28T12:05:34.200' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (553, N'BN-267', N'08/04/2020', N' xóm Hội, Hạ Lôi, Mê Linh, Hà Nội', 105.737507, 21.156856, N' xóm Hội, Hạ Lôi, Mê Linh, Hà Nội', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:34.203' AS DateTime), CAST(N'2020-06-28T12:05:34.203' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (554, N'BN-268 ', N'16/04/2020', N'Đồng Văn, tỉnh Hà Giang', 105.245356, 23.272223, N'Đồng Văn, tỉnh Hà Giang', N'F0', 300, 50, 1, 1, NULL, CAST(N'2020-06-28T12:05:34.207' AS DateTime), CAST(N'2020-06-28T12:05:34.207' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (555, N'BN 156', N'28/06/2020', N'Nguy hiểm', 105.8195148780942, 21.001985274388733, N'55, Đường Nguyễn Trãi, Phường Khương Trung, Quận Thanh Xuân, Ngã Tư Sở, Đống Đa, Hà Nội, Việt Nam', NULL, 300, 60, 0, 0, N'0336644881', CAST(N'2020-06-28T13:08:48.190' AS DateTime), CAST(N'2020-07-06T03:29:52.357' AS DateTime))
GO
INSERT [dbo].[PositionWarning] ([Id], [Name], [VerifyDate], [Note], [Lng], [Lat], [Address], [PatientGroup], [TimeOut], [Radius], [IsCallAPI], [IsActive], [CreatedAdmin], [CreatedDate], [UpdatedDate]) VALUES (556, N'W-01-F1', N'07/06/2020', N'Nguy hiểm', 105.81564847379924, 21.009229241523975, N'168 Ngõ Thái Thịnh, Quận Đống Đa, Thịnh Quang, Đống Đa, Hà Nội, Việt Nam', NULL, 300, 300, 0, 1, N'0336644881', CAST(N'2020-07-05T18:31:03.700' AS DateTime), CAST(N'2020-07-05T18:31:03.700' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PositionWarning] OFF
GO
SET IDENTITY_INSERT [dbo].[RegisIsolation] ON 
GO
INSERT [dbo].[RegisIsolation] ([Id], [Username], [ProvinceCode], [DistrictCode], [RegisAddress], [RegisIsolationStatus], [RegisDate], [FinishIsolationStatus], [FinishDate], [CancelIsolationStatus], [CancelDate]) VALUES (7, N'0336644880', N'101', N'10109', N'Tây Sơn', 1, CAST(N'2020-06-28T07:06:53.473' AS DateTime), 0, NULL, -1, CAST(N'2020-06-28T08:45:18.023' AS DateTime))
GO
INSERT [dbo].[RegisIsolation] ([Id], [Username], [ProvinceCode], [DistrictCode], [RegisAddress], [RegisIsolationStatus], [RegisDate], [FinishIsolationStatus], [FinishDate], [CancelIsolationStatus], [CancelDate]) VALUES (8, N'0982034125', N'101', N'10109', N'Tây Sơn', 1, CAST(N'2020-06-28T07:07:57.423' AS DateTime), 1, CAST(N'2020-06-28T08:31:20.613' AS DateTime), 1, CAST(N'2020-06-28T08:30:26.920' AS DateTime))
GO
INSERT [dbo].[RegisIsolation] ([Id], [Username], [ProvinceCode], [DistrictCode], [RegisAddress], [RegisIsolationStatus], [RegisDate], [FinishIsolationStatus], [FinishDate], [CancelIsolationStatus], [CancelDate]) VALUES (9, N'0336644881', N'101', N'10107', N'100 Trần Đại Nghĩa', 1, CAST(N'2020-07-05T18:35:30.483' AS DateTime), 1, CAST(N'2020-07-05T18:36:10.307' AS DateTime), 1, CAST(N'2020-07-05T18:36:06.897' AS DateTime))
GO
INSERT [dbo].[RegisIsolation] ([Id], [Username], [ProvinceCode], [DistrictCode], [RegisAddress], [RegisIsolationStatus], [RegisDate], [FinishIsolationStatus], [FinishDate], [CancelIsolationStatus], [CancelDate]) VALUES (10, N'0379292544', N'101', N'10107', N'Kí túc xá Bách Khoa', 1, CAST(N'2020-07-05T18:47:14.943' AS DateTime), 1, CAST(N'2020-07-08T14:10:35.660' AS DateTime), 1, CAST(N'2020-07-08T14:10:31.160' AS DateTime))
GO
INSERT [dbo].[RegisIsolation] ([Id], [Username], [ProvinceCode], [DistrictCode], [RegisAddress], [RegisIsolationStatus], [RegisDate], [FinishIsolationStatus], [FinishDate], [CancelIsolationStatus], [CancelDate]) VALUES (11, N'0982034125', N'101', N'10108', N'123 Hoàng Mai', 1, CAST(N'2020-07-06T02:12:30.553' AS DateTime), 1, CAST(N'2020-07-06T02:16:53.437' AS DateTime), 1, CAST(N'2020-07-06T02:12:30.553' AS DateTime))
GO
INSERT [dbo].[RegisIsolation] ([Id], [Username], [ProvinceCode], [DistrictCode], [RegisAddress], [RegisIsolationStatus], [RegisDate], [FinishIsolationStatus], [FinishDate], [CancelIsolationStatus], [CancelDate]) VALUES (12, N'0336644881', N'107', N'10103', N'chí linh', 1, CAST(N'2020-07-08T14:12:14.177' AS DateTime), 0, NULL, 0, CAST(N'2020-07-08T14:12:14.177' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[RegisIsolation] OFF
GO
SET IDENTITY_INSERT [dbo].[TestHealth] ON 
GO
INSERT [dbo].[TestHealth] ([Id], [Username], [IsFever], [IsCough], [IsDyspnoeic], [IsTired], [HealthStatus], [HealthUpdDate]) VALUES (1, N'0336644881', 0, 0, 0, 0, 0, CAST(N'2020-07-06T02:17:31.540' AS DateTime))
GO
INSERT [dbo].[TestHealth] ([Id], [Username], [IsFever], [IsCough], [IsDyspnoeic], [IsTired], [HealthStatus], [HealthUpdDate]) VALUES (15, N'0336644880', 0, 0, 0, 0, 0, CAST(N'2020-06-27T20:42:54.090' AS DateTime))
GO
INSERT [dbo].[TestHealth] ([Id], [Username], [IsFever], [IsCough], [IsDyspnoeic], [IsTired], [HealthStatus], [HealthUpdDate]) VALUES (16, N'0982034125', 1, 1, 0, 0, 2, CAST(N'2020-06-27T21:39:15.890' AS DateTime))
GO
INSERT [dbo].[TestHealth] ([Id], [Username], [IsFever], [IsCough], [IsDyspnoeic], [IsTired], [HealthStatus], [HealthUpdDate]) VALUES (18, N'0962626032', 0, 0, 0, 0, 0, CAST(N'2020-06-28T12:20:21.403' AS DateTime))
GO
INSERT [dbo].[TestHealth] ([Id], [Username], [IsFever], [IsCough], [IsDyspnoeic], [IsTired], [HealthStatus], [HealthUpdDate]) VALUES (19, N'0379292544', 0, 0, 0, 0, 0, CAST(N'2020-07-06T03:53:35.317' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TestHealth] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [Username], [GroupCode], [Password], [FullName], [BirthDay], [Sex], [CMND], [ProvinceCode], [DistrictCode], [Address], [IsActive], [CreatedDate], [UpdatedDate], [NumberRating], [Rating], [IsRegisAdmin]) VALUES (15, N'0336644880', N'ADMIN', N'005f47cddf568dacb8d03e20ba682cf9', N'Vân Anh', CAST(N'2020-05-29T00:00:00.000' AS DateTime), N'0', N'125700566', N'101', N'10109', N'Thịnh Quang', 1, CAST(N'2020-06-27T20:42:54.003' AS DateTime), CAST(N'2020-06-28T09:12:36.723' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[User] ([Id], [Username], [GroupCode], [Password], [FullName], [BirthDay], [Sex], [CMND], [ProvinceCode], [DistrictCode], [Address], [IsActive], [CreatedDate], [UpdatedDate], [NumberRating], [Rating], [IsRegisAdmin]) VALUES (1, N'0336644881', N'SADMIN', N'005f47cddf568dacb8d03e20ba682cf9', N'Đặng Thị Vân Anh', CAST(N'2020-12-06T00:00:00.000' AS DateTime), N'0', N'145700544', N'109', N'10903', N'Thịnh Quang', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), CAST(N'2020-07-05T19:48:31.837' AS DateTime), 4, 3, 1)
GO
INSERT [dbo].[User] ([Id], [Username], [GroupCode], [Password], [FullName], [BirthDay], [Sex], [CMND], [ProvinceCode], [DistrictCode], [Address], [IsActive], [CreatedDate], [UpdatedDate], [NumberRating], [Rating], [IsRegisAdmin]) VALUES (19, N'0379292544', N'USER', N'005f47cddf568dacb8d03e20ba682cf9', N'Vũ Thị Hằng', CAST(N'2020-07-10T00:00:00.000' AS DateTime), N'0', N'145700555', N'109', N'10103', N'phố Nối, Mỹ Hào, Hưng Yên', 1, CAST(N'2020-07-05T18:42:36.273' AS DateTime), CAST(N'2020-07-08T14:02:37.153' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[User] ([Id], [Username], [GroupCode], [Password], [FullName], [BirthDay], [Sex], [CMND], [ProvinceCode], [DistrictCode], [Address], [IsActive], [CreatedDate], [UpdatedDate], [NumberRating], [Rating], [IsRegisAdmin]) VALUES (18, N'0962626032', N'USER', N'5e4a1848239cf320cb3f57d1b02462f6', N'Doãn Thị Duyên', CAST(N'1995-11-20T00:00:00.000' AS DateTime), N'0', N'174688186', N'101', N'10101', N'Ngõ 2, Phạm Văn Đồng', 1, CAST(N'2020-06-28T08:30:40.997' AS DateTime), CAST(N'2020-06-28T09:40:52.983' AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[User] ([Id], [Username], [GroupCode], [Password], [FullName], [BirthDay], [Sex], [CMND], [ProvinceCode], [DistrictCode], [Address], [IsActive], [CreatedDate], [UpdatedDate], [NumberRating], [Rating], [IsRegisAdmin]) VALUES (16, N'0982034125', N'ADMIN', N'005f47cddf568dacb8d03e20ba682cf9', N'Như Minh Lý', CAST(N'1998-08-11T00:00:00.000' AS DateTime), N'0', N'145823146', N'101', N'10109', N'Số nhà 118A, ngõ Thái Thịnh', 1, CAST(N'2020-06-27T21:04:59.803' AS DateTime), CAST(N'2020-06-27T21:36:08.853' AS DateTime), 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserGroup] ON 
GO
INSERT [dbo].[UserGroup] ([Id], [GroupCode], [GroupName], [Description], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (1, N'ADMIN', N'Admin', N'Nhóm quản trị viên', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserGroup] ([Id], [GroupCode], [GroupName], [Description], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (3, N'SADMIN', N'SAdmin', N'Quản trị hệ thống', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserGroup] ([Id], [GroupCode], [GroupName], [Description], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (2, N'USER', N'User', N'Nhóm người dùng', 1, CAST(N'2020-05-29T00:00:00.000' AS DateTime), CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserGroup] OFF
GO
ALTER TABLE [dbo].[ConnectRate]  WITH CHECK ADD  CONSTRAINT [R_1267] FOREIGN KEY([UserRating])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[ConnectRate] CHECK CONSTRAINT [R_1267]
GO
ALTER TABLE [dbo].[ConnectRate]  WITH CHECK ADD  CONSTRAINT [R_1268] FOREIGN KEY([IdWarning])
REFERENCES [dbo].[PositionWarning] ([Id])
GO
ALTER TABLE [dbo].[ConnectRate] CHECK CONSTRAINT [R_1268]
GO
ALTER TABLE [dbo].[Mst_District]  WITH CHECK ADD  CONSTRAINT [R_1258] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Mst_Province] ([ProvinceCode])
GO
ALTER TABLE [dbo].[Mst_District] CHECK CONSTRAINT [R_1258]
GO
ALTER TABLE [dbo].[PositionHistoryDetail]  WITH CHECK ADD  CONSTRAINT [R_1265] FOREIGN KEY([TimeOutId])
REFERENCES [dbo].[PositionHistory] ([Id])
GO
ALTER TABLE [dbo].[PositionHistoryDetail] CHECK CONSTRAINT [R_1265]
GO
ALTER TABLE [dbo].[PositionWarning]  WITH CHECK ADD  CONSTRAINT [R_1266] FOREIGN KEY([CreatedAdmin])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[PositionWarning] CHECK CONSTRAINT [R_1266]
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
USE [master]
GO
ALTER DATABASE [Covid19] SET  READ_WRITE 
GO
