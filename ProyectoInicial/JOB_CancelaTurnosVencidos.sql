
--select * from TurnoEstado
--select * from Turno


use CentroMedico
go
update Turno set estado = 2 where convert(char(8),fechaTurno,112) < convert(char(8),getdate(),112)
and estado=0