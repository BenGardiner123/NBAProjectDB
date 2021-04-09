﻿CREATE VIEW [dbo].[altAllPlayers] as 
Select a.*
from
(
Select
FIRSTNAME, 
Lastname, 
MAX(Player.SEASON) OVER (PARTITION BY player_id) as max_year,
AGE, 
GP, 
MINS, 
PLUS_MINUS, 
AST, 
BLK, 
BLKA, 
OREB, 
DREB, 
FG_PCT, 
FG3_PCT, 
FG3A, 
FG3M, 
FGA, 
FGM, 
FT_PCT, 
FTA, 
FTM, 
W, 
L, 
W_PCT, 
PF, 
PFD, 
REB, 
TOV, 
STL, 
PTS
from Player 
) a
where a.season = a.max_year 


