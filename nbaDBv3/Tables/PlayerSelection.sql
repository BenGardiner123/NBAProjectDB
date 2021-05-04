CREATE TABLE [dbo].[PlayerSelection]
(
	[TeamName]  NVARCHAR(50),
    [UserID] INT,
    [Player_key]  INT,
    primary key (TeamName, UserID ,Player_key),
    Foreign key (TeamName, UserID) references Team,
    Foreign key (Player_key) references Player
);