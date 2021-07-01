CREATE TABLE [dbo].[PlayerSelection]
(
	[TeamName]  NVARCHAR(50),
    [UserName]  NVARCHAR(50),
    [PLAYER_ID] INT,
    [SEASON] INT,
    Primary key (TeamName, [UserName] , PLAYER_ID, SEASON),
    Foreign key (TeamName, [UserName]) references Team,
    Foreign key (PLAYER_ID, SEASON) references Player
);