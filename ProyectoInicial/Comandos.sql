

select * from Especialidad
insert into Especialidad values('NUTRICIONISTA')


EXEC S_paciente 4


declare @var1 varchar(20)
declare @var2 varchar(20)
set @var1 = 'RAMIRO'
set @var2 = 'GONZALES'

print UPPER(LEFT(@var1,1)) + LOWER(RIGHT(@var1,LEN(@var1)-1))

print UPPER(LEFT(@var2,1)) + LOWER(RIGHT(@var2,LEN(@var2)-1))



print LEFT(@var1,LEN(@var1)-1) --+ LEFT(@var2,1)

print LOWER(@var1) + UPPER(@var2)

print LEN (@var1)








ALTER TABLE Paciente ADD estado smallint
ALTER TABLE Paciente ALTER COLUMN estado bit
ALTER TABLE Paciente DROP COLUMN estado 



CREATE TABLE ejemplo (campo0 int identity(1,1),campo1 int, campo2 int)

select * from ejemplo
INSERT INTO ejemplo values(2,3)

TRUNCATE TABLE ejemplo

DROP TABLE ejemplo 





--SELECT
SELECT * FROM Paciente WHERE nombre='Claudio' and apellido='Perez'
SELECT TOP 4 * FROM Paciente ORDER BY nombre
SELECT TOP 3 * FROM Turno ORDER BY fechaTurno ASC
SELECT * FROM Paciente ORDER BY fNacimiento
SELECT DISTINCT idPaciente,apellido FROM Paciente 
SELECT apellido FROM Paciente GROUP BY apellido
 
SELECT Min(idPaciente) FROM Paciente

SELECT MAX(idPaciente) from Paciente GROUP BY apellido 
SELECT SUM (idPaciente) FROM Paciente GROUP BY apellido

SELECT AVG(idPaciente) FROM Paciente
select * from Turno
SELECT COUNT(*) FROM Paciente
SELECT COUNT(idPaciente) FROM Paciente WHERE apellido='Perez'

select * from Turno
SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado)=1

SELECT * FROM Paciente WHERE apellido='Perez' and nombre='roberto' and idPaciente=4
SELECT * FROM Paciente WHERE apellido='Perez' or nombre='roberto' or idPaciente=4

select * from Turno

SELECT * FROM Turno WHERE estado IN(2,1,3)
SELECT * FROM Turno WHERE estado NOT IN(2,1,3)
SELECT * FROM Paciente
select * from Paciente where nombre LIKE 'rober%'
select * from Paciente where nombre NOT LIKE 'rober%'
SELECT * FROM TURNO WHERE fechaTurno BETWEEN '20200302' AND '20200304'


SELECT * FROM Paciente WHERE apellido='Perez' AND (nombre='roberto' OR idPaciente=4 OR idPais='PER')
and idPaciente	IN(6,3)


--INSERT
INSERT INTO Paciente (nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion) 
values('Roberto3','Perez','2017-01-01','piedra bueena 21','ESP','','','')

--DELETE
DELETE FROM Paciente WHERE nombre='Claudio' and apellido='Perez'

--UPDATE
UPDATE Paciente SET observacion='observacion modificada' WHERE idPaciente=5


CREATE TYPE Pais FROM CHAR(3)