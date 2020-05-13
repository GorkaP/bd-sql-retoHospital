
EXEC usp_MostrarPacientesIngresados '1/1/2009', '1/2/2009'


CREATE PROCEDURE usp_MostrarPacientesIngresados

@p_fechaInicial date,
@p_fechaFinal date


AS

BEGIN

	SELECT p.Nombre,p.Apellidos,i.Numero_Historial,i.Fecha_Ingreso,i.Numero_Cama,i.Diagnostico,i.Alergico,i.Observaciones
	FROM Hospital.INGRESOS AS i
	JOIN Hospital.Pacientes AS p
	ON i.Numero_Historial=p.NumeroHistorial 
	WHERE i.Fecha_Ingreso BETWEEN @p_fechaInicial AND @p_fechaFinal



END