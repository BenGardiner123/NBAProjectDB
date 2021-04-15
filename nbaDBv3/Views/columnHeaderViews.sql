CREATE VIEW [dbo].[columnHeaders] as

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'allPlayers'
AND COLUMN_NAME != 'player_key';