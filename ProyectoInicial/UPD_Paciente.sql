
--select * from Paciente

--EXEC UPD_Paciente 4,'Natalia','Bermudez','19700922','La Comarca 870','ARG','1144445678','bermu@gmail.com','NADA'


ALTER PROC UPD_Paciente(
			@idpaciente paciente,
			
			@nombre varchar(50),
			@apellido varchar(50),
			@fnacimiento varchar(8),
			@domicilio varchar(50),
		    @idpais char(3),
			@telefono varchar(20),
			@email varchar(30),
			@observacion observacion
			)
AS
set nocount on

if exists (select * from Paciente where idPaciente = @idpaciente)
			UPDATE Paciente set 
								nombre = @nombre,
								apellido = @apellido,
								fNacimiento = @fnacimiento,
								domicilio = @domicilio,
								idPais = @idpais,
								telefono = @telefono,
								email = @email,
								observacion = @observacion
			WHERE idPaciente = @idpaciente
ELSE
	SELECT 0 AS resultado



