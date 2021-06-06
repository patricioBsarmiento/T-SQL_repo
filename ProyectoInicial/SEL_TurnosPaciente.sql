
--exec SELECT_TurnosPaciente 6


ALTER PROC SELECT_TurnosPaciente(
				@idpaciente paciente
				)

AS
set nocount on
/*
select * from Turno
select * from TurnoPaciente
select * from Paciente
select * from MedicoEspecialidad
insert into MedicoEspecialidad values(1,2,'Medico Clínico')
*/
IF exists(SELECT * FROM Paciente P
			INNER JOIN TurnoPaciente TP
			ON TP.idPaciente = P.idPaciente
			INNER JOIN Turno T
			ON T.idTurno = TP.idTurno
			INNER JOIN MedicoEspecialidad M
			ON M.idMedico = TP.idMedico
			where P.idPaciente = @idpaciente)
	SELECT * FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
	INNER JOIN MedicoEspecialidad M
	ON M.idMedico = TP.idMedico
	where P.idPaciente = @idpaciente
ELSE
	select 0 as resultado