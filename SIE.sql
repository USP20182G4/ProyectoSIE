USE [master]
GO
/****** Object:  Database [SIE]    Script Date: 30/10/2018 18:54:42 ******/
CREATE DATABASE [SIE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SIE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SIE.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SIE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SIE_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SIE] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SIE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SIE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SIE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SIE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SIE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SIE] SET ARITHABORT OFF 
GO
ALTER DATABASE [SIE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SIE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SIE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SIE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SIE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SIE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SIE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SIE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SIE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SIE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SIE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SIE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SIE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SIE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SIE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SIE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SIE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SIE] SET RECOVERY FULL 
GO
ALTER DATABASE [SIE] SET  MULTI_USER 
GO
ALTER DATABASE [SIE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SIE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SIE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SIE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SIE] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SIE', N'ON'
GO
USE [SIE]
GO
/****** Object:  Table [dbo].[AlmacenMedicina]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlmacenMedicina](
	[IdMedicina] [int] NOT NULL,
 CONSTRAINT [PK_AlmacenMedicina] PRIMARY KEY CLUSTERED 
(
	[IdMedicina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Calendario]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendario](
	[IdCita] [int] NOT NULL,
 CONSTRAINT [PK_Calendario] PRIMARY KEY CLUSTERED 
(
	[IdCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CitaMedica]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CitaMedica](
	[IdCita] [int] NOT NULL,
	[FechaCita] [datetime] NULL,
	[IdPaciente] [int] NULL,
	[IdMedico] [int] NULL,
	[IdConsultorio] [int] NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_CitaMedica] PRIMARY KEY CLUSTERED 
(
	[IdCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConsultaMedica]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConsultaMedica](
	[IdConsultaMedica] [int] NOT NULL,
	[IdCita] [int] NULL,
	[IdEnfermedad] [int] NULL,
	[Diagnostico] [varchar](100) NULL,
	[IdMedicina] [int] NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_ConsultaMedica] PRIMARY KEY CLUSTERED 
(
	[IdConsultaMedica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consultorio]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consultorio](
	[IdConsultorio] [int] NOT NULL,
	[NroConsultorio] [int] NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Consultorio] PRIMARY KEY CLUSTERED 
(
	[IdConsultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enfermedad]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enfermedad](
	[IdEnfermedad] [int] NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Enfermedad] PRIMARY KEY CLUSTERED 
(
	[IdEnfermedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidad](
	[IdEspecialidad] [int] NOT NULL,
	[NombreEspecialidad] [varchar](50) NULL,
	[Descripcion] [varchar](200) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistorialClinico]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistorialClinico](
	[IdHistorialClinico] [int] NOT NULL,
	[NroHistoriaClinico] [money] NULL,
	[IdPaciente] [int] NULL,
	[IdConsultaMedica] [int] NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_HistorialClinico] PRIMARY KEY CLUSTERED 
(
	[IdHistorialClinico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicina]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicina](
	[IdMedicina] [int] NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Marca] [varchar](20) NULL,
	[AgentePrincipal] [varchar](20) NULL,
	[AgenteSecundario] [varchar](20) NULL,
	[FechaCaducidad] [date] NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Medicina] PRIMARY KEY CLUSTERED 
(
	[IdMedicina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medico](
	[IdMedico] [int] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[ApPaterno] [varchar](20) NULL,
	[ApMaterno] [varchar](20) NULL,
	[NroColegiado] [char](6) NULL,
	[Cargo] [varchar](20) NULL,
	[IdEspecialidad] [int] NULL,
	[Telefono] [char](9) NULL,
	[Sexo] [char](1) NULL,
	[Direccion] [varchar](40) NULL,
	[IdUbigeo] [int] NULL,
	[IdTDocumento] [char](1) NULL,
	[NroDocumento] [char](8) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[IdMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente](
	[IdPaciente] [int] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[ApPaterno] [varchar](20) NULL,
	[ApMaterno] [varchar](20) NULL,
	[FechaNacimento] [date] NULL,
	[Edad] [int] NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [char](10) NULL,
	[Direccion] [varchar](40) NULL,
	[IdTDocumento] [char](1) NULL,
	[NroDocumento] [char](15) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecetaMedico]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaMedico](
	[IdConsultaMedica] [int] NOT NULL,
 CONSTRAINT [PK_RecetaMedico] PRIMARY KEY CLUSTERED 
(
	[IdConsultaMedica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[IdTDocumento] [char](1) NOT NULL,
	[NombreTD] [varchar](40) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[IdTDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ubigeo]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubigeo](
	[IdUbigeo] [int] NOT NULL,
	[Nom_Departamento] [varchar](20) NULL,
	[Nom_Provincia] [varchar](20) NULL,
	[Nom_Distrito] [varchar](20) NULL,
 CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED 
(
	[IdUbigeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] NOT NULL,
	[UserID] [varchar](10) NULL,
	[UserPassword] [varchar](10) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_CitaMedica]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CitaMedica] ON [dbo].[CitaMedica]
(
	[IdCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CitaMedica_1]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CitaMedica_1] ON [dbo].[CitaMedica]
(
	[FechaCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConsultaMedica]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ConsultaMedica] ON [dbo].[ConsultaMedica]
(
	[IdConsultaMedica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Consultorio]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Consultorio] ON [dbo].[Consultorio]
(
	[IdConsultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Consultorio_1]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Consultorio_1] ON [dbo].[Consultorio]
(
	[NroConsultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Enfermedad]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Enfermedad] ON [dbo].[Enfermedad]
(
	[IdEnfermedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Especialidad]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Especialidad] ON [dbo].[Especialidad]
(
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Especialidad_1]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Especialidad_1] ON [dbo].[Especialidad]
(
	[NombreEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Medicina]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Medicina] ON [dbo].[Medicina]
(
	[IdMedicina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Medico]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Medico] ON [dbo].[Medico]
(
	[NroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Paciente]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Paciente] ON [dbo].[Paciente]
(
	[NroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TipoDocumento]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TipoDocumento] ON [dbo].[TipoDocumento]
(
	[IdTDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ubigeo]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Ubigeo] ON [dbo].[Ubigeo]
(
	[IdUbigeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuario]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Usuario] ON [dbo].[Usuario]
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Usuario_1]    Script Date: 30/10/2018 18:54:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Usuario_1] ON [dbo].[Usuario]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Consultorio] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Consultorio] ([IdConsultorio])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Consultorio]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Consultorio1] FOREIGN KEY([IdConsultorio])
REFERENCES [dbo].[Consultorio] ([IdConsultorio])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Consultorio1]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Medico] FOREIGN KEY([IdMedico])
REFERENCES [dbo].[Medico] ([IdMedico])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Medico]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Paciente]
GO
ALTER TABLE [dbo].[ConsultaMedica]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaMedica_AlmacenMedicina] FOREIGN KEY([IdMedicina])
REFERENCES [dbo].[AlmacenMedicina] ([IdMedicina])
GO
ALTER TABLE [dbo].[ConsultaMedica] CHECK CONSTRAINT [FK_ConsultaMedica_AlmacenMedicina]
GO
ALTER TABLE [dbo].[ConsultaMedica]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaMedica_Calendario] FOREIGN KEY([IdCita])
REFERENCES [dbo].[Calendario] ([IdCita])
GO
ALTER TABLE [dbo].[ConsultaMedica] CHECK CONSTRAINT [FK_ConsultaMedica_Calendario]
GO
ALTER TABLE [dbo].[ConsultaMedica]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaMedica_Enfermedad] FOREIGN KEY([IdEnfermedad])
REFERENCES [dbo].[Enfermedad] ([IdEnfermedad])
GO
ALTER TABLE [dbo].[ConsultaMedica] CHECK CONSTRAINT [FK_ConsultaMedica_Enfermedad]
GO
ALTER TABLE [dbo].[ConsultaMedica]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaMedica_Medicina] FOREIGN KEY([IdMedicina])
REFERENCES [dbo].[Medicina] ([IdMedicina])
GO
ALTER TABLE [dbo].[ConsultaMedica] CHECK CONSTRAINT [FK_ConsultaMedica_Medicina]
GO
ALTER TABLE [dbo].[ConsultaMedica]  WITH CHECK ADD  CONSTRAINT [FK_ConsultaMedica_RecetaMedico] FOREIGN KEY([IdConsultaMedica])
REFERENCES [dbo].[RecetaMedico] ([IdConsultaMedica])
GO
ALTER TABLE [dbo].[ConsultaMedica] CHECK CONSTRAINT [FK_ConsultaMedica_RecetaMedico]
GO
ALTER TABLE [dbo].[HistorialClinico]  WITH CHECK ADD  CONSTRAINT [FK_HistorialClinico_ConsultaMedica] FOREIGN KEY([IdConsultaMedica])
REFERENCES [dbo].[ConsultaMedica] ([IdConsultaMedica])
GO
ALTER TABLE [dbo].[HistorialClinico] CHECK CONSTRAINT [FK_HistorialClinico_ConsultaMedica]
GO
ALTER TABLE [dbo].[HistorialClinico]  WITH CHECK ADD  CONSTRAINT [FK_HistorialClinico_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[HistorialClinico] CHECK CONSTRAINT [FK_HistorialClinico_Paciente]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Especialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[Especialidad] ([IdEspecialidad])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Especialidad]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_TipoDocumento] FOREIGN KEY([IdTDocumento])
REFERENCES [dbo].[TipoDocumento] ([IdTDocumento])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_TipoDocumento]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Ubigeo] FOREIGN KEY([IdUbigeo])
REFERENCES [dbo].[Ubigeo] ([IdUbigeo])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Ubigeo]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([IdPaciente])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Paciente]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_TipoDocumento] FOREIGN KEY([IdTDocumento])
REFERENCES [dbo].[TipoDocumento] ([IdTDocumento])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_TipoDocumento]
GO
/****** Object:  StoredProcedure [dbo].[pa_consultaConsultorio]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultaConsultorio]
@NroConsultorio varchar 
as 
select * from Consultorio
where NroConsultorio = @NroConsultorio
GO
/****** Object:  StoredProcedure [dbo].[pa_consultaEnfermedad]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_consultaEnfermedad]
@nombre varchar 
as 
select * from Enfermedad
where Nombre = @nombre
GO
/****** Object:  StoredProcedure [dbo].[pa_consultaEspecialidad]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_consultaEspecialidad]
@NombreEspecialidad varchar 
as 
select * from Especialidad
where NombreEspecialidad = @NombreEspecialidad
GO
/****** Object:  StoredProcedure [dbo].[pa_consultaMedicina]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultaMedicina]
@nombre varchar 
as 
select * from Medicina
where Nombre = @nombre
GO
/****** Object:  StoredProcedure [dbo].[pa_consultaMedico]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultaMedico]
@nombre varchar 
as 
select * from Medico
where Nombre = @nombre
GO
/****** Object:  StoredProcedure [dbo].[pa_consultaPaciente]    Script Date: 30/10/2018 18:54:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultaPaciente]
@nombre varchar 
as 
select * from Paciente
where Nombre = @nombre
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de almacen medicina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlmacenMedicina', @level2type=N'COLUMN',@level2name=N'IdMedicina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos del medicamento solicitado al almacén ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlmacenMedicina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador del calendario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calendario', @level2type=N'COLUMN',@level2name=N'IdCita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra se registra la disponibilidad de las citas nuevas y programadas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calendario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de la cita' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CitaMedica', @level2type=N'COLUMN',@level2name=N'IdCita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de la cita para el paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CitaMedica', @level2type=N'COLUMN',@level2name=N'FechaCita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador del paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CitaMedica', @level2type=N'COLUMN',@level2name=N'IdPaciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CitaMedica', @level2type=N'COLUMN',@level2name=N'IdMedico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de consultorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CitaMedica', @level2type=N'COLUMN',@level2name=N'IdConsultorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado del resgistro. Valores permitidos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CitaMedica', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra detalles de la cita medica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CitaMedica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identicador consulta medica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConsultaMedica', @level2type=N'COLUMN',@level2name=N'IdConsultaMedica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador de la cita' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConsultaMedica', @level2type=N'COLUMN',@level2name=N'IdCita'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador de la enfermedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConsultaMedica', @level2type=N'COLUMN',@level2name=N'IdEnfermedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'resultado de analisis para el paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConsultaMedica', @level2type=N'COLUMN',@level2name=N'Diagnostico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador de la medicina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConsultaMedica', @level2type=N'COLUMN',@level2name=N'IdMedicina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado de la consultamedica.Valores permitodos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConsultaMedica', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra todos los datos referentes a la
consulta medica
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConsultaMedica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador consultorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Consultorio', @level2type=N'COLUMN',@level2name=N'IdConsultorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero de consultorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Consultorio', @level2type=N'COLUMN',@level2name=N'NroConsultorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'descripcion consultorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Consultorio', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del registro .Valores Permitidos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Consultorio', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra registrada los datos de los
Consultorios
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Consultorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador de la enfermedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enfermedad', @level2type=N'COLUMN',@level2name=N'IdEnfermedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre de la enfermedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enfermedad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado del registrovalores del permitido.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enfermedad', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos de enfermedades documentada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enfermedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador  de la especialidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Especialidad', @level2type=N'COLUMN',@level2name=N'IdEspecialidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la especialidad ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Especialidad', @level2type=N'COLUMN',@level2name=N'NombreEspecialidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'descripcion de la especialidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Especialidad', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del resgistro .Valores permitidos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Especialidad', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra se registra las especialidades de la clínica y su descripción. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Especialidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador de historia clinica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialClinico', @level2type=N'COLUMN',@level2name=N'IdHistorialClinico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero de historia clinica ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialClinico', @level2type=N'COLUMN',@level2name=N'NroHistoriaClinico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador del paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialClinico', @level2type=N'COLUMN',@level2name=N'IdPaciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador consulta medica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialClinico', @level2type=N'COLUMN',@level2name=N'IdConsultaMedica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del registro.Valores permitodos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialClinico', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos del historial clínico del' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialClinico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idetntificador medicina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina', @level2type=N'COLUMN',@level2name=N'IdMedicina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre de la medicina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'marca de la medicina ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina', @level2type=N'COLUMN',@level2name=N'Marca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'agente principal de la medicina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina', @level2type=N'COLUMN',@level2name=N'AgentePrincipal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'agente secundario de la medicina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina', @level2type=N'COLUMN',@level2name=N'AgenteSecundario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de caducidad de la medicina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina', @level2type=N'COLUMN',@level2name=N'FechaCaducidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado del registro.Valores permitodos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos de los medicamentos  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medicina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador del Medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'IdMedico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del medico ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primer apellido del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'ApPaterno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Segundo apellido del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'ApMaterno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero del colegiado del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'NroColegiado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cargo que ocupa en la clinica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'Cargo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id de la especialidad ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'IdEspecialidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'telefono del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexo del Medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'Sexo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'direccion del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del ubigeo ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'IdUbigeo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del tipo de documento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'IdTDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'numero de documento de identidad del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'NroDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del registro.Valores permitidos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del paciente  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'IdPaciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del paciente
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primer apellido del paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'ApPaterno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Segundo apellido del paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'ApMaterno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de nacimiento del paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'FechaNacimento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Edad del paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'Edad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexo del paciente.Valores permitidos M | F' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'Sexo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefono del cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Direccion del cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id del tipo de documento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'IdTDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero del tipo del documento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'NroDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del paciente .Valores Permitidos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos del Paciente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Paciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador consulta medica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecetaMedico', @level2type=N'COLUMN',@level2name=N'IdConsultaMedica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos de la receta dada por
el especialista medico después de la consulta
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecetaMedico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador tipo documento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoDocumento', @level2type=N'COLUMN',@level2name=N'IdTDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos de los tipos de documentos señalados por SUNAT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id del ubigeo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ubigeo', @level2type=N'COLUMN',@level2name=N'IdUbigeo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre del departamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ubigeo', @level2type=N'COLUMN',@level2name=N'Nom_Departamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre de la provincia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ubigeo', @level2type=N'COLUMN',@level2name=N'Nom_Provincia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre del distrito' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ubigeo', @level2type=N'COLUMN',@level2name=N'Nom_Distrito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra los datos de ubigeo (Código de Ubicación Geográfica) señalados por INEI 
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ubigeo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'idUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contraseña' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'UserPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del registro.Valores permitodos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se encuentra registrada los datos de los usuarios del sistema ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario'
GO
USE [master]
GO
ALTER DATABASE [SIE] SET  READ_WRITE 
GO
