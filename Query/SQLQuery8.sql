USE [master]
GO
/****** Object:  Database [IMDB]    Script Date: 6/25/2017 12:41:32 AM ******/
CREATE DATABASE [IMDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IMDB_data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\IMDB_data.mdf' , SIZE = 3392KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [IMDB_mod_FG] CONTAINS MEMORY_OPTIMIZED_DATA  DEFAULT
( NAME = N'IMDB_mod', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\IMDB_mod' , MAXSIZE = UNLIMITED)
 LOG ON 
( NAME = N'IMDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\IMDB_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IMDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IMDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IMDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IMDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IMDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IMDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [IMDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IMDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IMDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IMDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IMDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IMDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IMDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IMDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IMDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IMDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IMDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IMDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IMDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IMDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IMDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IMDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IMDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IMDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IMDB] SET  MULTI_USER 
GO
ALTER DATABASE [IMDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IMDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IMDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IMDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [IMDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'IMDB', N'ON'
GO
USE [IMDB]
GO
/****** Object:  Table [dbo].[QuestionsAndAnswers]    Script Date: 6/25/2017 12:41:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuestionsAndAnswers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Param1] [nvarchar](100) NULL,
	[Param2] [nvarchar](100) NULL,
	[Param3] [nvarchar](100) NULL,
	[Param4] [nvarchar](100) NULL,
	[Param5] [nvarchar](100) NULL,
	[Param6] [nvarchar](100) NULL,
	[Param7] [nvarchar](100) NULL,
	[Param8] [nvarchar](100) NULL,
	[Param9] [nvarchar](100) NULL,
	[Param10] [nvarchar](100) NULL,
	[Param11] [nvarchar](100) NULL,
	[Param12] [nvarchar](100) NULL,
	[Param13] [nvarchar](100) NULL,
	[Param14] [nvarchar](100) NULL,
	[Param15] [nvarchar](100) NULL,
	[Param16] [nvarchar](100) NULL,
	[Param17] [nvarchar](100) NULL,
	[Param18] [nvarchar](100) NULL,
	[Param19] [nvarchar](100) NULL,
	[Param20] [nvarchar](100) NULL,
	[Param21] [nvarchar](100) NULL,
	[Param22] [nvarchar](100) NULL,
	[Param23] [nvarchar](100) NULL,
	[Param24] [nvarchar](100) NULL,
	[Param25] [nvarchar](100) NULL,
	[Question] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.QnA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionsAndAnswers] ON 

GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (1, N'What', N'is', N'the', N'head', N'office', N'postal', N'address?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the head office postal address?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (2, N'What', N'can', N'you', N'tell', N'me', N'about', N'the', N'switchboard?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What can you tell me about the switchboard?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (3, N'How', N'can', N'I', N'contact', N'reception', N'or', N'facilities', N'management?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I contact reception or facilities management?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (4, N'Number', N'for', N'reception?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Number for reception?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (5, N'What', N'is', N'the', N'number', N'for', N'emergency', N'services?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the number for emergency services?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (6, N'How', N'do', N'I', N'contact', N'security?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How do I contact security?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (7, N'How', N'do', N'I', N'contact', N'the', N'Landlord', N'Conceirge?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How do I contact the Landlord Conceirge?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (8, N'How', N'can', N'I', N'contact', N'the', N'IT', N'Service', N'Desk?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I contact the IT Service Desk?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (9, N'How', N'can', N'I', N'call', N'IT?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I call IT?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (10, N'How', N'can', N'I', N'call', N'the', N'IT?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I call the IT?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (11, N'How', N'can', N'I', N'contact', N'IT?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I contact IT?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (12, N'What', N'does', N'the', N'facilities', N'management', N'helpdesk', N'do?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What does the facilities management helpdesk do?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (13, N'How', N'can', N'I', N'access', N'the', N'facilities', N'management', N'portal?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I access the facilities management portal?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (14, N'What', N'is', N'the', N'policy', N'on', N'alcohol,', N'tobacco', N'and', N'illegal', N'substances?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the policy on alcohol, tobacco and illegal substances?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (15, N'Could', N'you', N'tell', N'me', N'about', N'emergency', N'preparedness?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about emergency preparedness?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (16, N'Could', N'you', N'tell', N'me', N'about', N'evacuating', N'the', N'building?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about evacuating the building?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (17, N'Where', N'is', N'reception?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where is reception?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (18, N'Could', N'you', N'tell', N'me', N'about', N'building', N'security?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about building security?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (19, N'What', N'do', N'I', N'do', N'if', N'I', N'identify', N'a', N'hazard', N'or', N'near', N'miss?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What do I do if I identify a hazard or near miss?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (20, N'What', N'is', N'the', N'policy', N'on', N'office', N'equipment?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the policy on office equipment?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (21, N'Am', N'I', N'required', N'to', N'attend', N'inductions?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Am I required to attend inductions?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (22, N'How', N'can', N'I', N'access', N'the', N'building?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I access the building?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (23, N'Could', N'you', N'tell', N'me', N'about', N'building', N'access?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about building access?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (24, N'What', N'are', N'the', N'types', N'of', N'access', N'cards', N'issued?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are the types of access cards issued?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (25, N'How', N'do', N'I', N'request', N'an', N'access', N'card?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How do I request an access card?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (26, N'Could', N'you', N'tell', N'me', N'about', N'the', N'office', N'facilities?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about the office facilities?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (27, N'What', N'are', N'collaborative', N'exchange', N'areas?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are collaborative exchange areas?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (28, N'Where', N'is', N'the', N'cafe?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where is the cafe?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (29, N'Where', N'is', N'the', N'client', N'facing', N'area?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where is the client facing area?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (30, N'Is', N'there', N'a', N'wellness', N'facility?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Is there a wellness facility?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (31, N'Is', N'there', N'a', N'mothers''', N'room?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Is there a mothers'' room?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (32, N'Where', N'is', N'the', N'prayer', N'room', N'or', N'contemplation', N'room?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where is the prayer room or contemplation room?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (33, N'Could', N'you', N'tell', N'me', N'about', N'the', N'office', N'workstations?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about the office workstations?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (34, N'Where', N'are', N'the', N'visitor', N'workbenches', N'or', N'touchdown', N'desks?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where are the visitor workbenches or touchdown desks?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (35, N'Where', N'and', N'what', N'are', N'the', N'utility', N'areas?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where and what are the utility areas?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (36, N'Are', N'there', N'end-of-trip', N'facilities?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Are there end-of-trip facilities?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (37, N'Is', N'parking', N'available?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Is parking available?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (38, N'How', N'do', N'I', N'organize', N'catering', N'and/or', N'event', N'management?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How do I organize catering and/or event management?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (39, N'Are', N'mailboxes', N'available?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Are mailboxes available?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (40, N'Where', N'do', N'I', N'find', N'stationery', N'and', N'supplies?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where do I find stationery and supplies?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (41, N'Could', N'you', N'tell', N'me', N'about', N'bins', N'and', N'waste', N'management?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about bins and waste management?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (42, N'Where', N'is', N'lost', N'and', N'found?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where is lost and found?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (43, N'Could', N'you', N'tell', N'me', N'about', N'ergonomic', N'workstations?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about ergonomic workstations?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (44, N'Could', N'you', N'tell', N'me', N'about', N'the', N'air', N'conditioning?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about the air conditioning?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (45, N'Is', N'there', N'space', N'for', N'meetings', N'and', N'collaboration?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Is there space for meetings and collaboration?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (46, N'How', N'can', N'I', N'book', N'a', N'meeting', N'room', N'on', N'the', N'office', N'floors?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I book a meeting room on the office floors?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (47, N'How', N'can', N'I', N'book', N'a', N'meeting', N'room', N'on', N'level', N'47?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How can I book a meeting room on level 47?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (48, N'What', N'if', N'I', N'need', N'additional', N'equipment', N'for', N'my', N'meeting?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What if I need additional equipment for my meeting?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (49, N'What', N'do', N'I', N'do', N'if', N'I', N'have', N'a', N'large', N'gathering', N'or', N'function?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What do I do if I have a large gathering or function?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (50, N'What', N'equipment', N'can', N'be', N'found', N'in', N'meeting', N'rooms?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What equipment can be found in meeting rooms?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (51, N'How', N'do', N'I', N'control', N'the', N'meeting', N'room', N'environment?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How do I control the meeting room environment?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (52, N'What', N'is', N'equipment', N'is', N'available', N'at', N'each', N'workstation?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is equipment is available at each workstation?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (53, N'What', N'is', N'the', N'Global', N'Address', N'List', N'(GAL)?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the Global Address List (GAL)?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (54, N'Could', N'you', N'tell', N'me', N'about', N'telephone', N'services?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Could you tell me about telephone services?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (55, N'Can', N'you', N'tell', N'me', N'about', N'voicemail', N'or', N'call', N'redirection?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Can you tell me about voicemail or call redirection?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (56, N'Can', N'you', N'tell', N'me', N'about', N'printing,', N'copying,', N'and', N'scanning?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Can you tell me about printing, copying, and scanning?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (57, N'Are', N'there', N'fascimile', N'services?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Are there fascimile services?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (58, N'What', N'is', N'a', N'virtual', N'desktop?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is a virtual desktop?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (59, N'How', N'do', N'I', N'connect', N'to', N'the', N'wireless', N'network?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How do I connect to the wireless network?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (60, N'What', N'are', N'the', N'virtual', N'noticeboards?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are the virtual noticeboards?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (61, N'What', N'are', N'the', N'televisions', N'located', N'on', N'every', N'floor?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are the televisions located on every floor?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (62, N'How', N'do', N'I', N'put', N'up', N'a', N'notice?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'How do I put up a notice?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (63, N'hi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hi')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (64, N'What', N'is', N'your', N'name?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is your name?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (65, N'Who', N'are', N'you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Who are you?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (66, N'What', N'are', N'you', N'called?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are you called?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (67, N'Are', N'you', N'male', N'or', N'female?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Are you male or female?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (68, N'What', N'languages', N'to', N'you', N'speak?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What languages to you speak?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (69, N'Where', N'do', N'I', N'find', N'standard', N'Supply', N'terms', N'and', N'conditions?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Where do I find standard Supply terms and conditions?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (70, N'What', N'are', N'standard', N'payment', N'terms?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are standard payment terms?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (71, N'What', N'are', N'your', N'payment', N'terms?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are your payment terms?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (72, N'What', N'are', N'your', N'standard', N'payment', N'terms?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are your standard payment terms?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (73, N'What', N'is', N'the', N'Perth', N'office', N'address?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the Perth office address?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (74, N'What', N'are', N'the', N'switchboard', N'hours?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What are the switchboard hours?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (75, N'What', N'is', N'the', N'facilities', N'email', N'address?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the facilities email address?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (76, N'What', N'is', N'the', N'facilities', N'management', N'helpdesk', N'number?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the facilities management helpdesk number?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (77, N'What', N'is', N'the', N'number', N'for', N'the', N'IT', N'Service', N'Desk?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the number for the IT Service Desk?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (78, N'What', N'is', N'the', N'email', N'address', N'for', N'the', N'IT', N'Service', N'Desk?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the email address for the IT Service Desk?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (79, N'Do', N'I', N'need', N'an', N'induction', N'for', N'the', N'Perth', N'office?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Do I need an induction for the Perth office?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (80, N'Is', N'there', N'a', N'cafe?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Is there a cafe?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (81, N'What', N'is', N'the', N'number', N'for', N'security?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the number for security?')
GO
INSERT [dbo].[QuestionsAndAnswers] ([Id], [Param1], [Param2], [Param3], [Param4], [Param5], [Param6], [Param7], [Param8], [Param9], [Param10], [Param11], [Param12], [Param13], [Param14], [Param15], [Param16], [Param17], [Param18], [Param19], [Param20], [Param21], [Param22], [Param23], [Param24], [Param25], [Question]) VALUES (82, N'What', N'is', N'the', N'number', N'for', N'IT?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'What is the number for IT?')
GO
SET IDENTITY_INSERT [dbo].[QuestionsAndAnswers] OFF
GO
/****** Object:  StoredProcedure [dbo].[CheckQuestions]    Script Date: 6/25/2017 12:41:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckQuestions]
	-- Add the parameters for the stored procedure here
	  @Param1 varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Question from QuestionsAndAnswers  where Question like '%'+@Param1+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[GetQuestions]    Script Date: 6/25/2017 12:41:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetQuestions]
	-- Add the parameters for the stored procedure here
	  @Param1 varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Question from QuestionsAndAnswers  where Param1 like '%'+@Param1+'%'OR Param2 like '%'+@Param1+'%' OR Param3 like '%'+@Param1+'%'
	OR Param4 like '%'+@Param1+'%' OR Param5 like '%'+@Param1+'%' OR Param7 like '%'+@Param1+'%' OR Param8 like '%'+@Param1+'%'
	OR Param9 like '%'+@Param1+'%' OR Param10 like '%'+@Param1+'%'
	OR Param11 like '%'+@Param1+'%'
	OR Param12 like '%'+@Param1+'%' OR Param13 like '%'+@Param1+'%'OR Param14 like '%'+@Param1+'%'OR Param15 like '%'+@Param1+'%'
	OR Param16 like '%'+@Param1+'%' OR Param17 like '%'+@Param1+'%'OR Param18 like '%'+@Param1+'%'OR Param19 like '%'+@Param1+'%'OR Param20 like '%'+@Param1+'%'
	OR Param21 like '%'+@Param1+'%' OR Param22 like '%'+@Param1+'%'OR Param23 like '%'+@Param1+'%'OR Param24 like '%'+@Param1+'%'OR Param25 like '%'+@Param1+'%' OR Question like '%'+@Param1+'%'
END


GO
/****** Object:  StoredProcedure [dbo].[INSQuestions]    Script Date: 6/25/2017 12:41:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSQuestions]
	-- Add the parameters for the stored procedure here
	  @Param1 varchar(max), 
	@Param2 varchar(max),
	@Param3 varchar(max),
	@Param4 varchar(max),
	@Param5 varchar(max),
	@Param6 varchar(max),
	@Param7 varchar(max),
	@Param8 varchar(max),
@Param9 varchar(max),
@Param10 varchar(max),
@Param11 varchar(max),
@Param12 varchar(max),
@Param13 varchar(max),
@Param14 varchar(max),
@Param15 varchar(max),
@Param16 varchar(max),
@Param17 varchar(max),
@Param18 varchar(max),
@Param19 varchar(max),
@Param20 varchar(max),
@Param21 varchar(max),
@Param22 varchar(max),
@Param23 varchar(max),
@Param24 varchar(max),
@Param25 varchar(max),
@Param26 varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into QuestionsAndAnswers values(@Param1,@Param2,@Param3,@Param4,@Param5,@Param6,@Param7,@Param8,@Param9,@Param10,@Param11,@Param12,@Param13,@Param14,@Param15,@Param16,@Param17,@Param18,@Param19,@Param20,@Param21,@Param22,@Param23,@Param24,@Param25,@Param26)
END

GO
USE [master]
GO
ALTER DATABASE [IMDB] SET  READ_WRITE 
GO
