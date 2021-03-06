USE [pizza]
GO
/****** Object:  Table [dbo].[pizzasize]    Script Date: 10/24/2016 09:56:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizzasize](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pizzasize] [nvarchar](50) NULL,
	[pizzaprice] [nvarchar](50) NULL,
 CONSTRAINT [PK_pizzasize] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pizzasize] ON
INSERT [dbo].[pizzasize] ([id], [pizzasize], [pizzaprice]) VALUES (5, N'select', N'0')
INSERT [dbo].[pizzasize] ([id], [pizzasize], [pizzaprice]) VALUES (6, N'SMALL', N'10')
INSERT [dbo].[pizzasize] ([id], [pizzasize], [pizzaprice]) VALUES (7, N'MEDIUM', N'20')
INSERT [dbo].[pizzasize] ([id], [pizzasize], [pizzaprice]) VALUES (8, N'LARGE', N'30')
SET IDENTITY_INSERT [dbo].[pizzasize] OFF
/****** Object:  Table [dbo].[OrderPlace]    Script Date: 10/24/2016 09:56:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPlace](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pizzasize] [nvarchar](50) NOT NULL,
	[pizzaprice] [nvarchar](50) NOT NULL,
	[numberofpizza] [nvarchar](50) NOT NULL,
	[numberoftoppings] [nvarchar](max) NULL,
	[deliverytype] [nvarchar](50) NOT NULL,
	[address] [nvarchar](max) NULL,
	[total] [nvarchar](50) NULL,
	[timeofcompletion] [nvarchar](50) NOT NULL,
	[orderdate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderPlace] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderPlace] ON
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (9, N'LARGE', N'30', N'5', N'Spinach', N'delivery', N'fdgdfggfffgdgfd', N'', N'15', N'22/10/2016 7:52:55 PM')
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (10, N'MEDIUM', N'20', N'', N'Spinach', N'pickup', N'', N'', N'1 Hr', N'22/10/2016 9:23:02 PM')
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (11, N'SMALL', N'10', N'', N'Spinach', N'delivery', N'yutyututuu', N'', N'45 Min', N'22/10/2016 9:24:19 PM')
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (12, N'select', N'', N'', N'Spinach', N'pickup', N'', N'', N'1 Hr', N'22/10/2016 9:25:04 PM')
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (13, N'SMALL', N'10', N'6', N'Spinach', N'pickup', N'', N'777777', N'1 Hr', N'23/10/2016 9:46:33 AM')
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (14, N'MEDIUM', N'20', N'77', N'Spinach', N'pickup', N'', N'', N'1 Hr', N'23/10/2016 9:47:21 AM')
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (15, N'MEDIUM', N'20', N'', N'Spinach', N'pickup', N'', N'0', N'1 Hr', N'24/10/2016 9:07:45 AM')
INSERT [dbo].[OrderPlace] ([id], [pizzasize], [pizzaprice], [numberofpizza], [numberoftoppings], [deliverytype], [address], [total], [timeofcompletion], [orderdate]) VALUES (16, N'LARGE', N'30', N'2', N'pineapple', N'delivery', N'1244555', N'0', N'1 Hr', N'24/10/2016 9:37:42 AM')
SET IDENTITY_INSERT [dbo].[OrderPlace] OFF
/****** Object:  StoredProcedure [dbo].[sp_selectplaceorderbyid]    Script Date: 10/24/2016 09:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_selectplaceorderbyid]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select DISTINCT TOP 1 * from OrderPlace order by id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_selectplaceorder]    Script Date: 10/24/2016 09:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_selectplaceorder]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from OrderPlace 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_selectpizzasize]    Script Date: 10/24/2016 09:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_selectpizzasize]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from pizzasize
END
GO
/****** Object:  StoredProcedure [dbo].[sp_selectpizzapricebypizzasize]    Script Date: 10/24/2016 09:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_selectpizzapricebypizzasize]
	-- Add the parameters for the stored procedure here
	@id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from pizzasize where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertplaceorder]    Script Date: 10/24/2016 09:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_insertplaceorder]
	-- Add the parameters for the stored procedure here
	@pizzasize nvarchar(50),
	@pizzaprice nvarchar(50),
	@numberofpizza nvarchar(50),
	@numberoftoppings nvarchar(max),
	@deliverytype nvarchar(50),
	@address nvarchar(max),
	@total nvarchar(50),
	@timeofcompletion nvarchar(50),
	@orderdate nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into OrderPlace (pizzasize,pizzaprice,numberofpizza,numberoftoppings,deliverytype,address,total,timeofcompletion,orderdate) values(@pizzasize,@pizzaprice,@numberofpizza,@numberoftoppings,@deliverytype,@address,@total,@timeofcompletion,@orderdate)
END
GO
