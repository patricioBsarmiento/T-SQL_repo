/*
SELECT * from Turno
SELECT * from TurnoEstado
SELECT * FROM TurnoPaciente
SELCT
*/

--exec UPD_Turno 7,3,'Sin novedades'

ALTER PROC UPD_Turno(
			@idturno Turno, 
			@estado smallint,
			@observacion observacion)
AS
set nocount on

IF exists(select * from Turno  where idTurno=@idturno)
		UPDATE Turno set estado = @estado, 
						 observacion = @observacion	
		WHERE idTurno = @idturno
ELSE	
	SELECT 0 as resultado

