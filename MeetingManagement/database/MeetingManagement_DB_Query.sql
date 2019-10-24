USE [MeetingManagementDB]
GO
/****** Object:  Table [dbo].[Meeting]    Script Date: 10/24/2019 00:34:19 ******/
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
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Meeting_1] PRIMARY KEY CLUSTERED 
(
	[MeetingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Meeting] ON
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (1, N'Test Subject', N'Test Agenda', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (2, N'Test Subject2', N'Test Agenda2', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (3, N'Test Subject3', N'Test Agenda3', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (4, N'Test Subject4', N'Test Agenda5', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Meeting] ([MeetingId], [Subject], [Agenda], [MDateTime], [Status], [ModifiedBy], [ModifiedDate], [CreatedBy], [CreatedDate]) VALUES (6, N'Test Subject5', N'Test Agenda5', CAST(0x0000AAEF00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Meeting] OFF
/****** Object:  Table [dbo].[Attendees]    Script Date: 10/24/2019 00:34:19 ******/
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
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Attendees_1] PRIMARY KEY CLUSTERED 
(
	[AttendeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
SET IDENTITY_INSERT [dbo].[Attendees] OFF
/****** Object:  Table [dbo].[Meeting_Attendees_Map]    Script Date: 10/24/2019 00:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting_Attendees_Map](
	[MapId] [int] IDENTITY(1,1) NOT NULL,
	[MeetingId] [int] NULL,
	[AttendeeId] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Meeting_Attendees_Map] PRIMARY KEY CLUSTERED 
(
	[MapId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Meeting_Attendees_Map] ON
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (1, 4, 1, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (2, 4, 2, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (3, NULL, 1, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (4, NULL, 2, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (5, NULL, 3, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (6, 6, 1, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (7, 6, 2, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (8, 6, 3, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (9, 6, 4, NULL)
INSERT [dbo].[Meeting_Attendees_Map] ([MapId], [MeetingId], [AttendeeId], [Status]) VALUES (10, 6, 5, NULL)
SET IDENTITY_INSERT [dbo].[Meeting_Attendees_Map] OFF
/****** Object:  Default [DF_Attendees_Status]    Script Date: 10/24/2019 00:34:19 ******/
ALTER TABLE [dbo].[Attendees] ADD  CONSTRAINT [DF_Attendees_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Attendees_CreatedDate]    Script Date: 10/24/2019 00:34:19 ******/
ALTER TABLE [dbo].[Attendees] ADD  CONSTRAINT [DF_Attendees_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Meeting_Status]    Script Date: 10/24/2019 00:34:19 ******/
ALTER TABLE [dbo].[Meeting] ADD  CONSTRAINT [DF_Meeting_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Meeting_CreatedDate]    Script Date: 10/24/2019 00:34:19 ******/
ALTER TABLE [dbo].[Meeting] ADD  CONSTRAINT [DF_Meeting_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  ForeignKey [FK_Meeting_Attendees_Map_Attendees]    Script Date: 10/24/2019 00:34:19 ******/
ALTER TABLE [dbo].[Meeting_Attendees_Map]  WITH CHECK ADD  CONSTRAINT [FK_Meeting_Attendees_Map_Attendees] FOREIGN KEY([AttendeeId])
REFERENCES [dbo].[Attendees] ([AttendeeId])
GO
ALTER TABLE [dbo].[Meeting_Attendees_Map] CHECK CONSTRAINT [FK_Meeting_Attendees_Map_Attendees]
GO
/****** Object:  ForeignKey [FK_Meeting_Attendees_Map_Meeting]    Script Date: 10/24/2019 00:34:19 ******/
ALTER TABLE [dbo].[Meeting_Attendees_Map]  WITH CHECK ADD  CONSTRAINT [FK_Meeting_Attendees_Map_Meeting] FOREIGN KEY([MeetingId])
REFERENCES [dbo].[Meeting] ([MeetingId])
GO
ALTER TABLE [dbo].[Meeting_Attendees_Map] CHECK CONSTRAINT [FK_Meeting_Attendees_Map_Meeting]
GO
