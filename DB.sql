USE [FalabellaSeguros]
GO
/****** Object:  Table [dbo].[Aliados]    Script Date: 12/12/2019 17:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aliados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aliado] [nchar](10) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Aliados] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/12/2019 17:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](100) NULL,
	[Apellidos] [nchar](100) NULL,
	[Identificacion] [int] NULL,
	[Direccion] [text] NULL,
	[Email] [text] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraProducto]    Script Date: 12/12/2019 17:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[IdCliente] [int] NULL,
	[Fecha] [date] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_CompraProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 12/12/2019 17:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAliado] [int] NOT NULL,
	[Producto] [text] NULL,
	[valor] [int] NULL,
	[descripcion] [text] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aliados] ON 

INSERT [dbo].[Aliados] ([id], [Aliado], [estado]) VALUES (1, N'gg        ', 1)
SET IDENTITY_INSERT [dbo].[Aliados] OFF
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id], [Nombre], [Apellidos], [Identificacion], [Direccion], [Email], [estado]) VALUES (1, N'oscar                                                                                               ', N'asd                                                                                                 ', 1234, N'1', N'1', 0)
INSERT [dbo].[Clientes] ([id], [Nombre], [Apellidos], [Identificacion], [Direccion], [Email], [estado]) VALUES (2, N'a                                                                                                   ', N'b                                                                                                   ', 12, N'ds', N'12', 1)
INSERT [dbo].[Clientes] ([id], [Nombre], [Apellidos], [Identificacion], [Direccion], [Email], [estado]) VALUES (3, N'f                                                                                                   ', N'f                                                                                                   ', 12777, N'f', N'f', 1)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[CompraProducto] ON 

INSERT [dbo].[CompraProducto] ([Id], [IdProducto], [IdCliente], [Fecha], [estado]) VALUES (1, 1, 2, CAST(N'0001-01-01' AS Date), 1)
INSERT [dbo].[CompraProducto] ([Id], [IdProducto], [IdCliente], [Fecha], [estado]) VALUES (2, 1, 3, CAST(N'0001-01-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[CompraProducto] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id], [idAliado], [Producto], [valor], [descripcion], [estado]) VALUES (1, 1, N'p', 12666, N'dd', 1)
INSERT [dbo].[Productos] ([id], [idAliado], [Producto], [valor], [descripcion], [estado]) VALUES (2, 1, N'p', 234, N'23243', 1)
SET IDENTITY_INSERT [dbo].[Productos] OFF
