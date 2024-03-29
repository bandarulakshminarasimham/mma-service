USE [MeetingManagement]
GO
/****** Object:  Table [dbo].[Attendees]    Script Date: 11/12/2019 6:08:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attendees](
	[AttendeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Status] [bit] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Attendees_1] PRIMARY KEY CLUSTERED 
(
	[AttendeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Meeting]    Script Date: 11/12/2019 6:08:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Meeting](
	[MeetingId] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [varchar](500) NOT NULL,
	[Agenda] [varchar](max) NOT NULL,
	[MDateTime] [datetime] NOT NULL,
	[Status] [bit] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Meeting_1] PRIMARY KEY CLUSTERED 
(
	[MeetingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Meeting_Attendees_Map]    Script Date: 11/12/2019 6:08:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Meeting_Attendees_Map](
	[MapId] [int] IDENTITY(1,1) NOT NULL,
	[MeetingId] [int] NULL,
	[AttendeeId] [int] NULL,
	[Status] [bit] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Meeting_Attendees_Map] PRIMARY KEY CLUSTERED 
(
	[MapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/12/2019 6:08:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Attendees] ON 

INSERT [dbo].[Attendees] ([AttendeeId], [Name], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (1, N'Lakshmi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Attendees] ([AttendeeId], [Name], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (2, N'Attendee1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Attendees] ([AttendeeId], [Name], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (3, N'Attendee3', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Attendees] ([AttendeeId], [Name], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (4, N'Attendee4', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Attendees] ([AttendeeId], [Name], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (5, N'Attendee5', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Attendees] ([AttendeeId], [Name], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (6, N'AmruthaValli Bandaru', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Attendees] ([AttendeeId], [Name], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (7, N'JwalaSeshanth Bandaru', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Attendees] OFF
SET IDENTITY_INSERT [dbo].[Meeting] ON 

INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (1, N'Test Subject', N'Test Agenda', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (2, N'Test Subject2', N'Test Agenda2', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (3, N'Test Subject3', N'Test Agenda3', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (4, N'Test Subject4', N'Test Agenda5', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (6, N'Test Subject5', N'Test Agenda5', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (15, N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', CAST(0x0000AAF6007DDBF5 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (16, N'this is a sample meeting monitor application demo', N'the meeting agenda is a demo and explaining the feature and implementation.', CAST(0x0000AAF6008AACC8 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (17, N'This is sample meeting', N'This is sample meeting', CAST(0x0000AAF6008B8676 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (18, N'This is sample meeting', N'This is sample meeting', CAST(0x0000AAF6008F902D AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (19, N'This is sample meeting', N'This is sample meeting', CAST(0x0000AAF600926BF6 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (20, N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', CAST(0x0000AAFE00D0A987 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (21, N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', CAST(0x0000AAFE00D0F7DF AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (22, N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', N'This is sample meetinggggggggggggggggggggggggggggggggggggggggggg', CAST(0x0000AAFE00D1392A AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (23, N'GITHUB ACCESSADFASDFASDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDGITHUB ACCESSADFASDFASDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDGITHUB', N'test', CAST(0x0000AB15012F7F50 AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Meeting] OFF
SET IDENTITY_INSERT [dbo].[Meeting_Attendees_Map] ON 

INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (1, 4, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (2, 4, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (3, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (4, NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (5, NULL, 3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (6, 6, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (7, 6, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (8, 6, 3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (9, 6, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (10, 6, 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (11, 15, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (12, 15, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (13, 16, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (14, 16, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (15, 16, 3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (16, 16, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (17, 17, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (18, 18, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (19, 19, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (20, 20, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (21, 20, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (22, 21, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (23, 21, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (24, 22, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (25, 22, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (26, 23, 6, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Meeting_Attendees_Map] OFF
INSERT [dbo].[Users] ([Id], [Username], [Password], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'admin', N'admin', NULL, NULL, NULL, NULL, NULL)
ALTER TABLE [dbo].[Attendees] ADD  CONSTRAINT [DF_Attendees_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Attendees] ADD  CONSTRAINT [DF_Attendees_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Meeting] ADD  CONSTRAINT [DF_Meeting_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Meeting] ADD  CONSTRAINT [DF_Meeting_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Meeting_Attendees_Map]  WITH CHECK ADD  CONSTRAINT [FK_Meeting_Attendees_Map_Attendees] FOREIGN KEY([AttendeeId])
REFERENCES [dbo].[Attendees] ([AttendeeId])
GO
ALTER TABLE [dbo].[Meeting_Attendees_Map] CHECK CONSTRAINT [FK_Meeting_Attendees_Map_Attendees]
GO
ALTER TABLE [dbo].[Meeting_Attendees_Map]  WITH CHECK ADD  CONSTRAINT [FK_Meeting_Attendees_Map_Meeting] FOREIGN KEY([MeetingId])
REFERENCES [dbo].[Meeting] ([MeetingId])
GO
ALTER TABLE [dbo].[Meeting_Attendees_Map] CHECK CONSTRAINT [FK_Meeting_Attendees_Map_Meeting]
GO
