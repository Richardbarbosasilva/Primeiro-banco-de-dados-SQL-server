USE [Logistica]
GO

/****** Object:  Table [dbo].[TableCategoria]    Script Date: 22/11/2022 05:50:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableCategoria](
	[CodigoDaCategoria] [int] NOT NULL,
	[NomeDaCategoria] [varchar](30) NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PK_TableCategoria] PRIMARY KEY CLUSTERED 
(
	[CodigoDaCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


