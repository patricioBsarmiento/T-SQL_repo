
--exec SEL_EspecialidadesMedicas

CREATE PROC SEL_EspecialidadesMedicas
as
set nocount on

IF exists(
			select * from Especialidad
			)
	select * from Especialidad
else
	select 0 as resultado