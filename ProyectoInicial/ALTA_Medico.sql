

--select * from Medico
--select * from MedicoEspecialidad

--exec ALTA_Medico 'Gerardo','Martinez',1,'M�dico residente'

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
	print 'El M�dico se agreg� correctamente'
	return
END
ELSE
BEGIN
	print 'El M�dico ya existe'
	return
END