 CREATE TABLE [dbo].[Team]
(
	[TeamName] NVARCHAR(50) NOT NULL CHECK (DATALENGTH(TeamName) > 0), 
	primary key (TeamName),
)