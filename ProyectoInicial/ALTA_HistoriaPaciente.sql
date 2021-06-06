
--alter schema dbo transfer Facturacion.Medico

--exec ALTA_HistoriaPaciente 4,3

--select * from HistoriaPaciente
/*select * from Paciente
select * from Medico
select * from historia
*/
alter proc ALTA_HistoriaPaciente(
			@idHpaciente historia,
			@idPaciente Paciente,
			@idMedico Medico
)
as
set nocount on


if not exists (select * from HistoriaPaciente where @idHpaciente=idHistoria)
begin
	
		insert into HistoriaPaciente(idHistoria,idPaciente,idMedico)
		values(@idHpaciente,@idPaciente,@idMedico)
		print'La historia se le a asiganado correctamente al paciente '

end
else
begin

		print'La historia ya existe'
end