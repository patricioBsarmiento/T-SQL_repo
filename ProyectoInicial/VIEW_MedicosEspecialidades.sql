

select * from VIEW_MedicosEspecialidades



CREATE VIEW VIEW_MedicosEspecialidades AS 

select M.idMedico,M.nombre,M.apellido,ME.idEspecialidad,ME.descripcion from Medico M
inner join MedicoEspecialidad ME 
on ME.idMedico = M.idMedico
