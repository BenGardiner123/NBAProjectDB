CREATE VIEW [dbo].[altAllPlayers] as 
SELECT a.player_id, a.FIRSTNAME, a.Lastname, a.AGE, a.GP, a.MINS, a.PLUS_MINUS, a.AST, a.BLK, a.BLKA, a.OREB, a.DREB, a.FG_PCT, a.FG3_PCT, a.FG3A, a.FG3M, a.FGA, a.FGM, a.FT_PCT, a.FTA, a.FTM, 
a.W, a.L, a.W_PCT, a.PF, a.PFD, a.REB, a.TOV, a.STL, a.PTS, s.maxSeason
FROM (
		SELECT player_id, FIRSTNAME, Lastname ,AGE, GP, MINS, PLUS_MINUS, AST, BLK, BLKA, OREB, DREB, FG_PCT, FG3_PCT, FG3A, FG3M, FGA, FGM, FT_PCT, FTA, FTM, 
		  W, L, W_PCT, PF, PFD, REB, TOV, STL, PTS, MAX(Season) as maxSeason
		  FROM Player
		  GROUP BY player_id, FIRSTNAME, Lastname ,AGE, GP, MINS, PLUS_MINUS, AST, BLK, BLKA, OREB, DREB, FG_PCT, FG3_PCT, FG3A, FG3M, FGA, FGM, FT_PCT, FTA, FTM, 
		  W, L, W_PCT, PF, PFD, REB, TOV, STL, PTS
	) AS S
INNER JOIN Player as a
ON a.PLAYER_ID = s.PLAYER_ID
AND a.SEASON = s.maxSeason


