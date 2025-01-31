USE [master]
GO
/****** Object:  Database [Prueba]    Script Date: 1/4/2020 19:03:26 ******/
CREATE DATABASE [Prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FalabellaSeguros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FalabellaSeguros.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FalabellaSeguros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FalabellaSeguros_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Prueba] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [Prueba] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prueba] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prueba', N'ON'
GO
ALTER DATABASE [Prueba] SET QUERY_STORE = OFF
GO
USE [Prueba]
GO
/****** Object:  Table [dbo].[Aliados]    Script Date: 1/4/2020 19:03:26 ******/
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
/****** Object:  Table [dbo].[Ciudad]    Script Date: 1/4/2020 19:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 1/4/2020 19:03:26 ******/
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
/****** Object:  Table [dbo].[CompraProducto]    Script Date: 1/4/2020 19:03:26 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 1/4/2020 19:03:26 ******/
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
/****** Object:  Table [dbo].[Vendedor]    Script Date: 1/4/2020 19:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NULL,
	[Apellido] [varchar](max) NULL,
	[Identificacion] [bigint] NULL,
	[IdCiuada] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aliados] ON 

INSERT [dbo].[Aliados] ([id], [Aliado], [estado]) VALUES (1, N'gg        ', 1)
SET IDENTITY_INSERT [dbo].[Aliados] OFF
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([Id], [Nombre], [Estado]) VALUES (1, N'ibague', 1)
INSERT [dbo].[Ciudad] ([Id], [Nombre], [Estado]) VALUES (2, N'Bogota', 1)
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
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
SET IDENTITY_INSERT [dbo].[Vendedor] ON 

INSERT [dbo].[Vendedor] ([Id], [Nombre], [Apellido], [Identificacion], [IdCiuada], [Estado]) VALUES (1, N'oscard', N'ballesteros', 1110473475, 1, 0)
SET IDENTITY_INSERT [dbo].[Vendedor] OFF
USE [master]
GO
ALTER DATABASE [Prueba] SET  READ_WRITE 
GO
