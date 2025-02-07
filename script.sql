USE [master]
GO
/****** Object:  Database [PRJ301_SE07D_Assignment_Group3]    Script Date: 7/11/2021 11:42:45 PM ******/
CREATE DATABASE [PRJ301_SE07D_Assignment_Group3]
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET QUERY_STORE = OFF
GO
USE [PRJ301_SE07D_Assignment_Group3]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[categoryID] [nvarchar](50) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
	[categoryGender] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Contact]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Contact](
	[contactID] [int] IDENTITY(1,1) NOT NULL,
	[employeeID] [nvarchar](50) NULL,
	[name] [nvarchar](50) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[message] [nvarchar](250) NOT NULL,
	[datecreate] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Contact] PRIMARY KEY CLUSTERED 
(
	[contactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[customerID] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[datecreate] [nvarchar](50) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Employee](
	[employeeID] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[datecreate] [nvarchar](50) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Employee_1] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Manager]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Manager](
	[managerID] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Manager] PRIMARY KEY CLUSTERED 
(
	[managerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[customerID] [nvarchar](50) NOT NULL,
	[employeeID] [nvarchar](50) NULL,
	[voucherID] [nvarchar](50) NULL,
	[totalPrice] [float] NOT NULL,
	[payment] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](50) NOT NULL,
	[date] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OrderDetail]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderDetail](
	[orderID] [int] NOT NULL,
	[productID] [nvarchar](50) NOT NULL,
	[subTotal] [float] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tbl_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[productID] [nvarchar](50) NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
	[productSize] [nvarchar](50) NOT NULL,
	[description] [nvarchar](300) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[image] [nvarchar](300) NOT NULL,
	[categoryID] [nvarchar](50) NOT NULL,
	[notSale] [bit] NOT NULL,
	[datecreate] [nvarchar](50) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Voucher]    Script Date: 7/11/2021 11:42:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Voucher](
	[voucherID] [nvarchar](50) NOT NULL,
	[voucherName] [nvarchar](50) NOT NULL,
	[discount] [int] NOT NULL,
	[dateCreate] [nvarchar](50) NOT NULL,
	[dateEnd] [nvarchar](50) NULL,
	[notApply] [bit] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Voucher] PRIMARY KEY CLUSTERED 
(
	[voucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'BOXERSHORTFEMALE', N'Boxer short', N'Female', 1)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'BOXERSHORTSMALE', N'Boxer short', N'Male', 1)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'DRESS', N'Dress', N'Female', 1)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'JEANSF', N'JEANS', N'Female', 1)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'JEANSM', N'JEANS', N'Male', 1)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'PANTSF', N'PANTS', N'Female', 0)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'PANTSM', N'PANTS', N'Male', 0)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'SUITFEM', N'Suit', N'Female', 0)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'SUITM', N'Suit', N'Male', 1)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'TSHIRTF', N'T-Shirt', N'Female', 1)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName], [categoryGender], [status]) VALUES (N'TSHIRTM', N'T-Shirt', N'Male', 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_Contact] ON 

INSERT [dbo].[tbl_Contact] ([contactID], [employeeID], [name], [phone], [email], [message], [datecreate], [status]) VALUES (1, N'e1', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N' as', N'07/07/2021 01:00:31', N'Cancelled')
INSERT [dbo].[tbl_Contact] ([contactID], [employeeID], [name], [phone], [email], [message], [datecreate], [status]) VALUES (4, N'e1', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N' sd', N'07/07/2021 01:52:24', N'Cancelled')
INSERT [dbo].[tbl_Contact] ([contactID], [employeeID], [name], [phone], [email], [message], [datecreate], [status]) VALUES (5, N'e1', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'sdsd', N'07/07/2021 02:13:59', N'Confirmed')
INSERT [dbo].[tbl_Contact] ([contactID], [employeeID], [name], [phone], [email], [message], [datecreate], [status]) VALUES (6, NULL, N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N' sd', N'11/07/2021 19:59:26', N'Pending')
INSERT [dbo].[tbl_Contact] ([contactID], [employeeID], [name], [phone], [email], [message], [datecreate], [status]) VALUES (7, N'e', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N' 1
', N'11/07/2021 21:29:54', N'Cancelled')
SET IDENTITY_INSERT [dbo].[tbl_Contact] OFF
GO
INSERT [dbo].[tbl_Customer] ([customerID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'1', N'1', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'Hoa Loi, Ben Cat, Binh Duong', NULL, 0)
INSERT [dbo].[tbl_Customer] ([customerID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'phuc123456', N'123456789', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'Hoa Loi, Ben Cat, Binh Duong', N'11/07/2021 21:40:34', 1)
INSERT [dbo].[tbl_Customer] ([customerID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'phuc12345678', N'123456789', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'Hoa Loi, Ben Cat, Binh Duong', N'11/07/2021 23:20:14', 1)
INSERT [dbo].[tbl_Customer] ([customerID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'vohoangphuc', N'12345678', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'hoagpuk@gmail.com', N'11/07/2021 21:21:42', 0)
GO
INSERT [dbo].[tbl_Employee] ([employeeID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'a', N'1', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'Hoa Loi, Ben Cat, Binh Duong', N'07/07/2021 19:29:56', 1)
INSERT [dbo].[tbl_Employee] ([employeeID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'e', N'1', N'phuc', 899324039, N'hoagpuk@gmail.com', N'Male', 21, N'Hoa Loi, Ben Cat, Binh Duong', N'07/07/2021 06:33:45', 1)
INSERT [dbo].[tbl_Employee] ([employeeID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'e1', N'1', N'Vo Hoang Phuc', 899324039, NULL, N'1', 21, N'Binh Duong', NULL, 0)
INSERT [dbo].[tbl_Employee] ([employeeID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'hoagpuk', N'1', N'VÃµ HoÃ ng PhÃºc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'Hoa Loi, Ben Cat, Binh Duong', N'07/07/2021 06:32:32', 0)
INSERT [dbo].[tbl_Employee] ([employeeID], [password], [fullname], [phone], [email], [gender], [age], [address], [datecreate], [status]) VALUES (N'hoagpuk1', N'1', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'Hoa Loi, Ben Cat, Binh Duong', N'11/07/2021 06:39:14', 1)
GO
INSERT [dbo].[tbl_Manager] ([managerID], [password], [fullname], [phone], [email], [gender], [age], [address]) VALUES (N'admin', N'123', N'Vo Hoang Phuc', 899324039, N'hoagpuk@gmail.com', N'Male', 22, N'Binh Duong')
GO
SET IDENTITY_INSERT [dbo].[tbl_Order] ON 

INSERT [dbo].[tbl_Order] ([orderID], [customerID], [employeeID], [voucherID], [totalPrice], [payment], [fullname], [phone], [email], [address], [date], [status]) VALUES (15, N'vohoangphuc', N'e', N'welcome', 3352.5, N'Payment after arrival of goods', N'Võ Hoàng Phúc', 899324039, N'hoagpuk@gmail.com', N'Hoa Loi, Ben Cat, Binh Duong', N'11/07/2021 23:07:50', N'Invoiced')
SET IDENTITY_INSERT [dbo].[tbl_Order] OFF
GO
INSERT [dbo].[tbl_OrderDetail] ([orderID], [productID], [subTotal], [quantity]) VALUES (15, N'DRESS1', 379, 1)
INSERT [dbo].[tbl_OrderDetail] ([orderID], [productID], [subTotal], [quantity]) VALUES (15, N'FJEANS1', 2868, 12)
INSERT [dbo].[tbl_OrderDetail] ([orderID], [productID], [subTotal], [quantity]) VALUES (15, N'FJEANS1L', 478, 2)
GO
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'a10', N'we Men', N'XS', N'12', 12, 12, N'https://i.pinimg.com/474x/10/1d/01/101d01da6c86decdb790eb63479c17d6.jpg', N'BOXERSHORTSMALE', 1, N'11/07/2021 19:42:15', 0)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'as', N'coton', N'XS', N'sdsd', 0, 0, N'12', N'BOXERSHORTSMALE', 1, N'11/07/2021 19:44:36', 0)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'DRESS1', N' Cotton Dress', N'M', N'Relaxed-fit, calf-length dress in woven, crÃªped fabric. Collar, buttons at front, and double-layered yoke at back with forward-facing shoulder seams. Dropped shoulders, long sleeves, and wide cuffs with buttons. Straight hem with high slits at sides. Longer at back. Unlined.', 379, 295, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/DRESS1.jpg?raw=true', N'DRESS', 1, N'11/07/2021 03:28:41', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'DRESS1L', N' Cotton Dress', N'L', N'Relaxed-fit, calf-length dress in woven, crÃªped fabric. Collar, buttons at front, and double-layered yoke at back with forward-facing shoulder seams. Dropped shoulders, long sleeves, and wide cuffs with buttons. Straight hem with high slits at sides. Longer at back. Unlined.', 379, 296, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/DRESS1.jpg?raw=true', N'DRESS', 1, N'11/07/2021 03:28:41', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'DRESS2', N'Wrap Dress', N'M', N'Short wrap dress in softly draped, woven viscose fabric. Low-cut V-neck, short sleeves, and a narrow tie belt at waist. A-line skirt. Unlined.', 199, 199, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/dress2.jpg?raw=true', N'DRESS', 1, N'11/07/2021 03:28:46', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'DRESS2L', N'Wrap Dress', N'L', N'Short wrap dress in softly draped, woven viscose fabric. Low-cut V-neck, short sleeves, and a narrow tie belt at waist. A-line skirt. Unlined.', 199, 199, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/dress2.jpg?raw=true', N'DRESS', 1, N'11/07/2021 03:28:46', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'DRESS3', N'Butterfly-sleeved', N'M', N'Calf-length dress in soft jersey with butterfly sleeves. V-neck with sewn wrapover at the front and seam at waist with narrow ties at one side. Lined at top front.', 379, 99, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/dress3.jpg?raw=true', N'DRESS', 0, NULL, 0)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'DRESS3L', N'Butterfly-sleeved', N'L', N'Calf-length dress in soft jersey with butterfly sleeves. V-neck with sewn wrapover at the front and seam at waist with narrow ties at one side. Lined at top front.', 379, 99, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/dress3.jpg?raw=true', N'DRESS', 0, NULL, 0)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FBOX1', N'Sweatshorts', N'M', N'NULSweatshorts in lightweight cotton fabric. High waist, elasticized waistband with drawstring, and diagonal side pockets. Straight legs with raw-edge hems.L', 239, 499, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FBOX1.jpg?raw=true', N'BOXERSHORTFEMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FBOX1L', N'Sweatshorts', N'L', N'NULSweatshorts in lightweight cotton fabric. High waist, elasticized waistband with drawstring, and diagonal side pockets. Straight legs with raw-edge hems.L', 239, 499, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FBOX1.jpg?raw=true', N'BOXERSHORTFEMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FBOX2', N'High Denim Shorts', N'M', N'5-pocket shorts in washed denim. High waist, zip fly with button, and slightly wider legs with foldover cuffs.', 579, 379, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FBOX2.jpg?raw=true', N'BOXERSHORTFEMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FBOX2L', N'High Denim Shorts', N'L', N'5-pocket shorts in washed denim. High waist, zip fly with button, and slightly wider legs with foldover cuffs.', 579, 379, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FBOX2.jpg?raw=true', N'BOXERSHORTFEMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FBOX3', N'Denim Shorts', N'M', N'Short, 5-pocket shorts in washed denim with a high waist, button fly, and raw-edge hems.', 539, 279, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FBOX3.jpg?raw=true', N'BOXERSHORTFEMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FBOX3L', N'Denim Shorts', N'L', N'Short, 5-pocket shorts in washed denim with a high waist, button fly, and raw-edge hems.', 539, 279, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FBOX3.jpg?raw=true', N'BOXERSHORTFEMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FJEANS1', N' High Ankle Jeans', N'M', N'5-pocket, ankle-length jeans in cotton denim with gentle stretch and distressed details. Slightly looser fit with high waist, button fly, and straight legs.', 239, 466, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FJEANS1.jpg?raw=true', N'JEANSF', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FJEANS1L', N' High Ankle Jeans', N'L', N'5-pocket, ankle-length jeans in cotton denim with gentle stretch and distressed details. Slightly looser fit with high waist, button fly, and straight legs.', 239, 476, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FJEANS1.jpg?raw=true', N'JEANSF', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FJEANS2', N'Ultra High Jeans', N'M', N'5-pocket, ankle-length jeans in washed denim. Extra-high waist, zip fly with button, and gently tapered legs. Loose fit. Cotton content is partly recycled.', 479, 599, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FJEANS2.jpg?raw=true', N'JEANSF', 1, N'11/07/2021 02:51:20', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FJEANS2L', N'Ultra High Jeans', N'L', N'5-pocket, ankle-length jeans in washed denim. Extra-high waist, zip fly with button, and gently tapered legs. Loose fit. Cotton content is partly recycled.', 479, 599, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FJEANS2.jpg?raw=true', N'JEANSF', 1, N'11/07/2021 02:51:20', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FTSHIRT1', N'Oversized T-shirt Women', N'M', N'Oversized T-shirt in soft cotton jersey with a print motif on the front, a round, ribbed neckline and gently dropped shoulders.', 539, 639, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FTSHIRT2.jpg?raw=true', N'BOXERSHORTFEMALE', 1, N'11/07/2021 03:28:35', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FTSHIRT1L', N'Oversized T-shirt Women', N'L', N'Oversized T-shirt in soft cotton jersey with a print motif on the front, a round, ribbed neckline and gently dropped shoulders.', 539, 639, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FTSHIRT2.jpg?raw=true', N'BOXERSHORTFEMALE', 1, N'11/07/2021 03:28:35', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FTSHIRT2', N'T-shirt Women', N'M', N'Straight-cut T-shirt in soft cotton jersey with a round, rib-trimmed neckline and gently dropped shoulders.', 239, 339, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FTSHIRT1.jpg?raw=true', N'TSHIRTF', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'FTSHIRT2L', N'T-shirt Women', N'L', N'Straight-cut T-shirt in soft cotton jersey with a round, rib-trimmed neckline and gently dropped shoulders.', 239, 339, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/FTSHIRT1.jpg?raw=true', N'TSHIRTF', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX1', N'Fit Shorts Men', N'M', N'Shorts in cotton poplin with straight legs finishing just above knees. Waistband with covered elastic, drawstring, and mock fly. Side pockets and a welt back pocket.', 179, 379, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/mbox1.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX1L', N'Fit Shorts Men', N'L', N'Shorts in cotton poplin with straight legs finishing just above knees. Waistband with covered elastic, drawstring, and mock fly. Side pockets and a welt back pocket.', 179, 379, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/mbox1.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX2', N'Chino Shorts Men', N'M', N'Chino shorts in stretch cotton twill. Regular waist, elasticized waistband with concealed drawstring, and zip fly with button. Diagonal side pockets and welt back pockets.', 479, 236, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/mbox2.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX2L', N'Chino Shorts Men', N'L', N'Chino shorts in stretch cotton twill. Regular waist, elasticized waistband with concealed drawstring, and zip fly with button. Diagonal side pockets and welt back pockets.', 479, 236, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/mbox2.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX3', N'Cotton Shorts Men', N'M', N'Shorts in soft, washed cotton fabric with a zip fly, side pockets, and a welt back pocket with button.', 239, 579, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MBOX3.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX3L', N'Cotton Shorts Men', N'L', N'Shorts in soft, washed cotton fabric with a zip fly, side pockets, and a welt back pocket with button.', 239, 579, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MBOX3.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX4', N'Fit Shorts Women', N'M', N'Shorts in woven fabric. Waistband with drawstring, covered elastic, and a mock fly. Side pockets and a back pocket with flap and snap fastener.', 139, 379, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MBOX4.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX4L', N'Fit Shorts Women', N'L', N'Shorts in woven fabric. Waistband with drawstring, covered elastic, and a mock fly. Side pockets and a back pocket with flap and snap fastener.', 139, 379, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MBOX4.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX5', N'Seersucker Shorts', N'M', N'Shorts in pima cotton seersucker. Waistband with covered elastic and zip fly with button. Diagonal side pockets and welt back pockets.', 279, 339, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MBOX5.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MBOX5L', N'Seersucker Shorts', N'L', N'Shorts in pima cotton seersucker. Waistband with covered elastic and zip fly with button. Diagonal side pockets and welt back pockets.', 279, 339, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MBOX5.jpg?raw=true', N'BOXERSHORTSMALE', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MJEANS1', N'Skinny Cropped ', N'M', N'5-pocket crop jeans in stretch cotton denim. Regular waist, zip fly with button, and skinny legs.', 379, 539, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MJEANS1.jpg?raw=true', N'JEANSM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MJEANS1L', N'Skinny Cropped ', N'L', N'5-pocket crop jeans in stretch cotton denim. Regular waist, zip fly with button, and skinny legs.', 379, 539, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MJEANS1.jpg?raw=true', N'JEANSM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MJEANS2', N'Cropped Jeans', N'M', N'5-pocket crop jeans in stretch cotton denim. Regular waist, zip fly with button, and slim, gently tapered legs.', 239, 90, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MJEANS2.jpg?raw=true', N'JEANSM', 1, N'11/07/2021 07:20:45', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MJEANS2L', N'Cropped Jeans', N'L', N'5-pocket crop jeans in stretch cotton denim. Regular waist, zip fly with button, and slim, gently tapered legs.', 239, 90, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MJEANS2.jpg?raw=true', N'JEANSM', 1, N'11/07/2021 07:20:45', 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MTSHIRT1', N'Raw-edge T-shirt', N'M', N'T-shirt in soft cotton slub jersey. Slightly wider neckline, seam at center back, and slightly longer, rounded back section. Raw, rolled edges at neckline and cuffs.', 199, 199, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MTSHIRT1.jpg?raw=true', N'TSHIRTM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MTSHIRT1L', N'Raw-edge T-shirt', N'L', N'T-shirt in soft cotton slub jersey. Slightly wider neckline, seam at center back, and slightly longer, rounded back section. Raw, rolled edges at neckline and cuffs.', 199, 199, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MTSHIRT1.jpg?raw=true', N'TSHIRTM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MTSHIRT2', N'Regular Fit T-shirt', N'M', N'Crew-neck T-shirt in soft cotton jersey with a printed motif.', 99, 179, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MTSHIRT2.jpg?raw=true', N'TSHIRTM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'MTSHIRT2L', N'Regular Fit T-shirt', N'L', N'Crew-neck T-shirt in soft cotton jersey with a printed motif.', 99, 179, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/MTSHIRT2.jpg?raw=true', N'TSHIRTM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'phuc', N'qw Women', N'XS', N'd', 1, 12, N'12', N'DRESS', 1, N'11/07/2021 19:43:47', 0)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'SUIT1', N'Slim Fit Linen Blaze', N'M', N'Single-breasted blazer in woven linen fabric. Narrow, notched lapels with decorative buttonhole. Chest pocket, front pockets with flap, and two inner pockets. Two buttons at front, decorative buttons at cuffs, and vent at back. ', 179, 279, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/SUIT1.jpg?raw=true', N'SUITM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'SUIT1L', N'Slim Fit Linen Blaze', N'L', N'Single-breasted blazer in woven linen fabric. Narrow, notched lapels with decorative buttonhole. Chest pocket, front pockets with flap, and two inner pockets. Two buttons at front, decorative buttons at cuffs, and vent at back. ', 179, 279, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/SUIT1.jpg?raw=true', N'SUITM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'SUIT2', N'Skinny Fit Blazer', N'M', N'Single-breasted blazer in woven stretch fabric with narrow, notched lapels. Chest pocket, front pockets with flap, and an inner pocket. Decorative buttons at cuffs and a vent at back. Lined. ', 239, 499, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/SUIT2.jpg?raw=true', N'SUITM', 1, NULL, 1)
INSERT [dbo].[tbl_Product] ([productID], [productName], [productSize], [description], [price], [quantity], [image], [categoryID], [notSale], [datecreate], [status]) VALUES (N'SUIT2L', N'Skinny Fit Blazer', N'L', N'Single-breasted blazer in woven stretch fabric with narrow, notched lapels. Chest pocket, front pockets with flap, and an inner pocket. Decorative buttons at cuffs and a vent at back. Lined. ', 239, 499, N'https://github.com/hoagpuk/shop/blob/main/IMGAE/SUIT2.jpg?raw=true', N'SUITM', 1, NULL, 1)
GO
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'a', N'giam 25', 25, N'Sep  7 2021  2:31AM', NULL, 0, 0)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'asa', N'giam 25', 25, N'2021-07-10 01:00:36', N'2021-07-10T00:46', 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'b', N'giam 50', 50, N'Sep  7 2021  2:31AM', NULL, 1, 0)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'c', N'10 %', 10, N'Sep  7 2021  2:32AM', NULL, 1, 0)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'CHAOMUNG', N'10 %', 10, N'2021-07-10 06:51:42', N'2022-02-10T06:51', 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'd', N'20 %', 20, N'Sep  7 2021  7:11PM', NULL, 0, 0)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'da', N'2021-07-10T23:44', 22, N'09/07/2021 23:44:46', NULL, 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'ee', N'giam 25', 25, N'09/07/2021 22:40:07', NULL, 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'f', N'2021-07-17', 22, N'09/07/2021 23:42:23', NULL, 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'g', N'2021-07-18T00:13', 70, N'2021-07-191 00:14', NULL, 1, 0)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'GIAM25', N'giam 25', 25, N'2021-07-10 00:30:15', N'2021-07-10T1:30', 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'GIAM50', N'giam 50', 50, N'2021-07-10 00:33:22', N'2021-07-10 00:39', 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'h', N'2021-07-18T00:12', 89, N'2021-07-191 00:12', NULL, 1, 0)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'k', N'giam 50', 50, N'2021-07-10 00:15:56', N'2021-07-10T02:10', 0, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'p', N'giam 50', 50, N'2021-07-10 01:08:40', N'2021-07-10T02:10', 1, 0)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N't', N'giam 50', 50, N'2021-07-10 01:12:47', N'2021-07-10T02:14', 1, 1)
INSERT [dbo].[tbl_Voucher] ([voucherID], [voucherName], [discount], [dateCreate], [dateEnd], [notApply], [status]) VALUES (N'WELCOME', N'Discount 10% Welcome', 10, N'2021-07-11 04:54:30', N'2099-03-04T05:53', 1, 1)
GO
ALTER TABLE [dbo].[tbl_Contact]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Contact_tbl_Employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[tbl_Employee] ([employeeID])
GO
ALTER TABLE [dbo].[tbl_Contact] CHECK CONSTRAINT [FK_tbl_Contact_tbl_Employee]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[tbl_Customer] ([customerID])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Customer]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[tbl_Employee] ([employeeID])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Employee]
GO
ALTER TABLE [dbo].[tbl_Order]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Order_tbl_Voucher] FOREIGN KEY([voucherID])
REFERENCES [dbo].[tbl_Voucher] ([voucherID])
GO
ALTER TABLE [dbo].[tbl_Order] CHECK CONSTRAINT [FK_tbl_Order_tbl_Voucher]
GO
ALTER TABLE [dbo].[tbl_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderDetail_tbl_Order] FOREIGN KEY([orderID])
REFERENCES [dbo].[tbl_Order] ([orderID])
GO
ALTER TABLE [dbo].[tbl_OrderDetail] CHECK CONSTRAINT [FK_tbl_OrderDetail_tbl_Order]
GO
ALTER TABLE [dbo].[tbl_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OrderDetail_tbl_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[tbl_Product] ([productID])
GO
ALTER TABLE [dbo].[tbl_OrderDetail] CHECK CONSTRAINT [FK_tbl_OrderDetail_tbl_Product]
GO
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_Category1] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tbl_Category] ([categoryID])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_Category1]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE07D_Assignment_Group3] SET  READ_WRITE 
GO
