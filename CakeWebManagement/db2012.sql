USE [master]
GO
/****** Object:  Database [ShoppingCartDB]    Script Date: 01/08/2022 04:20:47 ******/
CREATE DATABASE [ShoppingCartDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingCartDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ShoppingCartDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoppingCartDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ShoppingCartDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoppingCartDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingCartDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingCartDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingCartDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingCartDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppingCartDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingCartDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoppingCartDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingCartDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingCartDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingCartDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingCartDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ShoppingCartDB]
GO
/****** Object:  Table [dbo].[OrderTable]    Script Date: 01/08/2022 04:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTable](
	[idO] [int] IDENTITY(1,1) NOT NULL,
	[idP] [int] NULL,
	[idU] [int] NULL,
	[totalPrice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTable]    Script Date: 01/08/2022 04:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTable](
	[idP] [int] IDENTITY(1,1) NOT NULL,
	[labelP] [varchar](250) NULL,
	[desP] [varchar](1000) NULL,
	[priceP] [float] NULL,
	[qtyP] [int] NULL,
	[photopath] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopcartTable]    Script Date: 01/08/2022 04:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopcartTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idP] [int] NULL,
	[priceP] [float] NULL,
	[qtyP] [int] NULL,
	[idU] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 01/08/2022 04:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductTable] ON 

INSERT [dbo].[ProductTable] ([idP], [labelP], [desP], [priceP], [qtyP], [photopath]) VALUES (1, N'Luscious Red Velvet Cakes', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 100, 1, N'~/images/cake1.jpg')
INSERT [dbo].[ProductTable] ([idP], [labelP], [desP], [priceP], [qtyP], [photopath]) VALUES (2, N'Oreo Cake', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 150, 1, N'~/images/cake3.jpg')
INSERT [dbo].[ProductTable] ([idP], [labelP], [desP], [priceP], [qtyP], [photopath]) VALUES (3, N'Chocolate Cake', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 240, 1, N'~/images/cake2.jpg')
INSERT [dbo].[ProductTable] ([idP], [labelP], [desP], [priceP], [qtyP], [photopath]) VALUES (4, N'Heart & Roses Designer Cake', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 210, 1, N'~/images/cake6.jpg')
INSERT [dbo].[ProductTable] ([idP], [labelP], [desP], [priceP], [qtyP], [photopath]) VALUES (5, N'Creamy Christmas Tree Cake', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 225, 1, N'~/images/cake5.jpg')
SET IDENTITY_INSERT [dbo].[ProductTable] OFF
GO
SET IDENTITY_INSERT [dbo].[shopcartTable] ON 

INSERT [dbo].[shopcartTable] ([id], [idP], [priceP], [qtyP], [idU]) VALUES (1, 1, 150, 1, 1)
INSERT [dbo].[shopcartTable] ([id], [idP], [priceP], [qtyP], [idU]) VALUES (2, 2, 200, 1, 1)
INSERT [dbo].[shopcartTable] ([id], [idP], [priceP], [qtyP], [idU]) VALUES (3, 3, 100, 1, 1)
INSERT [dbo].[shopcartTable] ([id], [idP], [priceP], [qtyP], [idU]) VALUES (4, 2, 200, 2, 1)
INSERT [dbo].[shopcartTable] ([id], [idP], [priceP], [qtyP], [idU]) VALUES (11, 2, 200, 1, 1)
SET IDENTITY_INSERT [dbo].[shopcartTable] OFF
GO
SET IDENTITY_INSERT [dbo].[UserTable] ON 

INSERT [dbo].[UserTable] ([Uid], [fname], [lname], [email], [password]) VALUES (1, N'sayem', N'', NULL, NULL)
INSERT [dbo].[UserTable] ([Uid], [fname], [lname], [email], [password]) VALUES (2, N'a', N'a', N'a@gmail.com', N'a')
INSERT [dbo].[UserTable] ([Uid], [fname], [lname], [email], [password]) VALUES (3, N'joynal', N'abedin', N'joynal@mail.com', N'123')
SET IDENTITY_INSERT [dbo].[UserTable] OFF
GO
USE [master]
GO
ALTER DATABASE [ShoppingCartDB] SET  READ_WRITE 
GO
