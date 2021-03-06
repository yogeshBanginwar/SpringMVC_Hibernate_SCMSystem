USE [SCMSystem]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[ACC_ID] [int] IDENTITY(1,1) NOT NULL,
	[ACC_LOGIN] [varchar](50) NULL,
	[ACC_NAME] [varchar](50) NULL,
	[ACC_PASS] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ACC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[account_records]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account_records](
	[ar_id] [varchar](36) NOT NULL,
	[sup_id] [int] NULL,
	[ar_date] [date] NULL,
	[ar_order_id] [varchar](36) NULL,
	[ar_bus_type] [varchar](10) NULL,
	[ar_payable] [decimal](12, 2) NULL,
	[ar_paid] [decimal](12, 2) NULL,
	[ar_arrears] [decimal](12, 2) NULL,
	[ar_discount] [decimal](12, 2) NULL,
	[ar_attn] [varchar](20) NULL,
	[ar_operator] [int] NULL,
	[ar_remark] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[buy_order]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[buy_order](
	[bo_id] [varchar](36) NOT NULL,
	[sup_id] [int] NULL,
	[sh_id] [varchar](10) NULL,
	[bo_date] [date] NULL,
	[bo_payable] [decimal](12, 2) NULL,
	[bo_paid] [decimal](12, 2) NULL,
	[bo_arrears] [decimal](12, 2) NULL,
	[bo_original] [varchar](20) NULL,
	[bo_remark] [varchar](100) NULL,
	[bo_attn] [varchar](20) NULL,
	[bo_operator] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[bo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[buy_order_detail]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[buy_order_detail](
	[bod_id] [varchar](36) NOT NULL,
	[goods_id] [varchar](36) NULL,
	[bod_amount] [int] NULL,
	[bod_buy_price] [decimal](12, 2) NULL,
	[bod_total_price] [decimal](12, 2) NULL,
	[bo_id] [varchar](36) NULL,
	[bod_imei_list] [text] NULL,
	[goods_goods_Id] [varchar](36) NULL,
PRIMARY KEY CLUSTERED 
(
	[bod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[goods]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[goods](
	[goods_Id] [varchar](36) NOT NULL,
	[goods_name] [varchar](20) NULL,
	[goods_unit] [varchar](10) NULL,
	[goods_type] [varchar](10) NULL,
	[goods_color] [varchar](10) NULL,
	[goods_store] [int] NULL,
	[goods_limit] [int] NULL,
	[goods_commission] [decimal](2, 2) NULL,
	[goods_producer] [varchar](50) NULL,
	[goods_remark] [varchar](100) NULL,
	[goods_sel_price] [decimal](12, 2) NULL,
	[goods_buy_price] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[goods_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[return_order]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[return_order](
	[ro_id] [varchar](36) NOT NULL,
	[sup_id] [int] NULL,
	[sh_id] [varchar](10) NULL,
	[ro_date] [date] NULL,
	[ro_payable] [decimal](12, 2) NULL,
	[ro_paid] [decimal](12, 2) NULL,
	[ro_remark] [varchar](100) NULL,
	[ro_attn] [varchar](20) NULL,
	[ro_operator] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[return_order_detail]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[return_order_detail](
	[rod_id] [varchar](36) NOT NULL,
	[goods_id] [varchar](36) NULL,
	[goods_unit] [varchar](10) NULL,
	[goods_name] [varchar](20) NULL,
	[goods_type] [varchar](10) NULL,
	[goods_color] [varchar](10) NULL,
	[rod_amount] [int] NULL,
	[rod_return_price] [decimal](12, 2) NULL,
	[rod_total_price] [decimal](12, 2) NULL,
	[rod_imei_list] [text] NULL,
	[ro_id] [varchar](36) NULL,
PRIMARY KEY CLUSTERED 
(
	[rod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stock]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock](
	[stock_id] [varchar](40) NOT NULL,
	[sh_id] [varchar](10) NULL,
	[goods_id] [varchar](36) NULL,
	[stock_firstdate] [date] NULL,
	[stock_lastdate] [date] NULL,
	[stock_amount] [int] NULL,
	[stock_price] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[stock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[store_house]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[store_house](
	[sh_id] [varchar](10) NOT NULL,
	[sh_name] [varchar](20) NULL,
	[sh_responsible] [varchar](20) NULL,
	[sh_phone] [varchar](11) NULL,
	[sh_address] [varchar](50) NULL,
	[sh_type] [varchar](10) NULL,
	[sh_remark] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUPPLIER]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUPPLIER](
	[SUP_ID] [int] IDENTITY(1,1) NOT NULL,
	[SUP_ADDRESS] [varchar](100) NULL,
	[SUP_LINKNAME] [varchar](50) NULL,
	[SUP_NAME] [varchar](50) NULL,
	[SUP_PAY] [numeric](19, 2) NULL,
	[SUP_PHONE] [varchar](50) NULL,
	[SUP_REMARK] [varchar](50) NULL,
	[SUP_TYPE] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_param]    Script Date: 2016/5/29 21:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_param](
	[sys_param_id] [int] IDENTITY(1,1) NOT NULL,
	[sys_param_field] [varchar](255) NULL,
	[sys_param_text] [varchar](255) NULL,
	[sys_param_type] [varchar](255) NULL,
	[sys_param_value] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[sys_param_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[buy_order_detail]  WITH CHECK ADD  CONSTRAINT [FKD3408F7B32EA80CE] FOREIGN KEY([bo_id])
REFERENCES [dbo].[buy_order] ([bo_id])
GO
ALTER TABLE [dbo].[buy_order_detail] CHECK CONSTRAINT [FKD3408F7B32EA80CE]
GO
ALTER TABLE [dbo].[buy_order_detail]  WITH CHECK ADD  CONSTRAINT [FKD3408F7B84F9A54A] FOREIGN KEY([goods_goods_Id])
REFERENCES [dbo].[goods] ([goods_Id])
GO
ALTER TABLE [dbo].[buy_order_detail] CHECK CONSTRAINT [FKD3408F7B84F9A54A]
GO
