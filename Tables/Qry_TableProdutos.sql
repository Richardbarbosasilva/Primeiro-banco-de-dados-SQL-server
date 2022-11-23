USE [Logistica]
GO

/****** Object:  Table [dbo].[TableProdutos]    Script Date: 22/11/2022 05:55:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableProdutos](
	[CodigoDoProduto] [int] NOT NULL,
	[NomeDoProduto] [varchar](50) NOT NULL,
	[CodigoDoFornecedor] [int] NOT NULL,
	[CodigoDaCategoria] [int] NOT NULL,
	[QuantidadePorUnidade] [char](30) NULL,
	[PrecoUnitario] [money] NULL,
	[UnidadesEmEstoque] [int] NULL,
	[UnidadesPedidas] [int] NULL,
	[NivelDeReposicao] [int] NULL,
	[Descontinuado] [int] NULL,
 CONSTRAINT [PK_TableProdutos] PRIMARY KEY CLUSTERED 
(
	[CodigoDoProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TableProdutos]  WITH CHECK ADD  CONSTRAINT [FK_TableProdutos_TableCategoria] FOREIGN KEY([CodigoDaCategoria])
REFERENCES [dbo].[TableCategoria] ([CodigoDaCategoria])
GO

ALTER TABLE [dbo].[TableProdutos] CHECK CONSTRAINT [FK_TableProdutos_TableCategoria]
GO

ALTER TABLE [dbo].[TableProdutos]  WITH CHECK ADD  CONSTRAINT [FK_TableProdutos_TableFornecedores] FOREIGN KEY([CodigoDoFornecedor])
REFERENCES [dbo].[TableFornecedores] ([CodigoDoFornecedor])
GO

ALTER TABLE [dbo].[TableProdutos] CHECK CONSTRAINT [FK_TableProdutos_TableFornecedores]
GO

