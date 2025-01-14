USE [PhoneCardsDB]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 12/09/2018 18:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultantType]    Script Date: 12/09/2018 18:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultantType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ConsultantType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/09/2018 18:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[GroupId] [int] NOT NULL,
	[CompanyId] [int] NULL,
	[DepartmentId] [int] NULL,
	[ConsultantTypeId] [int] NULL,
	[TitleId] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/09/2018 18:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 12/09/2018 18:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 12/09/2018 18:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GroupId] [int] NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 
GO
INSERT [dbo].[Company] ([Id], [Name]) VALUES (1, N'ZORLU')
GO
INSERT [dbo].[Company] ([Id], [Name]) VALUES (2, N'EnerjiSA')
GO
INSERT [dbo].[Company] ([Id], [Name]) VALUES (3, N'KALE')
GO
INSERT [dbo].[Company] ([Id], [Name]) VALUES (4, N'Beymen')
GO
INSERT [dbo].[Company] ([Id], [Name]) VALUES (5, N'Garenta')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[ConsultantType] ON 
GO
INSERT [dbo].[ConsultantType] ([Id], [Name]) VALUES (1, N'Internal')
GO
INSERT [dbo].[ConsultantType] ([Id], [Name]) VALUES (2, N'Dış Danışman')
GO
SET IDENTITY_INSERT [dbo].[ConsultantType] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (10, N'A', N'Vektora', N'5397414147', 1, 1, 2, NULL, 1, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (11, N'B', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (12, N'C', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (13, N'D', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (15, N'E', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (16, N'F', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (17, N'G', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (18, N'H', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (19, N'I', N'Vektora', N'5397414147', 2, NULL, NULL, 1, 4, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (1002, N'J', N'Vektora', N'5397414147', 1, 1, 2, NULL, 1, 1)
GO
INSERT [dbo].[Contact] ([Id], [Name], [Surname], [Phone], [GroupId], [CompanyId], [DepartmentId], [ConsultantTypeId], [TitleId], [IsActive]) VALUES (1003, N'K', N'Vektora', N'5397414147', 1, 1, 1, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (1, N'Tekstil', 1)
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (2, N'Pazarlama', 1)
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (3, N'Finans', 1)
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (4, N'EnerjiSA IT', 2)
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (5, N'İthaalat', 4)
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (6, N'Satın Alma', 4)
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (8, N'Digital', 5)
GO
INSERT [dbo].[Department] ([Id], [Name], [CompanyId]) VALUES (9, N'IT', 5)
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (1, N'Müşteri')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (2, N'Danışman')
GO
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Title] ON 
GO
INSERT [dbo].[Title] ([Id], [Name], [GroupId]) VALUES (1, N'IT Sorumlusu', 1)
GO
INSERT [dbo].[Title] ([Id], [Name], [GroupId]) VALUES (2, N'IT Yöneticisi', 1)
GO
INSERT [dbo].[Title] ([Id], [Name], [GroupId]) VALUES (3, N'İş Birimi', 1)
GO
INSERT [dbo].[Title] ([Id], [Name], [GroupId]) VALUES (4, N'Yrd.Danışman', 2)
GO
INSERT [dbo].[Title] ([Id], [Name], [GroupId]) VALUES (5, N'Danışman', 2)
GO
INSERT [dbo].[Title] ([Id], [Name], [GroupId]) VALUES (6, N'Kıdemli Danışman', 2)
GO
SET IDENTITY_INSERT [dbo].[Title] OFF
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Company]
GO
