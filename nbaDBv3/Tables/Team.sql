 CREATE TABLE [dbo].[Team]
(
	[TeamName] NVARCHAR(50) NOT NULL, 
	[UserName] NVARCHAR (50) NOT NULL,
	primary key (TeamName, [UserName]),	
	Foreign key ([UserName]) references Users
);