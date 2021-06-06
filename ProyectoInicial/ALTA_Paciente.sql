
--exec ALTA_Paciente '39700944','Carla','Laprida','20180315','calle 9','MEX','','Carla@gmail.com',''
--select * from Paciente
--select * from pais
select * from Historia
select * from HistoriaPaciente

alter proc ALTA_Paciente(
			@dni varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fNacimiento varchar(8),
			@domicilio varchar(50),
			@idpais char(3),
			@tel varchar(20)='',
			@email varchar(30),
			@observacion observacion=''
		
			)
as
set nocount on

/*declare @a bigint=0
while @a <= 1500000
		set @a = @a + 1
		*/

IF NOT EXISTS(SELECT * from Paciente WHERE dni=@dni)
BEGIN
	INSERT INTO Paciente (dni,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
	VALUES (@dni,@nombre,@apellido,@fNacimiento,@domicilio,@idpais,@tel,@email,@observacion)
	print 'El paciente se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El paciente ya existe'
	return
END