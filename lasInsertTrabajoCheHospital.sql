
--Insertamos los datos en la tabla Pacientes
INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES (08/7888888, 'José Fernando', 'Romerales Pinto','C/Azorín, 34 3o','Móstoles','Madrid','28935','913458745','10203-F,H')

INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7234823', 'Ángel', 'Ruíz Picasso','C/Salmerón, 212','Madrid','Madrid','28028','915653433','11454-L','H')

INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7333333', 'Mercedes', 'Romero Carvajal','C/Málaga, 13','Móstoles','Madrid','28935','914556745','14546-E','M')

INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7555555', 'Martin', 'Fernández López','C/Sastres, 21','Madrid','Madrid','28028','913333333','15413-S','H')

--Insertamos los médicos
INSERT INTO Hospital.MEDICOS (Codigo_Identificacion,Nombre_Medico,Apellido_Medico,Especialidad,Fecha_Toma_Posesion,Cargo,Numero_Colegiado,Observaciones)
VALUES ('AJH','Antonio','Jaén Hernández','Pediatria','12-08-82','Adjunto','2113','Está próxima su retirada')

INSERT INTO Hospital.MEDICOS (Codigo_Identificacion,Nombre_Medico,Apellido_Medico,Especialidad,Fecha_Toma_Posesion,Cargo,Numero_Colegiado,Observaciones)
VALUES ('CEM','Carmen','Esterill Manrique','Psiquiatría','13-02-92','Jefe de sección','1231','')

INSERT INTO Hospital.MEDICOS (Codigo_Identificacion,Nombre_Medico,Apellido_Medico,Especialidad,Fecha_Toma_Posesion,Cargo,Numero_Colegiado,Observaciones)
VALUES ('RLQ','Rocío','López Quijada','Médico de familia','23-09-94','Titular','1331','')

--Insertamos datos en la tabla INGRESOS

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('10203-F','23-01-2009','AJH',5,121,'N','Epiléptico','','')

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('15413-S','13-03-2009','RLQ',2,5,'S','Alérgico a la penicilina','','')

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('11454-L','25-05-2009','RLQ',3,31,'N','','','')

INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('15413-S','29-01-2010','CEM',2,13,'N','','','')


INSERT INTO Hospital.INGRESOS (Numero_Historial,Fecha_Ingreso,Codigo_Identificacion,Numero_Planta,Numero_Cama,Alergico,Observaciones,Coste_Tratamiento,Diagnostico)
VALUES('14546-E','24-02-2010','AJH',1,5,'S','Alérgico al Paidoterín','','')


--PRUEBA INSERTAR FOTO
INSERT INTO Hospital.Pacientes (N_Seguridad_Social,Nombre,Apellidos,Domicilio,Poblacion,Provincia,Codigo_Postal,Telefono,NumeroHistorial,Sexo)
VALUES ('08/7333333', 'Mercedes', 'Romero Carvajal','C/Málaga, 13','Móstoles','Madrid','28935','914556745','14546-E','M')