
--select * from Turno
--select * from TurnoPaciente
--select * from Medico
--select * from Paciente
--insert into Medico values('Pablo','Ramirez')

--EXEC ALTA_Turno '20141021 06:19',4,2,'Nada'

alter proc ALTA_Turno(
			
			@fecha char(14), --20201228 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''

			)
as

/*
ESTADO = 0 (pendiente)
ESTADO = 1 (realizado)
ESTADO = 2 (cancelado)
*/


set nocount on

IF NOT EXISTS(SELECT TOP 1 idTurno from Turno WHERE fechaTurno=@fecha)
BEGIN
	INSERT INTO Turno(fechaTurno,estado,observacion)
	VALUES (@fecha,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente(idTurno,idPaciente,idMedico)
	VALUES (@auxIdturno,@idpaciente,@idmedico)
	print 'El turno se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El turno ya existe'
	return
END