
CREATE PROCEDURE [dbo].[addPlayerToTeam]
	@player_id int,
	@teamName nvarchar(50) 
AS
BEGIN
  
    BEGIN TRY
        insert into PlayerSelection(TeamName, Season, PLAYER_ID)
        Select @teamName, altAllPlayers.season, altAllPlayers.player_id
        FROM altAllPlayers 
        WHERE altAllPlayers.player_id = @player_id
    END TRY

    BEGIN CATCH
      SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_STATE() AS ErrorState,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage;
    END CATCH;
END;

GO