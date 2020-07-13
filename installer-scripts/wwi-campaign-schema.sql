USE [master]
GO
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'LoginMode', REG_DWORD, 2
GO

ALTER LOGIN sa ENABLE ;
GO
ALTER LOGIN sa WITH PASSWORD = 'MSAzure#123' ;
GO

USE [master]
GO

USE [master]
GO

/****** Object:  Database [WWICampaign]    Script Date: 08-07-2020 13:10:55 ******/
CREATE DATABASE [WWICampaign]
--  ON  PRIMARY 
-- ( NAME = N'WWICampaign', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\WWICampaign.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
--  LOG ON 
-- ( NAME = N'WWICampaign_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\WWICampaign_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

EXEC dbo.sp_dbcmptlevel @dbname=N'WWICampaign', @new_cmptlevel=90
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WWICampaign].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [WWICampaign] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [WWICampaign] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [WWICampaign] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [WWICampaign] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [WWICampaign] SET ARITHABORT OFF 
GO

ALTER DATABASE [WWICampaign] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [WWICampaign] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [WWICampaign] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [WWICampaign] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [WWICampaign] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [WWICampaign] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [WWICampaign] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [WWICampaign] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [WWICampaign] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [WWICampaign] SET  DISABLE_BROKER 
GO

ALTER DATABASE [WWICampaign] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [WWICampaign] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [WWICampaign] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [WWICampaign] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [WWICampaign] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [WWICampaign] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [WWICampaign] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [WWICampaign] SET  MULTI_USER 
GO

ALTER DATABASE [WWICampaign] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [WWICampaign] SET DB_CHAINING OFF 
GO

ALTER DATABASE [WWICampaign] SET  READ_WRITE 
GO

USE [WWICampaign]
GO

/****** Object:  Table [dbo].[CampaignData]    Script Date: 08-07-2020 13:11:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CampaignData](
	[ID] [smallint] NOT NULL,
	[CampaignName] [nvarchar](50) NOT NULL,
	[CampaignTactic] [nvarchar](50) NOT NULL,
	[CampaignStartDate] [nvarchar](50) NOT NULL,
	[Expense] [float] NOT NULL,
	[MarketingCost] [float] NOT NULL,
	[Profit] [float] NOT NULL,
	[LocationID] [tinyint] NOT NULL,
	[Revenue] [float] NOT NULL,
	[RevenueTarget] [float] NOT NULL,
	[ROI] [smallint] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[ProductID] [smallint] NOT NULL,
	[Sentiment] [nvarchar](50) NOT NULL,
	[Response] [smallint] NOT NULL,
	[CampaignID] [tinyint] NOT NULL,
	[CampaignRowKey] [smallint] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CampaignProducts]    Script Date: 08-07-2020 13:12:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CampaignProducts](
	[Campaign] [nvarchar](50) NOT NULL,
	[ProductCategory] [nvarchar](50) NOT NULL,
	[Hashtag] [nvarchar](50) NOT NULL,
	[Counts] [smallint] NOT NULL,
	[ProductID] [smallint] NOT NULL,
	[CampaignRowKey] [smallint] NULL,
	[SelectedFlag] [bit] NOT NULL,
	[Sentiment] [nvarchar](50) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 08-07-2020 13:12:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[ProductID] [smallint] NOT NULL,
	[ProductCode] [nvarchar](50) NOT NULL,
	[BarCode] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Price] [float] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Thumbnail_FileName] [nvarchar](50) NULL,
	[AdImage_FileName] [nvarchar](50) NULL,
	[SoundFile_FileName] [nvarchar](50) NULL,
	[CreatedDate] [nvarchar](50) NULL,
	[Dimensions] [nvarchar](50) NULL,
	[Colour] [nvarchar](50) NULL,
	[Weight] [float] NOT NULL,
	[MaxLoad] [float] NULL,
	[BasePrice] [smallint] NOT NULL,
	[id] [tinyint] NOT NULL,
	[TaxRate] [tinyint] NOT NULL,
	[SellingPrice] [float] NOT NULL,
	[COGS_PER] [tinyint] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TwitterAnalytics]    Script Date: 08-07-2020 13:13:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TwitterAnalytics](
	[CreatedAt] [nvarchar](50) NOT NULL,
	[Hashtag] [nvarchar](50) NOT NULL,
	[Tweet] [nvarchar](150) NOT NULL,
	[City] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[RetweetCount] [tinyint] NOT NULL,
	[FavouriteCount] [tinyint] NOT NULL,
	[Sentiment] [nvarchar](50) NOT NULL,
	[SentimentScore] [tinyint] NOT NULL,
	[IsRetweet] [bit] NOT NULL,
	[HourOfDay] [tinyint] NOT NULL,
	[Language] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
