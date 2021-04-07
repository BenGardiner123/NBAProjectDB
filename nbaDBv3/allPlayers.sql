﻿CREATE VIEW [dbo].[allPlayers] as 
select player_id, FIRSTNAME, Lastname ,AGE, GP, MINS, PLUS_MINUS, AST, BLK, BLKA, OREB, DREB, FG_PCT, 
FG3_PCT, FG3A, FG3M, FGA, FGM, FT_PCT, FTA, FTM, 
W, L, W_PCT, PF, PFD, REB, TOV, STL, PTS
from (select player_id, Season, FIRSTNAME, LASTNAME, TEAM_ABBREVIATION ,AGE, GP, MINS, PLUS_MINUS, AST, BLK, BLKA, OREB, DREB, FG_PCT, 
FG3_PCT, FG3A, FG3M, FGA, FGM, FT_PCT, FTA, FTM, 
W, L, W_PCT, PF, PFD, REB, TOV, STL, PTS, RANK() over (PARTITION by PLAYER_ID order by season DESC) n
from Player
)m where n = 1