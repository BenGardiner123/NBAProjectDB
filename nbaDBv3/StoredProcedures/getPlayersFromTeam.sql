
CREATE PROCEDURE [dbo].[getPlayersFromTeam]
	@teamName nvarchar(50) 

AS

--DO WE NEED SOME KIND OF COUNT THAT THE API CAN FETCH TO VALIFDATE BEFOREHAND?
--IF NOT DOES THIS NEED SOME KIND OF ROLLBACK?
--need to add the option here if the player_key is null then return the list of players in the team.
        --DECLARE @TOTAL_PLAYERS INT = 15
        --IF @TOTAL_PLAYERS < (select COUNT(Player_key) FROM PlayerSelection p where p.TeamName = @teamName)
        --IF @TOTAL_PLAYERS >= (select COUNT(Player_key) FROM PlayerSelection p where p.TeamName = @teamName)
        --    THROW 0001, 'MAX PLAYER AMOUNT PER TEAM REACHED', 1

BEGIN
  
    BEGIN TRY
		IF NOT EXISTS
            (
                Select TeamName from PlayerSelection
                Where TeamName = @teamName
		    )
                BEGIN
		            RAISERROR('Team does not exist', 1, 1)
	            END
        ELSE
            BEGIN
                Select Player_key from PlayerSelection
                Where TeamName = @teamName
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

