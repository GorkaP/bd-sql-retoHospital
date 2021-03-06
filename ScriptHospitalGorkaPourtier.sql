﻿USE [HOLAAA]
GO
/****** Object:  Schema [Hospital]    Script Date: 13/05/2020 12:35:09 ******/
CREATE SCHEMA [Hospital]
GO
/****** Object:  UserDefinedFunction [dbo].[fContarPacientes]    Script Date: 13/05/2020 12:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gorka Pourtier
-- Create date: 11-05-2020
-- Description:	Función que cuenta el número de pacientes que hay en el sistema.
-- =============================================
CREATE FUNCTION [dbo].[fContarPacientes]() 

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
GO
/****** Object:  UserDefinedFunction [dbo].[fNumPacientesPorSexo]    Script Date: 13/05/2020 12:35:09 ******/
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
CREATE FUNCTION [dbo].[fNumPacientesPorSexo]
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
/****** Object:  Table [Hospital].[INGRESOS]    Script Date: 13/05/2020 12:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Hospital].[INGRESOS](
	[Numero_Ingreso] [int] IDENTITY(1,1) NOT NULL,
	[Numero_Historial] [varchar](9) NULL,
	[Fecha_Ingreso] [date] NULL,
	[Codigo_Identificacion] [char](4) NULL,
	[Numero_Planta] [tinyint] NULL,
	[Numero_Cama] [smallint] NULL,
	[Alergico] [char](10) NULL,
	[Observaciones] [text] NULL,
	[Coste_Tratamiento] [money] NULL,
	[Diagnostico] [varchar](40) NULL,
 CONSTRAINT [PK_INGRESOS] PRIMARY KEY CLUSTERED 
(
	[Numero_Ingreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Hospital].[MEDICOS]    Script Date: 13/05/2020 12:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Hospital].[MEDICOS](
	[Codigo_Identificacion] [varchar](4) NOT NULL,
	[Nombre_Medico] [varchar](15) NULL,
	[Apellido_Medico] [varchar](30) NULL,
	[Especialidad] [varchar](25) NULL,
	[Fecha_Toma_Posesion] [date] NULL,
	[Cargo] [varchar](25) NULL,
	[Numero_Colegiado] [int] NULL,
	[Observaciones] [text] NULL,
 CONSTRAINT [PK_MEDICOS] PRIMARY KEY CLUSTERED 
(
	[Codigo_Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Hospital].[Pacientes]    Script Date: 13/05/2020 12:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Hospital].[Pacientes](
	[N_Seguridad_Social] [varchar](15) NOT NULL,
	[Nombre] [varchar](15) NULL,
	[Apellidos] [varchar](30) NULL,
	[Domicilio] [varchar](30) NULL,
	[Poblacion] [varchar](25) NULL,
	[Provincia] [varchar](15) NULL,
	[Codigo_Postal] [char](5) NULL,
	[Telefono] [char](12) NULL,
	[NumeroHistorial] [varchar](9) NOT NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[NumeroHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Hospital].[INGRESOS] ON 

INSERT [Hospital].[INGRESOS] ([Numero_Ingreso], [Numero_Historial], [Fecha_Ingreso], [Codigo_Identificacion], [Numero_Planta], [Numero_Cama], [Alergico], [Observaciones], [Coste_Tratamiento], [Diagnostico]) VALUES (1, N'10203-F', CAST(N'2009-01-23' AS Date), N'AJH ', 5, 121, N'N         ', N'Epiléptico', 0.0000, N'')
INSERT [Hospital].[INGRESOS] ([Numero_Ingreso], [Numero_Historial], [Fecha_Ingreso], [Codigo_Identificacion], [Numero_Planta], [Numero_Cama], [Alergico], [Observaciones], [Coste_Tratamiento], [Diagnostico]) VALUES (2, N'15413-S', CAST(N'2009-03-13' AS Date), N'RLQ ', 2, 5, N'S         ', N'Alérgico a la penicilina', 0.0000, N'')
INSERT [Hospital].[INGRESOS] ([Numero_Ingreso], [Numero_Historial], [Fecha_Ingreso], [Codigo_Identificacion], [Numero_Planta], [Numero_Cama], [Alergico], [Observaciones], [Coste_Tratamiento], [Diagnostico]) VALUES (3, N'11454-L', CAST(N'2009-05-25' AS Date), N'RLQ ', 3, 31, N'N         ', N'', 0.0000, N'')
INSERT [Hospital].[INGRESOS] ([Numero_Ingreso], [Numero_Historial], [Fecha_Ingreso], [Codigo_Identificacion], [Numero_Planta], [Numero_Cama], [Alergico], [Observaciones], [Coste_Tratamiento], [Diagnostico]) VALUES (4, N'15413-S', CAST(N'2010-01-29' AS Date), N'CEM ', 2, 13, N'N         ', N'', 0.0000, N'')
INSERT [Hospital].[INGRESOS] ([Numero_Ingreso], [Numero_Historial], [Fecha_Ingreso], [Codigo_Identificacion], [Numero_Planta], [Numero_Cama], [Alergico], [Observaciones], [Coste_Tratamiento], [Diagnostico]) VALUES (7, N'14546-E', CAST(N'2010-02-24' AS Date), N'AJH ', 1, 5, N'S         ', N'Alérgico al Paidoterín', 0.0000, N'')
SET IDENTITY_INSERT [Hospital].[INGRESOS] OFF
INSERT [Hospital].[MEDICOS] ([Codigo_Identificacion], [Nombre_Medico], [Apellido_Medico], [Especialidad], [Fecha_Toma_Posesion], [Cargo], [Numero_Colegiado], [Observaciones]) VALUES (N'AJH', N'Antonio', N'Jaén Hernández', N'Pediatría', CAST(N'1982-08-12' AS Date), N'Adjunto', 2113, N'Está próxima su retirada')
INSERT [Hospital].[MEDICOS] ([Codigo_Identificacion], [Nombre_Medico], [Apellido_Medico], [Especialidad], [Fecha_Toma_Posesion], [Cargo], [Numero_Colegiado], [Observaciones]) VALUES (N'CEM', N'Carmen', N'Esterill Manrique', N'Psiquiatría', CAST(N'1992-02-13' AS Date), N'Jefe de sección', 1231, N'')
INSERT [Hospital].[MEDICOS] ([Codigo_Identificacion], [Nombre_Medico], [Apellido_Medico], [Especialidad], [Fecha_Toma_Posesion], [Cargo], [Numero_Colegiado], [Observaciones]) VALUES (N'RLQ', N'Rocío', N'López Quijada', N'Médico de familia', CAST(N'1994-09-23' AS Date), N'Titular', 1331, N'')
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo]) VALUES (N'08/7888888', N'José Eduardo', N'Romerales Pinto', N'C/Azorín, 34 3o', N'Móstoles', N'Madrid', N'28935', N'913458745   ', N'10203-F  ', N'H')
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo]) VALUES (N'08/7234823', N'Ángel', N'Ruíz Picasso', N'C/Salmerón, 212', N'Madrid', N'Madrid', N'28028', N'915653433   ', N'11454-L  ', N'H')
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo]) VALUES (N'08/7333333', N'Mercedes', N'Romero Carvajal', N'C/Málaga, 13', N'Móstoles', N'Madrid', N'28935', N'914556745   ', N'14546-E  ', N'M')
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo]) VALUES (N'08/7555555', N'Martin', N'Fernández López', N'C/Sastres, 21', N'Madrid', N'Madrid', N'28028', N'913333333   ', N'15413-S  ', N'H')
ALTER TABLE [Hospital].[INGRESOS]  WITH CHECK ADD  CONSTRAINT [CK_Numero_Cama] CHECK  (([Numero_Cama]<=(200)))
GO
ALTER TABLE [Hospital].[INGRESOS] CHECK CONSTRAINT [CK_Numero_Cama]
GO
ALTER TABLE [Hospital].[INGRESOS]  WITH CHECK ADD  CONSTRAINT [CK_Numero_Planta] CHECK  (([Numero_Planta]<=(10)))
GO
ALTER TABLE [Hospital].[INGRESOS] CHECK CONSTRAINT [CK_Numero_Planta]
GO
ALTER TABLE [Hospital].[Pacientes]  WITH CHECK ADD  CONSTRAINT [CK_Sexo] CHECK  (([Sexo]='H' OR [Sexo]='M' OR [Sexo]='O'))
GO
ALTER TABLE [Hospital].[Pacientes] CHECK CONSTRAINT [CK_Sexo]
GO
/****** Object:  StoredProcedure [dbo].[pr_IntroducirMedico]    Script Date: 13/05/2020 12:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gorka Pourtier
-- Create date: 11-05-2020
-- Description:	Procedimiento almacenado de inserción de datos
-- =============================================
CREATE PROCEDURE [dbo].[pr_IntroducirMedico]

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
	
	IF @p_CodigoIdentif <999 --Si en código es menor que 999
		
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
GO
/****** Object:  StoredProcedure [dbo].[usp_MostrarPacientesIngresados]    Script Date: 13/05/2020 12:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gorka Pourtier
-- Create date: 11-05-2020
-- Description:	Procedimiento almacenado que muestra pacientes entre dos fechas
-- =============================================
CREATE PROCEDURE [dbo].[usp_MostrarPacientesIngresados]

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
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'H o M' , @level0type=N'SCHEMA',@level0name=N'Hospital', @level1type=N'TABLE',@level1name=N'Pacientes', @level2type=N'CONSTRAINT',@level2name=N'CK_Sexo'
GO
