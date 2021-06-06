
exec SEL_HistoriaPaciente 2

ALTER PROC SEL_HistoriaPaciente(
			@idpaciente paciente
			)
AS
set nocount on

/*
insert into Historia values(1,'20201231','Esta jodido')
insert into HistoriaPaciente values(1,1,1)
select * from Historia
select * from HistoriaPaciente
select * from Paciente
*/

	IF exists(SELECT * from Paciente P
					INNER JOIN HistoriaPaciente HP
					ON HP.idPaciente = P.idPaciente
					INNER JOIN Historia H
					ON H.idHistoria = HP.idHistoria
					INNER JOIN MedicoEspecialidad ME
					ON ME.idMedico = HP.idMedico
					INNER JOIN Medico M
					ON M.idMedico = ME.idMedico
					WHERE P.idPaciente = @idpaciente )
	SELECT * from Paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico
	WHERE P.idPaciente = @idpaciente 
ELSE
	--print 'No existen historias clinicas para el paciente ' 
	select 0 as resultdo