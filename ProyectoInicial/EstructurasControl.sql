

/*declare @valor int
declare @resultado char(10)=''
set @valor = 20
set @resultado = (CASE WHEN @valor = 10 then 'ROJO'
						WHEN @valor = 20 then 'VERDE'
						WHEN @valor = 10 then 'AZUL'
						END)
PRINT @resultado

select *,(CASE WHEN estado=1 then 'VERDE'
				WHEN estado=2 then 'ROJO'
				WHEN estado=3 then 'AZUL'
				ELSE 'GRIS'
		END) as colorturno from turno





DECLARE @idpaciente int 
declare @idturno int

set @idpaciente = 4


IF @idpaciente = 4
BEGIN
	set @idturno = 20
	select * from Paciente where idpaciente=@idpaciente
	print @idturno
	IF EXISTS(select * from paciente where idPaciente=3)
		print 'existe'
END 
*/


declare @contador int=0

WHILE @contador <= 10
BEGIN
	print @contador
	set @contador = @contador + 1
	if @contador = 3
		BREAK
END
PRINT 'sigue ejecutando'





BEGIN TRY
	set @contador = 'texto'
END TRY

BEGIN CATCH
	print 'No es posible asignar un texto a la variable @contador' 
END CATCH







