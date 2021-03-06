USE [EPigData]
GO
/****** Object:  Table [dbo].[FcSubCary]    Script Date: 03/15/2014 17:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FcSubCary](
	[SCID] [nvarchar](20) NOT NULL,
	[SCName] [nvarchar](50) NULL,
	[SCState] [int] NULL,
	[SCTotal] [int] NULL,
	[CID] [nvarchar](20) NULL,
 CONSTRAINT [PK_FCSUBCARY] PRIMARY KEY CLUSTERED 
(
	[SCID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FcCategory]    Script Date: 03/15/2014 17:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FcCategory](
	[CID] [nvarchar](20) NOT NULL,
	[CName] [nvarchar](50) NULL,
	[CState] [int] NULL,
	[CTime] [datetime] NULL,
 CONSTRAINT [PK_FCCATEGORY] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FcCategory] ([CID], [CName], [CState], [CTime]) VALUES (N'20140315154038334061', N'重复的分类', 15, CAST(0x0000A2EF01025AAC AS DateTime))
/****** Object:  Table [dbo].[DbUser]    Script Date: 03/15/2014 17:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbUser](
	[UID] [nvarchar](20) NOT NULL,
	[URegsTime] [datetime] NOT NULL,
	[UName] [nvarchar](50) NOT NULL,
	[UNick] [nvarchar](50) NOT NULL,
	[UPwd] [nvarchar](50) NOT NULL,
	[UAge] [int] NULL,
	[UBrithDate] [datetime] NULL,
	[UEmail] [nvarchar](100) NULL,
	[MobPhone] [nvarchar](20) NULL,
	[USex] [bit] NULL,
	[UState] [int] NOT NULL,
	[URole] [int] NOT NULL,
 CONSTRAINT [PK_DBUSER] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DbUser] ([UID], [URegsTime], [UName], [UNick], [UPwd], [UAge], [UBrithDate], [UEmail], [MobPhone], [USex], [UState], [URole]) VALUES (N'20140314165749811156', CAST(0x0000A2EE01179089 AS DateTime), N'123456', N'151086', N'123456', NULL, NULL, NULL, NULL, 0, 15, 15)
/****** Object:  Table [dbo].[DbNews]    Script Date: 03/15/2014 17:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbNews](
	[NID] [nvarchar](20) NOT NULL,
	[NTitle] [nvarchar](100) NULL,
	[NTime] [datetime] NULL,
	[NSCID] [int] NULL,
	[NOpTime] [datetime] NULL,
	[NContent] [text] NULL,
	[NCount] [int] NULL,
	[UID] [int] NULL,
	[DID] [int] NULL,
	[NState] [int] NULL,
 CONSTRAINT [PK_DBNEWS] PRIMARY KEY CLUSTERED 
(
	[NID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DbDpnt]    Script Date: 03/15/2014 17:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbDpnt](
	[DID] [nvarchar](20) NOT NULL,
	[DName] [nvarchar](50) NULL,
	[DState] [int] NULL,
 CONSTRAINT [PK_DBDPNT] PRIMARY KEY CLUSTERED 
(
	[DID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
