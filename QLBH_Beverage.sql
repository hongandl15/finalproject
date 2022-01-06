USE [master]
GO

/****** Object:  Database [QLBH]    Script Date: 1/2/2022 12:51:53 AM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'D:\database\QLBH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'D:\database\QLBH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO

ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO

ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [QLBH] SET RECOVERY FULL 
GO

ALTER DATABASE [QLBH] SET  MULTI_USER 
GO

ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO

ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [QLBH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [QLBH] SET QUERY_STORE = OFF
GO

ALTER DATABASE [QLBH] SET  READ_WRITE 
GO

CREATE TABLE [tbl_Accountant](
	[AccountantID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Birthday] [date] NULL,
	[Address] [nvarchar](100) NOT NULL,
 )
 CREATE TABLE [tbl_Agent](
	[AgentID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL
	PRIMARY KEY (AgentID)
 )
 CREATE TABLE [tbl_Beverage](
	[BeverageID] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Cost] [int] NULL,
	PRIMARY KEY (BeverageID, ProductName)
 )

 CREATE TABLE [tbl_OverviewDeliveryNote](
	[DeliveryID] [nvarchar](50) NOT NULL,
	Date [nvarchar](50),
	Agent [nvarchar](50),
	Phone [nvarchar](50),
	Address [nvarchar](50),
	TotalPrice [money],
	PRIMARY KEY (DeliveryID),
 )
 CREATE TABLE [tbl_OverviewReceivedNote](
	[ReceivedID] [nvarchar](50) NOT NULL,
	Date [nvarchar](50),
	Agent [nvarchar](50),
	Phone [nvarchar](50),
	Address [nvarchar](50),
	TotalPrice [money],
	PRIMARY KEY (ReceivedID),
 )


 INSERT INTO tbl_Accountant VALUES  ('A01','Jayson','Male', '05-14-2000', 'Ho Chi Minh'),
									('A02','Thomas','Male', '11-16-2001', 'Ho Chi Minh'),
									('A03','Adele','Female', '01-25-1999', 'Ho Chi Minh')


INSERT INTO tbl_Agent VALUES ('AG01','Green House','Dong Nai', '0912345127'),
							 ('AG02','NPP','Tay Ninh', '0851231258')



INSERT INTO tbl_Beverage VALUES	('B01', 'Pepsi', 'Soft drink',0, 10000),
								('B02', 'O Long', 'Tea',0, 12000),
								('B03', 'Revice', 'Sport drink',0, 9000),
								('B04', 'Orange', 'Juice drink',0, 15000),
								('B05', 'Green Tea', 'Tea',0, 10000),
								('B06', 'Sting', 'Soft drink',0, 12000),
								('B07', 'Redbull', 'Sport drink',0, 14000),
								('B08', 'C2', 'Tea',0, 8000),
								('B09', 'Apple', 'Juice drink',0, 13000),
								('B10', 'Lime', 'Juice drink',0, 11000)

