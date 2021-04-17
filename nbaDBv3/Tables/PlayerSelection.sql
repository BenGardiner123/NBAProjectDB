CREATE TABLE [dbo].[PlayerSelection]
(
	[TeamName]          NVARCHAR(50)   Not Null  CHECK (DATALENGTH(TeamName) > 0), 
    [Player_key]        INT            NOT NULL  CHECK (DATALENGTH(Player_key) > 0),
    primary key (TeamName, Player_key),
    Foreign key (TeamName) references Team,
    Foreign key (Player_key) references Player
);