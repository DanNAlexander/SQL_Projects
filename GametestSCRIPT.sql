-- GAME TEST DATABASE SCRIPT

USE [master]
GO


--USE TO MODIFY CHANGES IF DATABASE EXISTS
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'GAMEtestSCRIPT')
BEGIN
    ALTER DATABASE GAMEtestSCRIPT
    SET OFFLINE WITH ROLLBACK IMMEDIATE
    ALTER DATABASE GAMEtestSCRIPT
    SET ONLINE
    DROP DATABASE GAMEtestSCRIPT
END
GO


-----------------------------------------------------------------------------------------


--DATABASE CREATION FOR GAMEtestSCRIPT
CREATE DATABASE GAMEtestSCRIPT
GO
--ALTER DATABASE GAMEtestSCRIPT SET REVOVERY Simple
--GO
ALTER DATABASE GAMEtestSCRIPT SET ANSI_PADDING OFF
GO


-----------------------------------------------------------------------------------------


--DATABASE USE STATEMENT
USE[GAMEtestSCRIPT]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-----------------------------------------------------------------------------------------


-- CREATE TABLE GameConsole
CREATE TABLE [dbo].[GameConsole]
(
    [consoleID]     [INT] IDENTITY(1,1) NOT NULL,
    [consoleName]   [VARCHAR] (30)      NOT NULL,

    CONSTRAINT [pk_console_consoleID] PRIMARY KEY CLUSTERED
    (
        [consoleID] ASC
    )
    WITH 
    (
        PAD_INDEX = OFF, 
        STATISTICS_NORECOMPUTE = OFF,
        IGNORE_DUP_KEY = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    )ON [PRIMARY]
)ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----------------------------------------------------------------------------------------


--CREATE TABLE PS1Games
CREATE TABLE [dbo].[PS1Games]
(
    [ps1ID]         [INT] IDENTITY(1,1) NOT NULL,
    [ps1GameTitle]  [VARCHAR](70)       NOT NULL,
    [ps1Edition]    [VARCHAR](30)       NULL,
    [consoleID]     [INT]               NOT NULL

    CONSTRAINT [pk_ps1_ps1ID] PRIMARY KEY CLUSTERED
    (
        [ps1ID] ASC
    )
    WITH
    (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        IGNORE_DUP_KEY = OFF,
        ALLOW_ROW_LOCKS = ON
    )ON [PRIMARY]
)ON [PRIMARY]
GO


------------------------------------------------------------------------------------------



-- INSERT STATEMENTS ---------------------------------------------------------------------


--GameConsole Inserts
SET IDENTITY_INSERT [dbo].[GameConsole] ON
GO

USE GAMEtestSCRIPT
GO

INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (1, 'NDS');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (2, '3DS');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (3, 'Gamecube');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (4, 'WII');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (5, 'WII U');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (6, 'Switch');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (7, 'PS1');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (8, 'PS2');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (9, 'PS3');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (10, 'PS4');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (11, 'PSP');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (12, 'Xbox 360');
INSERT [dbo].[GameConsole] ([consoleID], [consoleName]) VALUES (13, 'PC Physical');
GO

SET INDENTITY_INSERT [dbo].[GameConsole] OFF
GO


------------------------------------------------------------------------------------------


--PS1Games Inserts
SET IDENTITY_INSERT [dbo].[PS1Games] ON
GO

INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (1, 'Digimon World 3', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [ps1Edition], [consoleID]) VALUES (2, 'Spyro Collection', '3 Game Collection - 3 Cases in 1 Sleeve - Spyro 1,2,3', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (3, 'The Legend of Dragoon', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (4, 'Final Fantasy 7', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (5, 'Final Fantasy 9', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (6, 'Croc: Legend of the Gobbos', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (7, 'Harry Potter and the Philosophers Stone', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (8, 'Phix the Adventure', 7);
INSERT [dbo].[PS1Games] ([ps1ID], [ps1GameTitle], [consoleID]) VALUES (9, 'Shrek: Treasure Hunt', 7);
GO

SET IDENTITY_INSERT [dbo].[PS1Games] OFF
GO

