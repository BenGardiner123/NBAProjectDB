
CREATE PROCEDURE [dbo].[getPlayersFromTeam]
	@teamName nvarchar(50) 

AS

BEGIN
  
    BEGIN TRY
            BEGIN

                 select *
                 from 
                 allPlayers a
                 where
                 a.Player_key in (select p.Player_key from PlayerSelection p  where p.TeamName = @teamName);

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

