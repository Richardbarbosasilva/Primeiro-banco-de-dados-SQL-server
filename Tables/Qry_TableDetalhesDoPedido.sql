USE [Logistica]
GO

/****** Object:  Table [dbo].[TableDetalhesDoPedido]    Script Date: 22/11/2022 05:50:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableDetalhesDoPedido](
	[NumeroDoPedido] [int] NOT NULL,
	[CodigoDoProduto] [int] NOT NULL,
	[PrecoUnitario] [money] NULL,
	[Quantidade] [int] NULL,
	[Desconto] [float] NULL,
 CONSTRAINT [PK_TableDetalhesDoPedido] PRIMARY KEY CLUSTERED 
(
	[NumeroDoPedido] ASC,
	[CodigoDoProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TableDetalhesDoPedido]  WITH CHECK ADD  CONSTRAINT [FK_TableDetalhesDoPedido_TablePedidos] FOREIGN KEY([NumeroDoPedido])
REFERENCES [dbo].[TablePedidos] ([NumeroDoPedido])
GO

ALTER TABLE [dbo].[TableDetalhesDoPedido] CHECK CONSTRAINT [FK_TableDetalhesDoPedido_TablePedidos]
GO

ALTER TABLE [dbo].[TableDetalhesDoPedido]  WITH CHECK ADD  CONSTRAINT [FK_TableDetalhesDoPedido_TableProdutos] FOREIGN KEY([CodigoDoProduto])
REFERENCES [dbo].[TableProdutos] ([CodigoDoProduto])
GO

ALTER TABLE [dbo].[TableDetalhesDoPedido] CHECK CONSTRAINT [FK_TableDetalhesDoPedido_TableProdutos]
GO

