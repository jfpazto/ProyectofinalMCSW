USE [Banco]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 08/05/2021 19:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bancos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 08/05/2021 19:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientosTransacciones]    Script Date: 08/05/2021 19:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientosTransacciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[estado] [varchar](50) NULL,
	[mensaje] [varchar](50) NULL,
	[monto] [varchar](50) NULL,
	[cuenta] [varchar](50) NULL,
 CONSTRAINT [PK_MovimientosTransacciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 08/05/2021 19:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[saldo] [varchar](50) NOT NULL,
	[cuenta] [varchar](30) NOT NULL,
	[clave] [varchar](18) NULL,
	[rol] [varchar](20) NULL,
	[cedula] [varchar](10) NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bancos] ON 

INSERT [dbo].[Bancos] ([id], [nombre]) VALUES (1, N'Bancolombia')
INSERT [dbo].[Bancos] ([id], [nombre]) VALUES (2, N'Colpatria')
INSERT [dbo].[Bancos] ([id], [nombre]) VALUES (3, N'Bogota')
SET IDENTITY_INSERT [dbo].[Bancos] OFF
GO
SET IDENTITY_INSERT [dbo].[Estado] ON 

INSERT [dbo].[Estado] ([id], [nombre]) VALUES (1, N'En proceso')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (2, N'Finalizada')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (3, N'Cancelada')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (4, N'Devuelta')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (6, N'Efectivamente se mamo')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (1006, N'Final')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (2006, N'juanito')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (2007, N'Juanito')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (2008, N'Juanito')
INSERT [dbo].[Estado] ([id], [nombre]) VALUES (3006, N'Samuel')
SET IDENTITY_INSERT [dbo].[Estado] OFF
GO
SET IDENTITY_INSERT [dbo].[MovimientosTransacciones] ON 

INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (1, CAST(N'2004-05-23T14:25:10.000' AS DateTime), N'Finalizada', N'Transaccion', N'15000', N'5')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (2, CAST(N'2004-05-23T14:25:10.000' AS DateTime), N'Finalizada', N'Transaccion', N'10000', N'3')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (5, CAST(N'2004-05-23T14:25:10.000' AS DateTime), N'Finalizada', N'Transaccion', N'70000', N'3')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (6, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'1000', N'0')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (7, CAST(N'2004-05-23T14:25:10.000' AS DateTime), N'Finalizada', N'Transaccion', N'15000', N'5')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (8, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'1500', N'12345')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (9, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'10000', N'1075686806')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (10, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'20000', N'1075686806')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (11, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'30000', N'789456')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (12, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'10000', N'789456')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (13, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'5000', N'789456')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (14, CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'60000', N'1075686806')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (1007, CAST(N'2021-04-24T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'2500', N'1075686806')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (2007, CAST(N'2021-05-08T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'1500', N'1075686806')
INSERT [dbo].[MovimientosTransacciones] ([id], [fecha], [estado], [mensaje], [monto], [cuenta]) VALUES (2008, CAST(N'2021-05-08T00:00:00.000' AS DateTime), N'Finalizada', N'Transaccion', N'5000', N'2021')
SET IDENTITY_INSERT [dbo].[MovimientosTransacciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (3, N'Jonathan', N'Paez', N'14500', N'12345', N'123456', N'Auditor', N'1075686806', CAST(N'2004-05-23T14:25:10.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (5, N'Juanito', N'perez', N'85500', N'322852', N'1234556', N'123456', N'3228526541', CAST(N'2004-05-23T14:25:10.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (1006, N'Juanito', N'perez', N'20000', N'313019', N'1234556', N'Administrador', N'3228526540', CAST(N'2004-05-23T14:25:10.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (2005, N'Samuel', N'perez', N'40000', N'313019', N'1234556', N'123456', N'3228526542', CAST(N'2004-05-23T14:25:10.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (2006, N'Carlos', N'Rueda', N'1000', N'1075686806', N'123456', N'Cliente', N'1075654293', CAST(N'2021-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (2007, N'Pedro', N'Perez', N'0', N'11338008', N'123456', N'Administrador', N'11338008', CAST(N'2021-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (2008, N'Raul', N'Polo', N'67500', N'789456', N'ewwert', N'Cliente', N'789456', CAST(N'2021-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (3005, N'Facho', N'Ruiz', N'56500', N'1998', N'', N'Cliente', N'1998', CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Usuarios] ([id], [nombre], [apellido], [saldo], [cuenta], [clave], [rol], [cedula], [fecha]) VALUES (3006, N'Ramiro', N'Lucas', N'5000', N'2021', N'123456', N'Cliente', N'2021', CAST(N'2021-05-08T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
