

--FUNCIONES ESCALARES

--select dbo.concatenar ('Lopez','Roberto')
--select dbo.obtenerPais(10) 

CREATE FUNCTION nombrefun1(@var int)
RETURNS int

AS
BEGIN
	set @var = @var * 5
	return @var
END

CREATE FUNCTION concatenar (
				@apellido varchar(50),
				@nombre varchar(50)
				)
RETURNS varchar(100)

AS
BEGIN
	declare @resultado varchar(100)
	set @resultado = @apellido + ', ' + @nombre
	return @resultado


END

CREATE FUNCTION obtenerPais(
				@idpaciente paciente
)
RETURNS varchar(50)
--select * from Pais

AS
BEGIN
	declare @Pais varchar(50)
	SET @Pais = (SELECT PA.pais from Paciente P
				INNER JOIN Pais PA
				ON PA.idPais = P.idPais
				WHERE idpaciente = @idpaciente)
	return @pais
END

-- FUNCIONES DE TIPO TABLA

-- select * from dbo.listaPaíses()

CREATE FUNCTION listaPaíses()
RETURNS @paises TABLE(idpais char(3), país varchar(50))
AS
BEGIN
	
	INSERT INTO @paises values('ESP','España')
	INSERT INTO @paises values('MEX','Mexico')
	INSERT INTO @paises values('CHI','Chile')
	INSERT INTO @paises values('PER','Perú')
	INSERT INTO @paises values('ARG','Argentina')

	RETURN

END

















