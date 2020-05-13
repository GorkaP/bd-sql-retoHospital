
--Insertamos los datos en la tabla Pacientes
INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES (08/7888888, 'Jos� Fernando', 'Romerales Pinto','C/Azor�n, 34 3o','M�stoles','Madrid','28935','913458745','10203-F,H')

INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7234823', '�ngel', 'Ru�z Picasso','C/Salmer�n, 212','Madrid','Madrid','28028','915653433','11454-L','H')

INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7333333', 'Mercedes', 'Romero Carvajal','C/M�laga, 13','M�stoles','Madrid','28935','914556745','14546-E','M')

INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7555555', 'Martin', 'Fern�ndez L�pez','C/Sastres, 21','Madrid','Madrid','28028','913333333','15413-S','H')

--Insertamos los m�dicos
INSERT INTO Hospital.MEDICOS (Codigo_Identificacion,Nombre_Medico,Apellido_Medico,Especialidad,Fecha_Toma_Posesion,Cargo,Numero_Colegiado,Observaciones)
VALUES ('AJH','Antonio','Ja�n Hern�ndez','Pediatria','12-08-82','Adjunto','2113','Est� pr�xima su retirada')

INSERT INTO Hospital.MEDICOS (Codigo_Identificacion,Nombre_Medico,Apellido_Medico,Especialidad,Fecha_Toma_Posesion,Cargo,Numero_Colegiado,Observaciones)
VALUES ('CEM','Carmen','Esterill Manrique','Psiquiatr�a','13-02-92','Jefe de secci�n','1231','')

INSERT INTO Hospital.MEDICOS (Codigo_Identificacion,Nombre_Medico,Apellido_Medico,Especialidad,Fecha_Toma_Posesion,Cargo,Numero_Colegiado,Observaciones)
VALUES ('RLQ','Roc�o','L�pez Quijada','M�dico de familia','23-09-94','Titular','1331','')

--Insertamos datos en la tabla INGRESOS

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('10203-F','23-01-2009','AJH',5,121,'N','Epil�ptico','','')

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('15413-S','13-03-2009','RLQ',2,5,'S','Al�rgico a la penicilina','','')

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('11454-L','25-05-2009','RLQ',3,31,'N','','','')

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('15413-S','29-01-2010','CEM',2,13,'N','','','')


INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('14546-E','24-02-2010','AJH',1,5,'S','Al�rgico al Paidoter�n','','')


--PRUEBA INSERTAR FOTO
INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7333333', 'Mercedes', 'Romero Carvajal','C/M�laga, 13','M�stoles','Madrid','28935','914556745','14546-E','M')