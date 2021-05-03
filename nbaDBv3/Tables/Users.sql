CREATE TABLE [dbo].[Users]
(
	 UserID INT IDENTITY(1,1)
	,UserName VARCHAR(30) NOT NULL CHECK (DATALENGTH(userName) > 0) 
	,PasswordHash varbinary(max)
	,PasswordSalt varbinary(max)
	primary key (UserID)

);