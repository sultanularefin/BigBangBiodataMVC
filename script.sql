USE [Biodata]
GO
/****** Object:  Table [dbo].[EmployeeDtls]    Script Date: 12/26/2017 8:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDtls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[examORDepartment] [nvarchar](100) NOT NULL,
	[instituteUniBoard] [nvarchar](200) NOT NULL,
	[passingYear] [smallint] NOT NULL,
	[grade] [nvarchar](50) NOT NULL,
	[empid] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeDtls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/26/2017 8:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [nvarchar](10) NOT NULL,
	[lastname] [nvarchar](100) NULL,
	[expected_salary] [money] NOT NULL,
	[religionId] [int] NOT NULL,
	[address] [nvarchar](400) NOT NULL,
	[gender] [bit] NOT NULL,
	[mobileNo] [varchar](11) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[userId] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Religion_info]    Script Date: 12/26/2017 8:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[religionName] [nvarchar](200) NULL,
 CONSTRAINT [PK_Religion_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[EmployeeDtls] ON 

INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (1, N'psc', N'dhaka', 2000, N'1235', 8)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (2, N'jsc', N'dhaka', 2003, N'214', 8)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (3, N'msc', N'UAP', 2017, N'123', 8)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (4, N'ssc', N'rwer', 1234, N'4123', 9)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (5, N'wer', N'werwer', 1235, N'12', 9)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (6, N'123123', N'123124', 2000, N'23424', 10)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (7, N'123234', N'523445', 2345, N'werwer', 10)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (8, N'123123', N'3424234', 2000, N'23', 11)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (9, N'ssc', N'232323', 2003, N'ertrt', 11)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (10, N'ssc', N'123154', 1235, N'5123', 12)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (11, N'hsc', N'1234', 1511, N'EEE', 12)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (12, N'psc', N'1235', 1235, N'First Grade', 13)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (13, N'jsc', N'dhaka', 2000, N'250/300', 13)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (14, N'GRE', N'123123', 2017, N'123123', 13)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (15, N'1233', N'uap', 1230, N'4123', 14)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (16, N'gre', N'213213', 2017, N'123123', 14)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (17, N'123123', N'123123', 1234, N'123123', 15)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (18, N'test', N'1234', 1234, N'123132', 17)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (19, N'1234', N'1234', 1234, N'5123', 18)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (20, N'5123', N'124123', 5123, N'123123123', 19)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (21, N'34534', N'345345', 1235, N'7456', 20)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (22, N'123123', N'123123', 5123, N'1231251', 21)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (23, N'345345', N'345345', 4353, N'234', 22)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (24, N'345345', N'345345', 4353, N'234', 23)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (25, N'345345', N'345345', 4353, N'234', 24)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (26, N'5123', N'54123', 1123, N'123151', 25)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (27, N'123123', N'6346346', 9090, N'789789', 26)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (28, N'4214123', N'123123', 5342, N'23434', 27)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (29, N'fghgh', N'fghfgh', 6345, N'fgdfg', 28)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (30, N'2werwr', N'werwer', 2345, N'wer', 29)
INSERT [dbo].[EmployeeDtls] ([id], [examORDepartment], [instituteUniBoard], [passingYear], [grade], [empid]) VALUES (31, N'345rter', N'tertert', 5255, N'234', 30)
SET IDENTITY_INSERT [dbo].[EmployeeDtls] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (1, N'green', N'land', 22000.0000, 1, N'28/1', 0, N'12121212124', N'234@mail.com', N'2017/000', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (2, N'green', N'land', 22000.0000, 1, N'28/1', 0, N'1212121212', N'234@mail.com', N'2017/001', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (3, N'sultanul', N'arefin', 124124124.0000, 1, N'132', 0, N'12312312457', N'wer@mail.com', N'2017/003', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (4, N'bluewhale', N'whale', 123213.0000, 5, N'234234', 0, N'23123123124', N'33122@mail.com', N'2017/004', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (5, N'yellow', N'box', 1232131.0000, 5, N'123', 1, N'12315151234', N'123123@mail.com', N'2017/005', CAST(N'2017-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (6, N'green', N'land', 1234124.0000, 3, N'213123', 0, N'12312314151', N'123123@mail.com', N'2017/006', CAST(N'2017-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (7, N'sultanul', N'arefin', 123512.0000, 4, N'2135', 1, N'12315125512', N'123123', N'2017/007', CAST(N'2017-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (8, N'green', N'witch', 123.0000, 4, N'213', 0, N'12351243123', N'123123', N'2017/008', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (9, N'ewrwerwer', N'wqerqwe', 234234.0000, 5, N'we234', 1, N'23432532453', N'324@mail.com', N'2017/009', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (10, N'techno', N'edge', 234234.0000, 2, N'213', 0, N'09238450295', N'123@mzi.com', N'2017/0010', CAST(N'2017-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (11, N'edinburgh', N'uk', 234234.0000, 1, N'234234', 0, N'34234523523', N'24234234', N'2017/0011', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (12, N'ohhhhhmahi', N'mahia', 123123.0000, 5, N'12313', 1, N'12312512312', N'123@mail.com', N'2017/0012', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (13, N'korea', N'seol', 123123.0000, 3, N'123123', 1, N'12312312551', N'123123@mail.com', N'2017/0013', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (14, N'green', N'land', 123123.0000, 3, N'123', 0, N'12311231251', N'123@mail.com', N'2017/0014', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (15, N'234234', N'123123', 123123.0000, 3, N'123123', 0, N'12312351251', N'123123', N'2017/0015', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (16, N'random', N'arefin', 123123.0000, 1, N'2131', 1, N'12312512511', N'123@mail.com', N'2017/0016', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (17, N'random', N'arefin', 123123.0000, 4, N'123', 1, N'12314515155', N'123123', N'2017/0017', CAST(N'2017-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (18, N'123123', N'5123123', 123123.0000, 1, N'123123', 1, N'51231235123', N'123123', N'2017/0018', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (19, N'123123', N'123123', 123123123.0000, 1, N'123123', 1, N'12314512312', N'123123123', N'2017/0019', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (20, N'123123', N'1512326456', 456456.0000, 1, N'456', 1, N'45647463463', N'3453453', N'2017/0020', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (21, N'123123', N'123123', 5123123.0000, 1, N'123123', 1, N'12312314515', N'123123123', N'2017/0021', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (22, N'12313', N'5123123', 7567567.0000, 2, N'54456', 0, N'56756756856', N'567567', N'2017/0022', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (23, N'12313', N'5123123', 7567567.0000, 2, N'54456', 0, N'56756756856', N'567567', N'2017/0023', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (24, N'12313', N'5123123', 7567567.0000, 2, N'54456', 0, N'56756756856', N'567567', N'2017/0024', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (25, N'123124', N'12314512', 1231541.0000, 3, N'12312', 0, N'15123213151', N'123123', N'2017/0025', CAST(N'2017-12-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (26, N'123123', N'51231235', 1231254123.0000, 1, N'123123', 1, N'12541231231', N'123125124', N'2017/0026', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (27, N'123123', N'5123123', 1231245123.0000, 3, N'5123123', 0, N'12312312312', N'512323', N'2017/0027', CAST(N'2017-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (28, N'474564', N'867567', 567567.0000, 2, N'567567', 0, N'34763465463', N'345345', N'2017/0028', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (29, N'3453467345', N'9789789yuiyi', 678.0000, 1, N'yuiyui', 0, N'67856756734', N'768678', N'2017/0029', CAST(N'2017-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [firstname], [lastname], [expected_salary], [religionId], [address], [gender], [mobileNo], [email], [userId], [DOB]) VALUES (30, N'ertret', N'yertret', 636346.0000, 3, N'5345', 1, N'34645234555', N'trterert', N'2017/0030', CAST(N'2017-12-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Religion_info] ON 

INSERT [dbo].[Religion_info] ([id], [religionName]) VALUES (1, N'Islam')
INSERT [dbo].[Religion_info] ([id], [religionName]) VALUES (2, N'Christianity')
INSERT [dbo].[Religion_info] ([id], [religionName]) VALUES (3, N'Judaism')
INSERT [dbo].[Religion_info] ([id], [religionName]) VALUES (4, N'Hindu')
INSERT [dbo].[Religion_info] ([id], [religionName]) VALUES (5, N'Buddhist')
SET IDENTITY_INSERT [dbo].[Religion_info] OFF
ALTER TABLE [dbo].[EmployeeDtls]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDtls_Employees] FOREIGN KEY([empid])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[EmployeeDtls] CHECK CONSTRAINT [FK_EmployeeDtls_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Religion_info] FOREIGN KEY([religionId])
REFERENCES [dbo].[Religion_info] ([id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Religion_info]
GO
