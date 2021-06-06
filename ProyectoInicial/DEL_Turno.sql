

/*SELECT * FROM Turno
SELECT * FROM TurnoPaciente
*/
--exec DEL_Turno 6

ALTER PROC DEL_Turno(
			@idturno Turno
			)
AS
set nocount on

IF exists(select * from Turno  
			where idTurno = @idturno)
BEGIN
		DELETE FROM Turno WHERE idTurno = @idturno
		DELETE FROM TurnoPaciente WHERE idTurno = @idturno
END
ELSE	
	SELECT 0 as resultado
