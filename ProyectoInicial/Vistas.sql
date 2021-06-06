

select * from PacientesTurnosPendientes
select * from VistaPrueba


CREATE VIEW pacientesTurnosPendientes AS

SELECT P.idPaciente,P.nombre,P.apellido,T.idTurno,T.estado 
	from Paciente P
	inner join TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	inner join Turno T
	ON T.idTurno = TP.idTurno
WHERE isnull(T.estado,0) = 0

