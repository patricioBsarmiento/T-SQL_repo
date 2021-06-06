

--select * from Medico
--select * from MedicoEspecialidad

--exec ALTA_Medico 'Gerardo','Martinez',1,'Médico residente'

create proc ALTA_Medico(
			
			@nombre varchar(50), 
			@apellido varchar(20),
			@idespecialidad int,
			@descripcion varchar(100)

			)
as
set nocount on

IF NOT EXISTS(SELECT TOP 1 idmedico from Medico WHERE nombre=@nombre and apellido=@apellido)
BEGIN
	INSERT INTO Medico(nombre, apellido)
	VALUES (@nombre,@apellido)

	declare @auxIdmedico int
	set @auxIdmedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad(idMedico,idEspecialidad,descripcion)
	VALUES (@auxIdmedico,@idespecialidad,@descripcion)
	print 'El Médico se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El Médico ya existe'
	return
END