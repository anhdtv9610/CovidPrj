USE [master]
GO
/****** Object:  Database [Covid19]    Script Date: 3/6/2020 9:59:18 PM ******/
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
/****** Object:  Default [StringEmpty]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE DEFAULT [dbo].[StringEmpty] 
AS
''
GO
/****** Object:  Default [ValueOne]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE DEFAULT [dbo].[ValueOne] 
AS
1
GO
/****** Object:  Default [ValueZero]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE DEFAULT [dbo].[ValueZero] 
AS
0
GO
/****** Object:  UserDefinedDataType [dbo].[MyDateTime]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[MyDateTime] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyImage]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[MyImage] FROM [image] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyInteger]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[MyInteger] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyStatus]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[MyStatus] FROM [nvarchar](10) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyText]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[MyText] FROM [ntext] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyTimeStamp]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[MyTimeStamp] FROM [bigint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[MyValue]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[MyValue] FROM [float] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar10]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar10] FROM [varchar](10) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar100]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar100] FROM [nvarchar](100) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar20]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar20] FROM [nvarchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar200]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar200] FROM [nvarchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar2000]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar2000] FROM [nvarchar](2000) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar30]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar30] FROM [nvarchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar400]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar400] FROM [nvarchar](400) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar50]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar50] FROM [nvarchar](50) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Varchar500]    Script Date: 3/6/2020 9:59:19 PM ******/
CREATE TYPE [dbo].[Varchar500] FROM [nvarchar](500) NULL
GO
/****** Object:  Table [dbo].[KBYT]    Script Date: 3/6/2020 9:59:19 PM ******/
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
/****** Object:  Table [dbo].[Mst_District]    Script Date: 3/6/2020 9:59:19 PM ******/
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
/****** Object:  Table [dbo].[Mst_Province]    Script Date: 3/6/2020 9:59:19 PM ******/
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
/****** Object:  Table [dbo].[RegisIsolation]    Script Date: 3/6/2020 9:59:19 PM ******/
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
/****** Object:  Table [dbo].[TestHealth]    Script Date: 3/6/2020 9:59:19 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 3/6/2020 9:59:19 PM ******/
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
/****** Object:  Table [dbo].[UserGroup]    Script Date: 3/6/2020 9:59:19 PM ******/
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
USE [master]
GO
ALTER DATABASE [Covid19] SET  READ_WRITE 
GO
