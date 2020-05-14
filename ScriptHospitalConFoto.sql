USE [HOLAAA]
GO
/****** Object:  Schema [Hospital]    Script Date: 14/05/2020 17:34:13 ******/
CREATE SCHEMA [Hospital]
GO
/****** Object:  UserDefinedFunction [dbo].[fContarPacientes]    Script Date: 14/05/2020 17:34:13 ******/
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
/****** Object:  UserDefinedFunction [dbo].[fNumPacientesPorSexo]    Script Date: 14/05/2020 17:34:13 ******/
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
/****** Object:  Table [Hospital].[INGRESOS]    Script Date: 14/05/2020 17:34:13 ******/
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
/****** Object:  Table [Hospital].[MEDICOS]    Script Date: 14/05/2020 17:34:14 ******/
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
/****** Object:  Table [Hospital].[Pacientes]    Script Date: 14/05/2020 17:34:14 ******/
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
	[Foto] [varbinary](max) NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[NumeroHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo], [Foto]) VALUES (N'08/7888888', N'José Eduardo', N'Romerales Pinto', N'C/Azorín, 34 3o', N'Móstoles', N'Madrid', N'28935', N'913458745   ', N'10203-F  ', N'H', NULL)
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo], [Foto]) VALUES (N'08/7234823', N'Ángel', N'Ruíz Picasso', N'C/Salmerón, 212', N'Madrid', N'Madrid', N'28028', N'915653433   ', N'11454-L  ', N'H', NULL)
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo], [Foto]) VALUES (N'08/1234567', N'Luz', N'Fernández Espinosa', N'C/Princesa, 47', N'Madrid', N'Madrid', N'28080', N'915652058   ', N'12345-L', N'M', 0xFFD8FFE000104A46494600010100000100010000FFDB00840009060713121215121212151515151515151515121515151518151515161715171715181D2820181A251B151521312125292B2E2E2E171F3338332D37282D2E2B010A0A0A0E0D0E1B10101B2B251F252D2D2F2D2B2D2D2D2D2D2D2B2D2D2D2B2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2DFFC000110800B7011303012200021101031101FFC4001B00000105010100000000000000000000000300010204050607FFC4003C10000103020403060307020505000000000100021103210405123141516106132271819132A1F0425262B1C1D1E1142307152472A2334382D2F1FFC4001A010002030101000000000000000000000000010203040506FFC4002711000202020202010402030000000000000001021103122131044113152251613271051423FFDA000C03010002110311003F00EFD8DE451434F4280DDD19AE2ADA2AB0CD68E442345B74265546D4D3623EB979A4343725329306D052E250322C00147691E4804DD4D8800F30A6DAC8129DAE4A80B8DAA14A554690A60A432D267208AA54C549401166E8C834F746400E13A60A490C884E982740001F114740FB48E86025194EE28608E88008A2E4C6A0E6A2EA9C9003A921073B927872622388420A6F611B994CD174005A4EB246A844653052D3C92195DCF2760A25AEE4AD8EA14A131147B9724AEC24803946EE88141BBA989DF82B0AC2B7A844942695394864C153050B8A982818E4DD1585009BA2D3280084A4145384809828AC2AB97422D2290CB2E02109C9084C4A4306EAC470F653A155DD40EAA0D375A14448BA6C10CC775522E091A29BB80A2333F38CEE861699A959E1ADF724F2006E5728CFF15B045E1B152098D45A207537985C77F886DAB8ACC1F4859B4A1A013F8412E8F541A7D81D4C07BC87472E294A4970590C7292B47B361B12DA803E990E6BA0820C856487735E73FE1AE1F1186ACFC3BFC4C2D0E064C34F41D7F45E922E9D906A9D30628F52A6280450124AC080A63929694EB89EDCE7D8B638D1C23402002EA8E126FC1A0DBD516095BA476A9D78FE07B4F985021D55CE709B878047F0BD5F2DC58AD49954583DA0C729E0927637171EC9E276406EEA97687373461AC617B8DE26001D4AE60F6D2A31C3BDA21AD9BC1253D92E01424F93BD6ECA602A59663995E987D3748F9FA85725021744CD528F64E80192493A00C0CC30F0750D8EFE6A9BAA86EEB72AB6442F32ED66695299349A25E5FA00E249E57EA1394DA428C2D9D38CC8130D009E574E3312766FA8DBDF65959760851A4D0F3A89E1C6A3F893F805E06D024A7FEA8D424300207DAFB20F268E3FEEF6547C8D7B2E5893E12358E66009893C81927C87142676868CE9712D276D4081EF08387C20DF73CCAB830E0D8807A11328F9E459FEB451743C1820C83C51A9159F85A429D87C0787DD3D3A2BF4C2D109EC8CB3868C2129DA544A76A9900B4CC9BA2060080D3708D262EA2C68984C5441489400CDDD68D0F8566B0DD5FA0F1172931A0E928F7839A1D4C4B475F251A24727DB2ECF035062E9887469A91C47D97798DBDB92C0C3D179D4D354EC082382E8BB4152AD50F8710D16D236F5E6B8EA701F05C43B62DFD9472637D9ABC6C8A9C4EF7B2F86019A81926D27905D1010B17B3E40A4D1111B85AE5E14F5AE0CD295C9B3CF3B479C633125CCC3D4FE9D8D7901CDBD47E93124FD91D07BAC8C87B6B8CC26259431EFEF695421A2A1035349300C81713B82AC770E9AAD0622A3B482784F141ED1F677FAA653603A5C1DF10B9F4542CAF6A7D1AA581696BB3D6C397019EE2C9C55401A4868171D005DA51D429B438C90D009E640B95C3E761ECC53F93A08F288FD15B35F694F8FFCC0576F7B4890082381DD77F96B18DA4C0DD83447B2E67B39A6A38B4DF890BAA6B40E0A38D7163CF24DD1C26739AFFA92209697100DCFC3650CDF03DED3F001ABAAB39DB0B710445BE206381DFE68B4EA88BAAA4EA4CD318AD114F21C57F48E635EF9D440B0B6F11F35E85A57139664AEAD8C6D67C77549B66F37F3F45DC2B71DEBC9932D6FC0C927494CAC64924E80292E33B5D948FEA28D78B12438F27069D27EBEEAED156CC7082AD32C3C6E0F270B83EE89AB541174CE3338ABA4C0F8BBB31F85A605BA927FE289973435A00D8054F3796BAA9758E96B6FD4307E6879762AC2794C790958E6E99BF0AE0E8A999445878B2626AD5D237D0CF0803ABB728382C66AB53D50237DA3841E29D93D4D6C55621D1DE0637A005C79DCD87B2D8CA7194EA080F6BE3882091E70B9AC560A9D786D56CC5FE223DE0DC742B4F038765080D21B3B440F7EAA509572579716CA8E8AAE184122D65502B74AB6AA64F185542DB1768E74953A0944788293DD7843A2FE22E88F3C5021C26726949DB20066EEAF53D950A7BABA0C35263406AD493D10AA3A013C828D37299D9302BE1E90BEA33AEF7DB6D82F3DCD3035FF00CD594C10191A996DDBF6A7A8FD97A2E369975321A61D0608E062C578FD4CFB122AEB75426A34160718F0DFC4223A2D7E361964BD5997C8F2238AB64F93D69CED0E00728F6577038E0E3A4EEBC59FDA1C49326B389F41F9040A399D56D4150547C87077C479FE4AFF00A6CDF6D19DFF009387A4CF40CE703DCE21C4BAD509737F5099B42AD4AD8714CE96B6A07D53F81B78F53016553C6D5AF50D4792E93E00780E4177197E1FBAA527E23F50B86B1FFD5FE8F412CAD615FB42CEFB454E8B0E9F1B86C073F35C066B98D5AB535D4B48D9BB01C975B9BF674D521CCA9A48330448256663B2E2D80F1E51B15D0F8E128D2ECE74324B1CF692E0CBC0636AD126AB380B4F1E85771917685B59ADD70D711E9E857218AA7E077283F92AD807C31A7A292F1E2A348864F265395B3D2330CB595882E91A6608EAB91C5E01D4EBF7609337693F77F85AF9066A48D2E3210B31C7035601F1BCE860FBADE2E2B34F05BA669C59DA5C1AB93540CF08B8E27AADA056261581A001C15FA3520F449A5E856DF65C4924944624924900534E52494889CC76D729EF293AA3012E6B7C400925B20CC73113E4B95C01060F96DCF8AF512172BDA2C98326B5210377B40FF901F9FBF359F363BFB91AFC6CA93D59898CC9857734BDD2D17D1C09E13E4B5A9E0DAC6ED60152C1E2E4792BD5AA9200E66FF9AA14B8363899F5F046A11A9EE0D0492D63B48772D440931CA61683DCD149C4B4B994D97006A3A5A3F65954714E73CEA63C536920003C6F22458D801D4EEB529D47BC41229B3EE3394ECE771FE54E29572464DB7C1A5D9AAB68BC1D813260DC0F9ABB9961C9639AC305CD201E44854702F1A869B6C3D96F3981C15F85FDB461F257DD6721D87C9ABE1689A75EA6B71739C2E4C4F53EFEABA584FA20C2986AB8CE04A671B2316F443ABB6C9881D137566B3A19E6AA61FE246C59B047B05D03166A7A6F5178F07A21534C65B6AF1EEDA60BBAC5D41C1C758FFCB7F9CAF5FA4F5E71FE249D755A5AD3E00439C368DEFE5FAAD9E0E4D32D3F7C18FCEC4F2626D7AE4E2D3A649AD24C0124AEE36972CE0A8B6E91E8FD81C30753EF5D7D3603911C57535312496F87C33BFE56E4B90EC503469B98F7821C64B4705DD358D73472B6DD179ACB3C72C9270EACF518E19638A2B22E6A89C2CEED0529A73F7485A4E3785573464D270E8A307524392B4CE52A365A40E46CB35A34320F017F357EAD473492D378E2B2B1F58E924EE56F8A76629551B5D9B74EA33B01F35AB83C0C3CD576F10A9F66F0DA2889DDF7FD96F54B3164CB2B9335628D4513A455E03659F86330B4E98B05432D2D33609D3376512F50244D2418299000C2413252A444928B82629200E2F37C9CE1EA1A94C7F69E6E3EE1FF00D7F209F0D56DFA15D857A41C0B4EC7EBD0AE171FFD9AA6938C3B761301AF69D8F4336236F2958F2E3D5DAE8E860CFB2D645AAB5413B475E0936BB78958C73476DA60F23A47EA8D86151E7E189E36FD151B51AA8E85B8A6D361A8E30D1C4F5B057F2ECD43858EA1F359186CBFC2E6BDEE7078899D8F02395D55CAA91A4E21C76304ED1CA40B41E6AD59249A32648291D997074108C29AA342A0911B20E6F59C34C123C96C52B46192A669BA97541C453B6E78AC0613CCFBFCA50F307BB43B4B8C81622E6DB8F7F752B11AD85700EB9847C59102E1797D5C4E29CF701DE902088100FAAB19266D50576B5F2DBC16BA763C90E5C8923D1B578546638219759A11C3ACA602615C9F6AF2979156AB61C34C969E8174DAA0AAF9855F01044C82855B26FD0EDA4EBDAA3C4C22E1F1269BB505D654C15120B4B1A0CDADD574587ECDE1A04D16CC725D4FA8E2C89C5C59CBFA666C4D4E3257E8C0ECEE6F4EA16B09D2EE478F92EDB0798061D2EDB81542976730AD707B68B5AE0641120829F33A7A7C4363BAE3E78422F7C37FD33B58324A6B4CD57F945D6E7D483DED24983C07444A99C52A8C70137077042E4F1306E374F874FC5BCADB7D2179718E18AAED92C415818EAD6216E621CB93CE2A7C41752E959CAAB747A5E4C753299FC216A577588589D9CFFA148FE06AD7AAB9F2ECDE952A32F139C1A44318DD4EE33B00B6F22CC5D5010F6804711B2E5B10D0EAD6E02EBA1ECFF1591CDFC95E8D9F1C7E1BAE4E899B2766DB421B4D82233656998749249005294C4A1EB4CE7295110E2A00A1AAD3EC826AC211A85C5005A0E58FDA0C9DB8A0C0496963A439B130443849E06DEC16A3BC2D245C80A9B5ED23C525C66D7F2E0A5ADAE436AE86C1E4D4A98020BA38BCCFC840F92B6700CDC35A3D0427C2B086DF746254358AE1127393ED99D5F0044968B7299F6E2B9FCE70FAE1EC769A8DB70F137EE907E5FCAEC83BAA055C1D371973412AA9E2BE8BA19ABF91C965198BF481A5CF748018D127C8EA888F35D2D7A21E06B3EA26C558A786A74E5CC635A4C4900036E654D8D1C2EA70828954E7B333C656D1B931E7F253FF0029A6459CEF3D4B42A10D12458203712EE2CB1E46FECAC4AC8194EC23438334BAF224BA1BEEB1739C95A49D2D0DA8D1AC1049F84F35DB1A20DC8BAA58ACBC3897B7E2D25B0970053CBAAEB6537736ABEE1659D96D27B5835B7499302C6DC365A4D521032C5531D44C7A2D16840C50B200E45B978A951B23620F9C19BAEAA8320FD7BACEC0B3FBA4F45ACCDD4A48136C23A9076DEEA0EC107083708E0DBA29B140660633B3ED0D739A4CC481C160520BBF70910B89C650D151CDEA6169F1A9268A3C8B74D94314B9CCCF0FA98F7FDD227D4AE9318B1B3378650709F15470B746ABB33AC6CAF0ABC891D87655D386A7FED0B5710EF0ACDECD08C3531F842B799570CA4E3D16266CAB7462E00EA738F331E8BB2CBE86962E63B39869009FA9DD76149B6F259312B6E46ACF2A4A25AA22C0A221D0D9115C6612492480317BC517560156145DF78FB0517D13F7BE4A644955AE8D84A924002D7BF3FE1070B8496B89324D87088FE517013F0911A447EDF252A542F668218601B01ECA6AB639E74C73DCF4492B1965AE07633E4A50A951C38044188DFAFD4057884980121F360D8EA6E88D69E4AAE26B16BC002C773308B431AD71891237129B4E807C461756E6DCB9A1E1691638C4E9EA6797F28F88A5AA08DC28D0A441971928BE05EC9D62225DB2852C40B78601D8F04B1748B9A4055F53DE0374C444CCC59349340CD1507326FB79270A8B880F76B31F74FD7A28A56365CA805A769F442A8C0DE3169BFEE82DAF34E5DD44F4E6B2F30CC3BC203761BF9A8CE5A2B64A10D9D22EBF1E36689EA7651D65FB954A98562954859D669366A7862970361B0C5A49999579893049011C61B915A632BECCB28A5D1006110152751B42614C84C8920B8FED662453AAD1A49D4D26DD0FF2BAF0AA6232DA751C1EFA6D7380805D7807A6CACC735195B21922E51A4706FA86A598C7B8F26B4B8FB0541DD9BC5577B7FB0F6B2777C36D3730E20AF506B00B000740207B05619B27972EEABD0618FC6EFD9955706581AD6B4C35A058725879F35CED2C822F79B2EC484C42AA5CAA2C8BD5D999936134B4745A8C3E28E8A2D29DAD00CCA8C63AAA1CE7B3B2CE1F8A32AD4EA809FF00AA1C8A2856584903FAA1C8A48A0B281087528CA296A62A420184744B0F9851AE24C4C449F9590F17221C385D4EBB45468734DF7B711C4152FD883E09C4B6FCE14EAD30E1050DB886C5B87055DF98013636F2476F8197D8D004042C455208DC036B21D0C507047710425D3020FA61E34BAFD47E6AB7F9701604857E9D202E1488437E80A54DD559E18D638126FEAAD61EA18975BF444610AB46B05B3041F71C11C016D409842AE25B0386E38DB820B7C2E00196BB86E46C07D79A12B0B2D77A028B9ED758C1E85355658C6F063CD739897776D2E6B9DDE82603A6F73008D80200BA231B0B3571D880D696FA00B268B3D0267552F3A9D6E81102C19B26CE9746FC38F556FB0C0A062ABE91287571205B726C00DC93B05B6DCA69B9A35B64D89B9DFD12C707364B24D417256C869D40C2EABF13CC800C86B7EC89E7C56D5272152C380204A3B442DC952A3049DBB24914924111A141C51156AB730980809BA982900920020BA884C0A94A00839A904472190801D24828CA00749249000E124C0A9028020E6CAAF46968303E1267C8FECAE428B989D814730C16A12C3A5C058F03D0F440A183740D446D76EE3D255A75573641698E0E17F43C959A42C8E80A742935931EBFB2B7419693C5406144CCFA26C5E614A90FEE546B7CC807D912681265D0AB620CB834D82C2C476C288B31AF7F9081EE509BDA3754B1A2E03D27DE556B2417B2DF8723F4740D203E01E0A18FC4369B4D533E0049804F8772202CEC3E62D6FF00DA77A96A257CE1A416BA9BA0822DA4FCA51F342FB0F827F82EE27130CEF1B7B488FB5C40F543C06369D53A80878F89A6CE1F5CD73380ED0318E340375B40B37E17B0722D3BB79113F24A96654AAB9CE6D3834CE96BC38EA9224C11C369DD58F54AECAD464DD51D8D6AC1A24980B9FC5E23BC74C401B73281DF3DF1ADD31E927C871456B561C99B6E23D1B7160D79976335AA35DFA42380A8E3985E5B4C6EF706F90E27DA552A25F668645839FEFBF73F00E43EF79F25D05332AB31A00006C040F20AC3059746115154736737295B0A13A8B4A9052203849324900E4D9018A78874350A914C02274C9D0040A9B4A814ED2800AA109C148A0069502A4E512801029D4524015C1530E43054820020724E7F24394FF5FC750801AB55B29EAD23D10EA33E48CD20EDFCA607319DE32BD6A4F1877687B1D768F89CC0381E13D171387A65C65FAB571D73ABD66EBD3F119602ED4DB1E7FB159DDA7C001872F3775383A8EF048041E9FB2AF341495A2FC197574CE73074805AF442C6C2BE42D3C3555CF6748BA10AB3948B902B131CCF00A2D89232ABE0854AAD7E9BB261D17BF095A586C306800080382961704E6893E66F7EB2ADB07BA76DAA170B915262384305397429254458F51F0151CAB14D76248E2DA6481E6E00FD7555338CC431A4CEC16AF65F23EEC77F52F55ED1E4C69BE91D7692ADC2B695FE0AB3B51857E4E86935150D4DA56D39E4C2902A013928027299B32534FD7E8A4024007146C8548A255B9843021302C353A666C9CA008B9327299003B4A938A1A9344A0062E5149C1465001125094900560E4B524920092982924801C251C524900566D57EA2D7189D8801270D6D731F7044109D2537D0BD9CB63B25341DA991DDDA04991EFB84361829925CFCF14A5C1D3F1E4E50E4B8C7CA9B86C7EAC7FF008924A82E2D53A85D602399E8A3508D80E84F149252F442B922154C7623924924FA1A3953FEAB154E84C3038179E7C63E4BD6A91B42492DF8A294151CFCF26E5C92214084925614920F4A5249004D8A4E74249200AD45DB9EAA660A49200701482749002492490045C9C3E12490033C713B9E0804A74930240A4924803FFFD9)
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo], [Foto]) VALUES (N'08/7333333', N'Mercedes', N'Romero Carvajal', N'C/Málaga, 13', N'Móstoles', N'Madrid', N'28935', N'914556745   ', N'14546-E  ', N'M', NULL)
INSERT [Hospital].[Pacientes] ([N_Seguridad_Social], [Nombre], [Apellidos], [Domicilio], [Poblacion], [Provincia], [Codigo_Postal], [Telefono], [NumeroHistorial], [Sexo], [Foto]) VALUES (N'08/7555555', N'Martin', N'Fernández López', N'C/Sastres, 21', N'Madrid', N'Madrid', N'28028', N'913333333   ', N'15413-S  ', N'H', NULL)
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
/****** Object:  StoredProcedure [dbo].[pr_IntroducirMedico]    Script Date: 14/05/2020 17:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	
	IF @p_CodigoIdentif <999
		
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
/****** Object:  StoredProcedure [dbo].[usp_MostrarPacientesIngresados]    Script Date: 14/05/2020 17:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
