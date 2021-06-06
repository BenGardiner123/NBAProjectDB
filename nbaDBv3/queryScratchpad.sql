--drop view if exists altAllPlayers; 
--drop view if exists allPlayers;
--deployed this localley

----------------------------------------------------------------
--looking at the algo for the allplayers join on playerselection
----------------------------------------------------------------

--SELECT 
--SUM(A.PLUS_MINUS * A.PTS / (A.MINS/A.GP) ) AS ALGO1
--FROM	
--allPlayers A
--where
--A.Player_key in (SELECT p.Player_key FROM PlayerSelection p  WHERE p.TeamName = 'Miami Heat' )
--ORDER BY ALGO1

--select *
--from PlayerSelection

--SELECT 
--SUM(A.PLUS_MINUS * A.PTS / (A.MINS/A.GP) ) AS ALGO2
--FROM	
--allPlayers A
--where
--A.Player_key in (SELECT p.Player_key FROM PlayerSelection p  WHERE p.TeamName = 'Chicago Bulls')
--ORDER BY ALGO2


----------------------------------------------------------------------------
--cehcking on the counts for potential issues
----------------------------------------------------------------------------
--select count(*) as numpalyers, p.SEASON, p.TEAM_ABBREVIATION from Player p 
--group by p.SEASON, p.TEAM_ABBREVIATION
--order by p.SEASON asc, p.TEAM_ABBREVIATION desc


---------------------------------------------------------------------------
--stored proc for the algo for later on once my testing is finshed
---------------------------------------------------------------------------
--CREATE PROCEDURE [dbo].[Algo]
--	@teamName nvarchar(50), @userID INT
--AS
--SELECT SUM(A.PTS) AS pts, SUM(A.MINS) AS MINS, SUM(A.PLUS_MINUS) AS PLUSMINUS, SUM(GP) AS GAMESPL
--FROM	
--allPlayers A
--where
--A.Player_key in (SELECT p.Player_key FROM PlayerSelection p  WHERE p.TeamName = @teamName AND P.UserID = @userID)