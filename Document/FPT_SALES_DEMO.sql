USE [master]
GO
/****** Object:  Database [FPT_SALES_DEMO1]    Script Date: 1/30/2024 10:56:21 PM ******/
CREATE DATABASE [FPT_SALES_DEMO1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FPT_SALES_DEMO1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.THANHDAT\MSSQL\DATA\FPT_SALES_DEMO1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FPT_SALES_DEMO1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.THANHDAT\MSSQL\DATA\FPT_SALES_DEMO1_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FPT_SALES_DEMO1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET ARITHABORT OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET RECOVERY FULL 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET  MULTI_USER 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FPT_SALES_DEMO1', N'ON'
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET QUERY_STORE = ON
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FPT_SALES_DEMO1]
GO
/****** Object:  Table [dbo].[Agency]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agency](
	[agency_id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[phone] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[agency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[booking_id] [int] IDENTITY(1,1) NOT NULL,
	[opening_id] [int] NULL,
	[customer_id] [int] NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[booking_date] [datetimeoffset](7) NOT NULL,
	[deposit_amount] [decimal](10, 2) NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[property_id] [int] NOT NULL,
 CONSTRAINT [PK__Booking__5DE3A5B1B43A51C2] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[phone] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Investor]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Investor](
	[investor_id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[address] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[investor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[item_id] [int] NOT NULL,
	[icon] [nvarchar](100) NOT NULL,
	[value] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningForSales]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningForSales](
	[opening_id] [int] NOT NULL,
	[start_date] [datetimeoffset](7) NOT NULL,
	[end_date] [datetimeoffset](7) NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[property_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[opening_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningForSalesDetail]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningForSalesDetail](
	[opening_id] [int] NOT NULL,
	[property_id] [int] NOT NULL,
	[agency_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[opening_id] ASC,
	[property_id] ASC,
	[agency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] NOT NULL,
	[booking_id] [int] NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[payment_date] [date] NOT NULL,
	[method] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetail]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetail](
	[detail_id] [int] NOT NULL,
	[payment_id] [int] NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[payment_date] [date] NOT NULL,
	[method] [varchar](50) NOT NULL,
	[note] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[project_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[start_date] [datetimeoffset](7) NOT NULL,
	[end_date] [datetimeoffset](7) NULL,
	[description] [nvarchar](max) NULL,
	[investor_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[project_id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[start_date] [datetimeoffset](7) NOT NULL,
	[end_date] [datetimeoffset](7) NULL,
	[description] [nvarchar](max) NULL,
	[investor_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Properties](
	[property_id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[image] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK__Property__735BA46326F20856] PRIMARY KEY CLUSTERED 
(
	[property_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyItems]    Script Date: 1/30/2024 10:56:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyItems](
	[propertyItem_id] [int] NOT NULL,
	[property_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[propertyItem_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Agency] ([agency_id], [name], [email], [phone]) VALUES (1, N'ABC Realty', N'info@abcrealty.com', N'111222333')
INSERT [dbo].[Agency] ([agency_id], [name], [email], [phone]) VALUES (2, N'XYZ Realtors', N'info@xyzrealtors.com', N'444555666')
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([booking_id], [opening_id], [customer_id], [email], [phone], [booking_date], [deposit_amount], [status], [property_id]) VALUES (1, 1, 1, N'datntse150392', N'0918489961', CAST(N'2024-01-30T12:13:41.5510000+00:00' AS DateTimeOffset), CAST(5000000.00 AS Decimal(10, 2)), N'pending', 1)
INSERT [dbo].[Bookings] ([booking_id], [opening_id], [customer_id], [email], [phone], [booking_date], [deposit_amount], [status], [property_id]) VALUES (2, NULL, NULL, N'datntse150392', N'0918489961', CAST(N'2024-01-30T12:16:33.3330000+00:00' AS DateTimeOffset), CAST(5000000.00 AS Decimal(10, 2)), N'pending', 1)
INSERT [dbo].[Bookings] ([booking_id], [opening_id], [customer_id], [email], [phone], [booking_date], [deposit_amount], [status], [property_id]) VALUES (3, NULL, NULL, N'datntse150392@fpt.edu.vn', N'0918489961', CAST(N'2024-01-30T12:17:08.7660000+00:00' AS DateTimeOffset), CAST(5000000.00 AS Decimal(10, 2)), N'pending', 1)
INSERT [dbo].[Bookings] ([booking_id], [opening_id], [customer_id], [email], [phone], [booking_date], [deposit_amount], [status], [property_id]) VALUES (4, NULL, NULL, N'datntse150392@fpt.edu.vn', N'0918489961', CAST(N'2024-01-30T15:55:10.6870000+00:00' AS DateTimeOffset), CAST(5000000.00 AS Decimal(10, 2)), N'pending', 1)
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
INSERT [dbo].[Customer] ([customer_id], [name], [email], [phone]) VALUES (1, N'John Doe', N'john.doe@example.com', N'123456789')
INSERT [dbo].[Customer] ([customer_id], [name], [email], [phone]) VALUES (2, N'Jane Smith', N'jane.smith@example.com', N'987654321')
INSERT [dbo].[Customer] ([customer_id], [name], [email], [phone]) VALUES (3, N'Alice Johnson', N'alice.johnson@example.com', N'456123789')
GO
INSERT [dbo].[Investor] ([investor_id], [name], [email], [phone], [address]) VALUES (1, N'Investor1', N'investor1@example.com', N'111111111', N'123 Main Street')
INSERT [dbo].[Investor] ([investor_id], [name], [email], [phone], [address]) VALUES (2, N'Investor2', N'investor2@example.com', N'222222222', N'456 Elm Street')
GO
INSERT [dbo].[Items] ([item_id], [icon], [value]) VALUES (1, N'bed', 1)
INSERT [dbo].[Items] ([item_id], [icon], [value]) VALUES (2, N'bed', 2)
INSERT [dbo].[Items] ([item_id], [icon], [value]) VALUES (3, N'bed', 3)
INSERT [dbo].[Items] ([item_id], [icon], [value]) VALUES (4, N'bath', 1)
INSERT [dbo].[Items] ([item_id], [icon], [value]) VALUES (5, N'bath', 2)
INSERT [dbo].[Items] ([item_id], [icon], [value]) VALUES (6, N'area', 52)
INSERT [dbo].[Items] ([item_id], [icon], [value]) VALUES (7, N'area', 82)
GO
INSERT [dbo].[OpeningForSales] ([opening_id], [start_date], [end_date], [status], [property_id]) VALUES (1, CAST(N'2024-02-01T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-02-15T00:00:00.0000000+00:00' AS DateTimeOffset), N'Open', 1)
INSERT [dbo].[OpeningForSales] ([opening_id], [start_date], [end_date], [status], [property_id]) VALUES (2, CAST(N'2024-02-10T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-02-25T00:00:00.0000000+00:00' AS DateTimeOffset), N'Upcoming', 2)
GO
INSERT [dbo].[Projects] ([project_id], [name], [status], [start_date], [end_date], [description], [investor_id]) VALUES (1, N'Project A', N'Ongoing', CAST(N'2023-01-01T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2023-12-31T00:00:00.0000000+00:00' AS DateTimeOffset), N'Description of Project A', 1)
INSERT [dbo].[Projects] ([project_id], [name], [status], [start_date], [end_date], [description], [investor_id]) VALUES (2, N'Project B', N'Completed', CAST(N'2022-06-01T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2023-05-31T00:00:00.0000000+00:00' AS DateTimeOffset), N'Description of Project B', 2)
GO
SET IDENTITY_INSERT [dbo].[Properties] ON 

INSERT [dbo].[Properties] ([property_id], [project_id], [title], [address], [price], [image], [description]) VALUES (1, 1, N'Vinhomes Ocean Park - S1.112305', N'S1.112305', CAST(3.94 AS Decimal(10, 2)), N'https://storage.googleapis.com/digital-platform/3_PN_6_large_37de4954c9/3_PN_6_large_37de4954c9.jpeg', N'Nothing')
INSERT [dbo].[Properties] ([property_id], [project_id], [title], [address], [price], [image], [description]) VALUES (2, 1, N'Vinhomes Ocean Park - P31203', N'P31203', CAST(2.56 AS Decimal(10, 2)), N'https://storage.googleapis.com/digital-platform/3_PN_5_large_00fa486b91/3_PN_5_large_00fa486b91.jpeg', N'Nothing')
INSERT [dbo].[Properties] ([property_id], [project_id], [title], [address], [price], [image], [description]) VALUES (5, 1, N'Vinhomes Ocean Park - R1.013109', N'R1.013109', CAST(2.84 AS Decimal(10, 2)), N'https://storage.googleapis.com/digital-platform/1_PN_1_4_small_df92bed462/1_PN_1_4_small_df92bed462.jpg', N'Nothing')
SET IDENTITY_INSERT [dbo].[Properties] OFF
GO
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (1, 1, 1)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (2, 1, 6)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (3, 1, 4)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (4, 2, 1)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (5, 2, 4)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (6, 2, 6)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (7, 5, 3)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (8, 5, 5)
INSERT [dbo].[PropertyItems] ([propertyItem_id], [property_id], [item_id]) VALUES (9, 5, 7)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Agency__AB6E61646965BFA9]    Script Date: 1/30/2024 10:56:21 PM ******/
ALTER TABLE [dbo].[Agency] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__AB6E61643999A504]    Script Date: 1/30/2024 10:56:21 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Investor__AB6E6164E6B5D416]    Script Date: 1/30/2024 10:56:21 PM ******/
ALTER TABLE [dbo].[Investor] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK__Booking__custome__5441852A] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK__Booking__custome__5441852A]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK__Booking__opening__534D60F1] FOREIGN KEY([opening_id])
REFERENCES [dbo].[OpeningForSales] ([opening_id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK__Booking__opening__534D60F1]
GO
ALTER TABLE [dbo].[OpeningForSalesDetail]  WITH CHECK ADD FOREIGN KEY([agency_id])
REFERENCES [dbo].[Agency] ([agency_id])
GO
ALTER TABLE [dbo].[OpeningForSalesDetail]  WITH CHECK ADD FOREIGN KEY([opening_id])
REFERENCES [dbo].[OpeningForSales] ([opening_id])
GO
ALTER TABLE [dbo].[OpeningForSalesDetail]  WITH CHECK ADD  CONSTRAINT [FK__OpeningFo__prope__6A30C649] FOREIGN KEY([property_id])
REFERENCES [dbo].[Properties] ([property_id])
GO
ALTER TABLE [dbo].[OpeningForSalesDetail] CHECK CONSTRAINT [FK__OpeningFo__prope__6A30C649]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK__Payment__booking__571DF1D5] FOREIGN KEY([booking_id])
REFERENCES [dbo].[Bookings] ([booking_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK__Payment__booking__571DF1D5]
GO
ALTER TABLE [dbo].[PaymentDetail]  WITH CHECK ADD FOREIGN KEY([payment_id])
REFERENCES [dbo].[Payment] ([payment_id])
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD FOREIGN KEY([investor_id])
REFERENCES [dbo].[Investor] ([investor_id])
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD FOREIGN KEY([investor_id])
REFERENCES [dbo].[Investor] ([investor_id])
GO
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK__Property__projec__628FA481] FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK__Property__projec__628FA481]
GO
ALTER TABLE [dbo].[PropertyItems]  WITH CHECK ADD FOREIGN KEY([item_id])
REFERENCES [dbo].[Items] ([item_id])
GO
ALTER TABLE [dbo].[PropertyItems]  WITH CHECK ADD  CONSTRAINT [FK__PropertyI__prope__656C112C] FOREIGN KEY([property_id])
REFERENCES [dbo].[Properties] ([property_id])
GO
ALTER TABLE [dbo].[PropertyItems] CHECK CONSTRAINT [FK__PropertyI__prope__656C112C]
GO
USE [master]
GO
ALTER DATABASE [FPT_SALES_DEMO1] SET  READ_WRITE 
GO
