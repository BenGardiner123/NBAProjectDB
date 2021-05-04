--drop view if exists altAllPlayers; 
--drop view if exists allPlayers;


SELECT 
SUM(A.PLUS_MINUS * A.PTS / (A.MINS/A.GP) ) AS ALGO2
FROM	
allPlayers A
where
A.Player_key in (SELECT p.Player_key FROM PlayerSelection p  WHERE p.TeamName = 'Chicago Bulls')
ORDER BY ALGO2


select count(*) as numpalyers, p.SEASON, p.TEAM_ABBREVIATION from Player p 
group by p.SEASON, p.TEAM_ABBREVIATION
order by p.SEASON asc, p.TEAM_ABBREVIATION desc