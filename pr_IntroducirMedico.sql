
ALTER PROCEDURE pr_IntroducirMedico

@p_CodigoIdentif varchar(4),
@p_NombreMedico varchar(15),
@p_ApellidoMedico varchar(30),
@p_Especialidad varchar(25),
@p_FechaPosesion date,
@p_Cargo varchar(25),
@p_NumColegiado int,
@p_Observaciones text

AS

BEGIN
	
	IF @p_CodigoIdentif <999 --o @p_CodigoIdentif BETWEEN 0 AND 999
		
		RETURN -1 

	BEGIN TRY
		INSERT INTO Hospital.MEDICOS
		(Codigo_Identificacion,
		Nombre_Medico,
		Apellido_Medico,
		Especialidad,
		Fecha_Toma_Posesion,
		Cargo,
		Numero_Colegiado,
		Observaciones)
		VALUES(@p_CodigoIdentif,
				@p_NombreMedico,
				@p_ApellidoMedico,
				@p_Especialidad,
				@p_FechaPosesion,
				@p_Cargo,
				@p_NumColegiado,
				@p_Observaciones)

		RETURN 0

	END TRY
	BEGIN CATCH

		SELECT ERROR_MESSAGE(),ERROR_NUMBER(),ERROR_SEVERITY()

	END CATCH


END

















