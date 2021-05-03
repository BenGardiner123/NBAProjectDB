CREATE TABLE [dbo].[Users]
(
	 UserID INT IDENTITY(1,1)
	,FirstName VARCHAR(30) 
	,LastName VARCHAR(30) 
	,UserName VARCHAR(30) 
	,PasswordHash varbinary(max)
	,PasswordSalt varbinary(max)
	primary key (UserID)
);