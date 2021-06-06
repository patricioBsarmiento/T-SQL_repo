
-- TABLAS TEMPORALES EN MEMORIA 

DECLARE @mitabla TABLE (id int IDENTITY(1,1), país varchar(50))

insert into @mitabla values('MEXICO')
insert into @mitabla values('PERÚ')
insert into @mitabla values('ARGENTINA')
insert into @mitabla values('COLOMBIA')
insert into @mitabla values('ECUADOR')

select * from @mitabla

-- TABLA TEMPORAL FÍSICA

CREATE TABLE #mitabla (id int IDENTITY(1,1), nombre varchar(50), apellido varchar(50))

INSERT INTO #mitabla values('Alejandro','Lopez')
INSERT INTO #mitabla values('Rafael','Castillo')
INSERT INTO #mitabla values('Fernando','Gonzalez')

select * from #mitabla

DROP TABLE #mitabla

--SCRIPT 
--select * from Turno
--select * from TurnoPaciente
 declare @turnos table (id int IDENTITY (1,1),idturno turno,idpaciente paciente)
 declare @idpaciente paciente
 set @idpaciente = 4


 insert into @turnos (idturno, idpaciente)   --FORMA DE INSERTAR REGISTRO EN UNA TABLA
 select TP.idturno,P.idPaciente from Paciente P
	inner join TurnoPaciente TP
	on TP.idPaciente = P.idPaciente

declare @i int,@total int
set @i = 1
set @total = (select count(*) from @turnos)

WHILE @i <= @total
BEGIN
	IF (select idpaciente  from @turnos where id = @i) <> 4
		delete from @turnos where id = @i

	set @i = @i + 1
END
select * from Paciente P
	inner join @turnos T
	ON T.idpaciente = P.idpaciente















