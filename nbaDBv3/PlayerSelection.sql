CREATE TABLE [dbo].[PlayerSelection]
(
	[TeamName]          NVARCHAR(50)   Not Null, 
    [Season]            INT            NOT NULL,
    [PLAYER_ID]         INT            NOT NULL,
    primary key (TeamName, Season, Player_Id),
    Foreign key (TeamName) references Team,
    Foreign key (Season, Player_ID) references Player
);