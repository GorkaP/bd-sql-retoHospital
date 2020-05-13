--Nombre y fecha de toma de posesi�n de los m�dicos pediatras del hospital.
SELECT Nombre_Medico,Fecha_Toma_Posesion
FROM Hospital.MEDICOS
WHERE Especialidad LIKE 'Pediatr�a'
--Nombre de los pacientes residentes en Madrid capital.
SELECT Nombre,Apellidos
FROM Hospital.Pacientes
WHERE Poblacion = 'Madrid' 



--Nombre de los m�dicos que autorizaron ingresos entre enero y febrero de 2010.
SELECT m.Nombre_Medico
FROM Hospital.INGRESOS AS i
JOIN Hospital.MEDICOS AS m
ON i.Codigo_Identificacion=m.Codigo_Identificacion
WHERE i.Fecha_Ingreso BETWEEN '01-01-2010' AND '28-02-2010'


--Nombres y apellidos de los pacientes que ingresaron entre enero y mayo de 2009 y son al�rgicos.
SELECT p.Nombre,p.Apellidos
FROM Hospital.INGRESOS AS i
JOIN Hospital.Pacientes AS p
ON i.Numero_Historial=p.NumeroHistorial
WHERE Fecha_Ingreso BETWEEN '01-01-2009' AND '31-05-2009' AND Alergico ='S'


--Pacientes cuyo ingreso haya sido autorizado por el doctor Antonio Ja�n Hern�ndez.
SELECT p.Nombre,p.Apellidos
FROM Hospital.Pacientes AS p
JOIN Hospital.INGRESOS AS i
ON p.NumeroHistorial=i.Numero_Historial
JOIN Hospital.MEDICOS AS m
ON m.Codigo_Identificacion=i.Codigo_Identificacion
WHERE i.Codigo_Identificacion = 'AJH'
