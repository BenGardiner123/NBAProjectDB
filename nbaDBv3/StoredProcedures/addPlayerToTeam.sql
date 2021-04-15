
CREATE PROCEDURE [dbo].[addPlayerToTeam]
	@player_key int,
	@teamName nvarchar(50) 

AS

--DO WE NEED SOME KIND OF COUNT THAT THE API CAN FETCH TO VALIFDATE BEFOREHAND?
--IF NOT DOES THIS NEED SOME KIND OF ROLLBACK?

BEGIN
  
    BEGIN TRY
        --need to add the option here if the player_key is null then return the list of players in the team.

        DECLARE @TOTAL_PLAYERS INT = 15
        IF @TOTAL_PLAYERS < (select COUNT(Player_key) FROM PlayerSelection p where p.TeamName = @teamName)
            insert into PlayerSelection(TeamName, Player_key)
            Select @teamName, @player_key
        IF @TOTAL_PLAYERS >= (select COUNT(Player_key) FROM PlayerSelection p where p.TeamName = @teamName)
            THROW 0001, 'MAX PLAYER AMOUNT PER TEAM REACHED', 1
    END TRY

    BEGIN CATCH

        IF ERROR_NUMBER() IN (0001) 
            THROW
   
    END CATCH;
END;

GO