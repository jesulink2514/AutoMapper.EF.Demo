USE [master]
GO
/****** Object:  Database [School]    Script Date: 3/16/2016 12:13:02 AM ******/
CREATE DATABASE [School]
GO
USE [School]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Credits] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_School.Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseInstructor]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseInstructor](
	[CourseID] [int] NOT NULL,
	[PersonID] [int] NOT NULL,
 CONSTRAINT [PK_CourseInstructor] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Budget] [money] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Administrator] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OfficeAssignment]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeAssignment](
	[InstructorID] [int] NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_OfficeAssignment] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OnlineCourse]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnlineCourse](
	[CourseID] [int] NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OnlineCourse] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OnsiteCourse]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnsiteCourse](
	[CourseID] [int] NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Days] [nvarchar](50) NOT NULL,
	[Time] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_OnsiteCourse] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[HireDate] [datetime] NULL,
	[EnrollmentDate] [datetime] NULL,
 CONSTRAINT [PK_School.Student] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentGrade]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentGrade](
	[EnrollmentID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Grade] [decimal](3, 2) NULL,
 CONSTRAINT [PK_StudentGrade] PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (1045, N'Calculus', 4, 7)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (1050, N'Chemistry', 4, 1)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (1061, N'Physics', 4, 1)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (2021, N'Composition', 3, 2)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (2030, N'Poetry', 2, 2)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (2042, N'Literature', 4, 2)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (3141, N'Trigonometry', 4, 7)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (4022, N'Microeconomics', 3, 4)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (4041, N'Macroeconomics', 3, 4)
GO
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (4061, N'Quantitative', 2, 4)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (1045, 5)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (1050, 1)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (1061, 31)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (2021, 27)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (2030, 4)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (2042, 25)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (4022, 18)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (4041, 32)
GO
INSERT [dbo].[CourseInstructor] ([CourseID], [PersonID]) VALUES (4061, 34)
GO
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [Administrator]) VALUES (1, N'Engineering', 350000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [Administrator]) VALUES (2, N'English', 120000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 6)
GO
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [Administrator]) VALUES (4, N'Economics', 200000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [Administrator]) VALUES (7, N'Mathematics', 250000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (1, N'17 Smith')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (4, N'29 Adams')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (5, N'37 Williams')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (18, N'143 Smith')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (25, N'57 Adams')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (27, N'271 Williams')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (31, N'131 Smith')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (32, N'203 Williams')
GO
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (34, N'213 Smith')
GO
INSERT [dbo].[OnlineCourse] ([CourseID], [URL]) VALUES (2021, N'http://www.fineartschool.net/Composition')
GO
INSERT [dbo].[OnlineCourse] ([CourseID], [URL]) VALUES (2030, N'http://www.fineartschool.net/Poetry')
GO
INSERT [dbo].[OnlineCourse] ([CourseID], [URL]) VALUES (3141, N'http://www.fineartschool.net/Trigonometry')
GO
INSERT [dbo].[OnlineCourse] ([CourseID], [URL]) VALUES (4041, N'http://www.fineartschool.net/Macroeconomics')
GO
INSERT [dbo].[OnsiteCourse] ([CourseID], [Location], [Days], [Time]) VALUES (1045, N'121 Smith', N'MWHF', CAST(N'1900-01-01 15:30:00' AS SmallDateTime))
GO
INSERT [dbo].[OnsiteCourse] ([CourseID], [Location], [Days], [Time]) VALUES (1050, N'123 Smith', N'MTWH', CAST(N'1900-01-01 11:30:00' AS SmallDateTime))
GO
INSERT [dbo].[OnsiteCourse] ([CourseID], [Location], [Days], [Time]) VALUES (1061, N'234 Smith', N'TWHF', CAST(N'1900-01-01 13:15:00' AS SmallDateTime))
GO
INSERT [dbo].[OnsiteCourse] ([CourseID], [Location], [Days], [Time]) VALUES (2042, N'225 Adams', N'MTWH', CAST(N'1900-01-01 11:00:00' AS SmallDateTime))
GO
INSERT [dbo].[OnsiteCourse] ([CourseID], [Location], [Days], [Time]) VALUES (4022, N'23 Williams', N'MWF', CAST(N'1900-01-01 09:00:00' AS SmallDateTime))
GO
INSERT [dbo].[OnsiteCourse] ([CourseID], [Location], [Days], [Time]) VALUES (4061, N'22 Williams', N'TH', CAST(N'1900-01-01 11:15:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (1, N'Abercrombie', N'Kim', CAST(N'1995-03-11 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (2, N'Barzdukas', N'Gytis', NULL, CAST(N'2005-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (3, N'Justice', N'Peggy', NULL, CAST(N'2001-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (4, N'Fakhouri', N'Fadi', CAST(N'2002-08-06 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (5, N'Harui', N'Roger', CAST(N'1998-07-01 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (6, N'Li', N'Yan', NULL, CAST(N'2002-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (7, N'Norman', N'Laura', NULL, CAST(N'2003-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (8, N'Olivotto', N'Nino', NULL, CAST(N'2005-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (9, N'Tang', N'Wayne', NULL, CAST(N'2005-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (10, N'Alonso', N'Meredith', NULL, CAST(N'2002-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (11, N'Lopez', N'Sophia', NULL, CAST(N'2004-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (12, N'Browning', N'Meredith', NULL, CAST(N'2000-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (13, N'Anand', N'Arturo', NULL, CAST(N'2003-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (14, N'Walker', N'Alexandra', NULL, CAST(N'2000-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (15, N'Powell', N'Carson', NULL, CAST(N'2004-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (16, N'Jai', N'Damien', NULL, CAST(N'2001-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (17, N'Carlson', N'Robyn', NULL, CAST(N'2005-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (18, N'Zheng', N'Roger', CAST(N'2004-02-12 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (19, N'Bryant', N'Carson', NULL, CAST(N'2001-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (20, N'Suarez', N'Robyn', NULL, CAST(N'2004-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (21, N'Holt', N'Roger', NULL, CAST(N'2004-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (22, N'Alexander', N'Carson', NULL, CAST(N'2005-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (23, N'Morgan', N'Isaiah', NULL, CAST(N'2001-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (24, N'Martin', N'Randall', NULL, CAST(N'2005-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (25, N'Kapoor', N'Candace', CAST(N'2001-01-15 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (26, N'Rogers', N'Cody', NULL, CAST(N'2002-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (27, N'Serrano', N'Stacy', CAST(N'1999-06-01 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (28, N'White', N'Anthony', NULL, CAST(N'2001-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (29, N'Griffin', N'Rachel', NULL, CAST(N'2004-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (30, N'Shan', N'Alicia', NULL, CAST(N'2003-09-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (31, N'Stewart', N'Jasmine', CAST(N'1997-10-12 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (32, N'Xu', N'Kristen', CAST(N'2001-07-23 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (33, N'Gao', N'Erica', NULL, CAST(N'2003-01-30 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Person] ([PersonID], [LastName], [FirstName], [HireDate], [EnrollmentDate]) VALUES (34, N'Van Houten', N'Roger', CAST(N'2000-12-07 00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentGrade] ON 

GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (1, 2021, 2, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (2, 2030, 2, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (3, 2021, 3, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (4, 2030, 3, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (5, 2021, 6, CAST(2.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (6, 2042, 6, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (7, 2021, 7, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (8, 2042, 7, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (9, 2021, 8, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (10, 2042, 8, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (11, 4041, 9, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (12, 4041, 10, NULL)
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (13, 4041, 11, CAST(2.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (14, 4041, 12, NULL)
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (15, 4061, 12, NULL)
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (16, 4022, 14, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (17, 4022, 13, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (18, 4061, 13, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (19, 4041, 14, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (20, 4022, 15, CAST(2.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (21, 4022, 16, CAST(2.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (22, 4022, 17, NULL)
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (23, 4022, 19, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (24, 4061, 20, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (25, 4061, 21, CAST(2.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (26, 4022, 22, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (27, 4041, 22, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (28, 4061, 22, CAST(2.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (29, 4022, 23, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (30, 1045, 23, CAST(1.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (31, 1061, 24, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (32, 1061, 25, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (33, 1050, 26, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (34, 1061, 26, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (35, 1061, 27, CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (36, 1045, 28, CAST(2.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (37, 1050, 28, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (38, 1061, 29, CAST(4.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (39, 1050, 30, CAST(3.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[StudentGrade] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (40, 1061, 30, CAST(4.00 AS Decimal(3, 2)))
GO
SET IDENTITY_INSERT [dbo].[StudentGrade] OFF
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[CourseInstructor]  WITH CHECK ADD  CONSTRAINT [FK_CourseInstructor_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[CourseInstructor] CHECK CONSTRAINT [FK_CourseInstructor_Course]
GO
ALTER TABLE [dbo].[CourseInstructor]  WITH CHECK ADD  CONSTRAINT [FK_CourseInstructor_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[CourseInstructor] CHECK CONSTRAINT [FK_CourseInstructor_Person]
GO
ALTER TABLE [dbo].[OfficeAssignment]  WITH CHECK ADD  CONSTRAINT [FK_OfficeAssignment_Person] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[OfficeAssignment] CHECK CONSTRAINT [FK_OfficeAssignment_Person]
GO
ALTER TABLE [dbo].[OnlineCourse]  WITH CHECK ADD  CONSTRAINT [FK_OnlineCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[OnlineCourse] CHECK CONSTRAINT [FK_OnlineCourse_Course]
GO
ALTER TABLE [dbo].[OnsiteCourse]  WITH CHECK ADD  CONSTRAINT [FK_OnsiteCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[OnsiteCourse] CHECK CONSTRAINT [FK_OnsiteCourse_Course]
GO
ALTER TABLE [dbo].[StudentGrade]  WITH CHECK ADD  CONSTRAINT [FK_StudentGrade_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[StudentGrade] CHECK CONSTRAINT [FK_StudentGrade_Course]
GO
ALTER TABLE [dbo].[StudentGrade]  WITH CHECK ADD  CONSTRAINT [FK_StudentGrade_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[StudentGrade] CHECK CONSTRAINT [FK_StudentGrade_Student]
GO
/****** Object:  StoredProcedure [dbo].[DeleteOfficeAssignment]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOfficeAssignment]
		@InstructorID int
		AS
		DELETE FROM OfficeAssignment
		WHERE InstructorID=@InstructorID;

GO
/****** Object:  StoredProcedure [dbo].[DeletePerson]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePerson]
		@PersonID int
		AS
		DELETE FROM Person WHERE PersonID = @PersonID;

GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentName]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetDepartmentName]
      @ID int,
      @Name nvarchar(50) OUTPUT
      AS
      SELECT @Name = Name FROM Department
      WHERE DepartmentID = @ID

GO
/****** Object:  StoredProcedure [dbo].[GetStudentGrades]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetStudentGrades]
            @StudentID int
            AS
            SELECT EnrollmentID, Grade, CourseID, StudentID FROM dbo.StudentGrade
            WHERE StudentID = @StudentID

GO
/****** Object:  StoredProcedure [dbo].[InsertOfficeAssignment]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertOfficeAssignment]
		@InstructorID int,
		@Location nvarchar(50)
		AS
		INSERT INTO dbo.OfficeAssignment (InstructorID, Location)
		VALUES (@InstructorID, @Location);
		IF @@ROWCOUNT > 0
		BEGIN
			SELECT [Timestamp] FROM OfficeAssignment 
				WHERE InstructorID=@InstructorID;
		END

GO
/****** Object:  StoredProcedure [dbo].[InsertPerson]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertPerson]
		@LastName nvarchar(50),
		@FirstName nvarchar(50),
		@HireDate datetime,
		@EnrollmentDate datetime
		AS
		INSERT INTO dbo.Person (LastName, 
					FirstName, 
					HireDate, 
					EnrollmentDate)
		VALUES (@LastName, 
			@FirstName, 
			@HireDate, 
			@EnrollmentDate);
		SELECT SCOPE_IDENTITY() as NewPersonID;

GO
/****** Object:  StoredProcedure [dbo].[UpdateOfficeAssignment]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOfficeAssignment]
		@InstructorID int,
		@Location nvarchar(50),
		@OrigTimestamp timestamp
		AS
		UPDATE OfficeAssignment SET Location=@Location 
		WHERE InstructorID=@InstructorID AND [Timestamp]=@OrigTimestamp;
		IF @@ROWCOUNT > 0
		BEGIN
			SELECT [Timestamp] FROM OfficeAssignment 
				WHERE InstructorID=@InstructorID;
		END

GO
/****** Object:  StoredProcedure [dbo].[UpdatePerson]    Script Date: 3/16/2016 12:13:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePerson]
		@PersonID int,
		@LastName nvarchar(50),
		@FirstName nvarchar(50),
		@HireDate datetime,
		@EnrollmentDate datetime
		AS
		UPDATE Person SET LastName=@LastName, 
				FirstName=@FirstName,
				HireDate=@HireDate,
				EnrollmentDate=@EnrollmentDate
		WHERE PersonID=@PersonID;

GO
USE [master]
GO
ALTER DATABASE [School] SET  READ_WRITE 
GO
