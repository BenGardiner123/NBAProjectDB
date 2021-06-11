CREATE TABLE [dbo].[PlayerSelection]
(
	[TeamName]  NVARCHAR(50),
    [UserName] NVARCHAR(50),
    [Player_key]  INT,
    primary key (TeamName, [UserName] ,Player_key),
    Foreign key (TeamName, [UserName]) references Team,
    Foreign key (Player_key) references Player
);