
CREATE PROCEDURE [dbo].[addPlayerToTeam]
	@player_key int,
	@teamName nvarchar(50) 
AS
BEGIN
  
    BEGIN TRY
        insert into PlayerSelection(TeamName, Player_key)
        Select @teamName, @player_key
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