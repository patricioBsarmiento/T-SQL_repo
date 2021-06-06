


select * from Paciente

/*BEGIN TRAN
	UPDATE Paciente SET telefono=444 WHERE apellido='Perez'
	if @@ROWCOUNT = 1
		COMMIT TRAN
	else
		ROLLBACK TRAN*/

select * from Turno

BEGIN TRAN
	DELETE from Turno WHERE estado=1
if @@ROWCOUNT = 1
	COMMIT TRAN
else
	ROLLBACK TRAN














/*select dbo.nombrefun (256)


CREATE FUNCTION nombrefun (@var int)
RETURNS INT 
AS

BEGIN
	SET @var = @var * 5
	return @var
END*/
