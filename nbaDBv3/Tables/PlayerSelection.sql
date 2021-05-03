CREATE TABLE [dbo].[PlayerSelection]
(
	[TeamName]  NVARCHAR(50)  Not Null  CHECK (DATALENGTH(TeamName) > 0),
    [UserID] INT NOT NULL,
    [Player_key]  INT  NOT NULL  CHECK (DATALENGTH(Player_key) > 0),
    primary key (TeamName,UserID,Player_key),
    Foreign key (TeamName, UserID) references Team,
    Foreign key (Player_key) references Player
);