
CREATE PROCEDURE [dbo].[getPlayersFromTeam]
	@teamName nvarchar(50), @SortingCol VARCHAR(30) ='FIRSTNAME', @SortType AS VARCHAR(4) = 'DESC' 

AS

BEGIN
  
    BEGIN TRY
            BEGIN

                SELECT *
                FROM	
                allPlayers A
                where
                A.PLAYER_ID in (SELECT p.PLAYER_ID FROM PlayerSelection p  WHERE p.TeamName = @teamName)
				ORDER BY 
					CASE WHEN @SortingCol = 'FIRSTNAME' AND @SortType ='ASC' THEN FIRSTNAME END ,
					CASE WHEN @SortingCol = 'FIRSTNAME' AND @SortType ='DESC' THEN FIRSTNAME END DESC,
					CASE WHEN @SortingCol = 'LASTNAME' AND @SortType ='ASC' THEN LASTNAME END ,
					CASE WHEN @SortingCol = 'LASTNAME' AND @SortType ='DESC' THEN LASTNAME END DESC,
					CASE WHEN @SortingCol = 'AGE' AND @SortType ='ASC' THEN AGE END ,
					CASE WHEN @SortingCol = 'AGE' AND @SortType ='DESC' THEN AGE END DESC,
					CASE WHEN @SortingCol = 'GP' AND @SortType ='ASC' THEN GP END ,
					CASE WHEN @SortingCol = 'GP' AND @SortType ='DESC' THEN GP END DESC,
					CASE WHEN @SortingCol = 'MINS' AND @SortType ='ASC' THEN MINS END ,
					CASE WHEN @SortingCol = 'MINS' AND @SortType ='DESC' THEN MINS END DESC,
					CASE WHEN @SortingCol = 'PLUS_MINUS' AND @SortType ='ASC' THEN PLUS_MINUS END ,
					CASE WHEN @SortingCol = 'PLUS_MINUS' AND @SortType ='DESC' THEN PLUS_MINUS END DESC,
					CASE WHEN @SortingCol = 'AST' AND @SortType ='ASC' THEN AST END ,
					CASE WHEN @SortingCol = 'AST' AND @SortType ='DESC' THEN AST END DESC,
					CASE WHEN @SortingCol = 'BLK' AND @SortType ='ASC' THEN BLK END ,
					CASE WHEN @SortingCol = 'BLK' AND @SortType ='DESC' THEN BLK END DESC,
					CASE WHEN @SortingCol = 'BLKA' AND @SortType ='ASC' THEN BLKA END ,
					CASE WHEN @SortingCol = 'BLKA' AND @SortType ='DESC' THEN BLKA END DESC,
					CASE WHEN @SortingCol = 'OREB' AND @SortType ='ASC' THEN OREB END ,
					CASE WHEN @SortingCol = 'OREB' AND @SortType ='DESC' THEN OREB END DESC,
					CASE WHEN @SortingCol = 'DREB' AND @SortType ='ASC' THEN DREB END ,
					CASE WHEN @SortingCol = 'DREB' AND @SortType ='DESC' THEN DREB END DESC,
					CASE WHEN @SortingCol = 'FG_PCT' AND @SortType ='ASC' THEN FG_PCT END ,
					CASE WHEN @SortingCol = 'FG_PCT' AND @SortType ='DESC' THEN FG_PCT END DESC,
					CASE WHEN @SortingCol = 'FG3_PCT' AND @SortType ='ASC' THEN FG3_PCT END ,
					CASE WHEN @SortingCol = 'FG3_PCT' AND @SortType ='DESC' THEN FG3_PCT END DESC,
					CASE WHEN @SortingCol = 'FG3A' AND @SortType ='ASC' THEN FG3A END ,
					CASE WHEN @SortingCol = 'FG3A' AND @SortType ='DESC' THEN FG3A END DESC,
					CASE WHEN @SortingCol = 'FG3M' AND @SortType ='ASC' THEN FG3M END ,
					CASE WHEN @SortingCol = 'FG3M' AND @SortType ='DESC' THEN FG3M END DESC,
					CASE WHEN @SortingCol = 'FGA' AND @SortType ='ASC' THEN FGA END ,
					CASE WHEN @SortingCol = 'FGA' AND @SortType ='DESC' THEN FGA END DESC,
					CASE WHEN @SortingCol = 'FGM' AND @SortType ='ASC' THEN FGM END ,
					CASE WHEN @SortingCol = 'FGM' AND @SortType ='DESC' THEN FGM END DESC,
					CASE WHEN @SortingCol = 'FT_PCT' AND @SortType ='ASC' THEN FT_PCT END ,
					CASE WHEN @SortingCol = 'FT_PCT' AND @SortType ='DESC' THEN FT_PCT END DESC,
					CASE WHEN @SortingCol = 'FTA' AND @SortType ='ASC' THEN FTA END ,
					CASE WHEN @SortingCol = 'FTA' AND @SortType ='DESC' THEN FTA END DESC,
					CASE WHEN @SortingCol = 'FTM' AND @SortType ='ASC' THEN FTM END ,
					CASE WHEN @SortingCol = 'FTM' AND @SortType ='DESC' THEN FTM END DESC,
					CASE WHEN @SortingCol = 'W' AND @SortType ='ASC' THEN W END ,
					CASE WHEN @SortingCol = 'W' AND @SortType ='DESC' THEN W END DESC,
					CASE WHEN @SortingCol = 'L' AND @SortType ='ASC' THEN L END ,
					CASE WHEN @SortingCol = 'L' AND @SortType ='DESC' THEN L END DESC,
					CASE WHEN @SortingCol = 'W_PCT' AND @SortType ='ASC' THEN W_PCT END ,
					CASE WHEN @SortingCol = 'W_PCT' AND @SortType ='DESC' THEN W_PCT END DESC,
					CASE WHEN @SortingCol = 'PF' AND @SortType ='ASC' THEN PF END ,
					CASE WHEN @SortingCol = 'PF' AND @SortType ='DESC' THEN PF END DESC,
					CASE WHEN @SortingCol = 'PFD' AND @SortType ='ASC' THEN PFD END ,
					CASE WHEN @SortingCol = 'PFD' AND @SortType ='DESC' THEN PFD END DESC,
					CASE WHEN @SortingCol = 'REB' AND @SortType ='ASC' THEN REB END ,
					CASE WHEN @SortingCol = 'REB' AND @SortType ='DESC' THEN REB END DESC,
					CASE WHEN @SortingCol = 'TOV' AND @SortType ='ASC' THEN TOV END ,
					CASE WHEN @SortingCol = 'TOV' AND @SortType ='DESC' THEN TOV END DESC,
					CASE WHEN @SortingCol = 'STL' AND @SortType ='ASC' THEN STL END ,
					CASE WHEN @SortingCol = 'STL' AND @SortType ='DESC' THEN STL END DESC,
					CASE WHEN @SortingCol = 'PTS' AND @SortType ='ASC' THEN PTS END ,
					CASE WHEN @SortingCol = 'PTS' AND @SortType ='DESC' THEN PTS END DESC

            END
    END TRY

    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000);  
        DECLARE @ErrorSeverity INT;  
        DECLARE @ErrorState INT;  
  
        SELECT   

            @ErrorMessage = ERROR_MESSAGE(),  
            @ErrorSeverity = ERROR_SEVERITY(),  
            @ErrorState = ERROR_STATE();  

            RAISERROR  (@ErrorMessage, -- Message text.  
                        @ErrorSeverity, -- Severity.  
                        @ErrorState -- State.  
                       );  
    END CATCH;
END;

