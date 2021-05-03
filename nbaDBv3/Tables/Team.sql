 CREATE TABLE [dbo].[Team]
(
	[TeamName] NVARCHAR(50) NOT NULL CHECK (DATALENGTH(TeamName) > 0), 
	UserID INTEGER NOT NULL,
	primary key (TeamName, UserID),	
	Foreign key (UserID) references Users
);