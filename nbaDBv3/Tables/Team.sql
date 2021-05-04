 CREATE TABLE [dbo].[Team]
(
	[TeamName] NVARCHAR(50) NOT NULL, 
	[UserID] INT,
	primary key (TeamName, UserID),	
	Foreign key (UserID) references Users
);