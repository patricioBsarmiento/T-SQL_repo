
USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 28/12/2020 05:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[S_paciente] (
			@idpaciente int
)
AS

--DECLARE @ordenamiento char(1) = 'A'


--DECLARE @ordenamiento char(1)
--DECLARE @valorOrdenamiento char(1) 

--SET @valorOrdenamiento = ISNULL (@ordenamiento,'A')

--PRINT @valorOrdenamiento 


SELECT apellido,nombre,idPais,observacion,
		(SELECT observacion from Pais ps where ps.idPais = pa.idPais) descPais
FROM Paciente pa WHERE idPaciente = @idPaciente 

--select * from Pais