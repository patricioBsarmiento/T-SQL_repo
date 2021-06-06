


select * from Paciente
select * from TurnoPaciente

SELECT * from Paciente P
INNER JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

SELECT * from Paciente P
LEFT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

SELECT * from Paciente P
RIGHT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

-----------------------------------------------------
select * from Turno

SELECT * FROM Turno WHERE estado=0
UNION
SELECT * FROM Turno WHERE estado=2


select * from Paciente
select * from TurnoPaciente
select * from Turno

select nombre,apellido,fechaTurno,idestado1,descripcion
from Paciente inner join TurnoPaciente on TurnoPaciente.idPaciente1=Paciente.idPaciente
inner join Turno on Turno.idTurno=TurnoPaciente.idTurno1
inner join TurnoEstado on TurnoEstado.idestado=Turno.idestado1
--select * from TurnoPaciente


















