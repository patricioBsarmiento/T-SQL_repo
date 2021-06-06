

--sp_help ALTA_Paciente
--sp_helptext ALTA_Turno



--select * from Especialidad
--exec ALTA_Especialidad 'UROLOG�A'

create proc ALTA_Especialidad(
			@especialidad varchar(30)
		
			)
as

IF NOT EXISTS(SELECT * from Especialidad WHERE especialidad=@especialidad)
BEGIN
	INSERT INTO Especialidad (especialidad)
	VALUES (@especialidad)
	print 'La Especialidad se agreg� correctamente'
	return
END
ELSE
BEGIN
	print 'La Especialidad ya existe'
	return
END