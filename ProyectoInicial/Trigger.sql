

--select * from PacienteLog


CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT 
AS

IF(select  idpais from inserted) = 'MEX'
INSERT INTO PacienteLog (idpaciente,idpais,fechaAlta)
	SELECT i.idPaciente,i.idpais,getdate() FROM inserted i