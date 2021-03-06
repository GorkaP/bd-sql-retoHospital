USE [HOLAAA]
GO
/****** Object:  UserDefinedFunction [dbo].[fContarPacientes]    Script Date: 11/05/2020 16:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gorka Pourtier
-- Create date: 11-05-2020
-- Description:	Función que cuenta el número de pacientes que hay en el sistema.
-- =============================================
ALTER FUNCTION [dbo].[fContarPacientes]() 

RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @numeroHistorial int 

	-- Add the T-SQL statements to compute the return value here
	SELECT @numeroHistorial=COUNT(NumeroHistorial)
	FROM Hospital.Pacientes

	-- Return the result of the function
	RETURN @numeroHistorial

END
