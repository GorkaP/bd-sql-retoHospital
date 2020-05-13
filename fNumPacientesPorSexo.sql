-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gorka Pourtier
-- Create date: 11-05-2020
-- Description:	Función que cuenta el número de pacientes Mujeres y Hombres.
--              Dependiendo del parámetro M y H.
-- =============================================
CREATE FUNCTION fNumPacientesPorSexo
(
	@sexo char
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @numeroHistorial int

	-- Add the T-SQL statements to compute the return value here
	SELECT @numeroHistorial=COUNT(NumeroHistorial)
	FROM Hospital.Pacientes
	WHERE Sexo = @sexo

	-- Return the result of the function
	RETURN @numeroHistorial

END
GO

