
--exec ALTA_Historia 3, '20210105', 'El paciente presenta sintomas de pelotudes'
--select * from Historia
--select * from HistoriaPaciente

insert into Historia values(,'Presenta un caso unico y nunca antes visto')

alter proc ALTA_Historia(
		@idhistoria Historia,
		@fechaHistoria char(8),
		@observacion observacion
)
as
set nocount on

if not exists (select * from Historia where @idHistoria=idHistoria)
begin
		insert into Historia(idHistoria,fechaHistoria,observaciones)
		values(@idHistoria,@fechaHistoria,@observacion)
		print 'La histria se agrego correctamente'
		return
end
else
begin
	print 'La historia ya existe'
end