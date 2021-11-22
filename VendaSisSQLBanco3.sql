
CREATE TABLE [dbo].[Categorias] (
    [Id]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    --[Codigo]        INT              IDENTITY (1, 1) NOT NULL,
    [NomeCategoria] NVARCHAR (110)   NOT NULL,
    [Descricao]     NVARCHAR (1000)  NULL,
    [Ativo]         BIT              NOT NULL,
    CONSTRAINT [PK_dbo.Categorias] PRIMARY KEY CLUSTERED ([Id] ASC),
    --UNIQUE NONCLUSTERED ([Codigo] ASC),
    --UNIQUE NONCLUSTERED ([NomeCategoria] ASC)
);

---------------------------------------------------------
CREATE TABLE [dbo].[Categorias] (
    [Id]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    --[Codigo]        INT              IDENTITY (1, 1) NOT NULL,
    [NomeCategoria] NVARCHAR (110)   NOT NULL,
    [Descricao]     NVARCHAR (1000)  NULL,
    [Ativo]         BIT              NOT NULL,
    CONSTRAINT [PK_dbo.Categorias] PRIMARY KEY CLUSTERED ([Id] ASC),
    --UNIQUE NONCLUSTERED ([Codigo] ASC),
    --UNIQUE NONCLUSTERED ([NomeCategoria] ASC)
);

-----------------------------------------------------------------------------------------------------------------------------------
insert into Categorias(NomeCategoria, Descricao, Ativo) values ('Smartphones e Acessórios','Dispositivos moveis e Acessórios', 1);
 select * from dbo.Categorias;

select * from produtos;
--INSERT INTO Produtos(CodigoBarras, NomeProduto, DescricaoProduto, Ativo, valor, FKCategoriaId,QuantidadeEstoque)
--values ('9632587412369', 'tyuityuityu', 'sdsdfsd',1, 10, 1, 200);

-----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[Produtos] (
    [Id]                UNIQUEIDENTIFIER default NEWID() NOT NULL,
    [CodigoBarras]      NVARCHAR (20)    NOT NULL,
    [NomeProduto]       NVARCHAR (100)   NULL,
    [DescricaoProduto]  NVARCHAR (1000)  NULL,
    [Ativo]             BIT              NOT NULL,
    [Valor]             DECIMAL (18)     NOT NULL,
    [FKCategoriaId]     UNIQUEIDENTIFIER NULL,
    [QuantidadeEstoque] INT              NULL,
    CONSTRAINT [PK_CodigoBarras] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeProduto] ASC),
    UNIQUE NONCLUSTERED ([CodigoBarras] ASC)
);
--------------------------------------------------------------------------------------------------------------------------------------

GO
CREATE NONCLUSTERED INDEX [FKProdutoId]
    ON [dbo].[Produtos]([Id] ASC);



CREATE TABLE [dbo].[Produtos] (
    [Id]                UNIQUEIDENTIFIER default NEWID() NOT NULL,
    [CodigoBarras]      NVARCHAR (20)    NOT NULL,
    [NomeProduto]       NVARCHAR (100)   NULL,
    [DescricaoProduto]  NVARCHAR (1000)  NULL,
    [Ativo]             BIT              NOT NULL,
    [Valor]             DECIMAL (18)     NOT NULL,
    [FKCategoriaId]     UNIQUEIDENTIFIER NULL,
    [QuantidadeEstoque] INT              NULL,
    CONSTRAINT [PK_CodigoBarras] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeProduto] ASC),
    UNIQUE NONCLUSTERED ([CodigoBarras] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FKProdutoId]
    ON [dbo].[Produtos]([Id] ASC);



CREATE TABLE [dbo].[Categorias] (
    [Id]            UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL ,
    [Codigo]        INT              IDENTITY (1, 1) NOT NULL,
    [NomeCategoria] NVARCHAR (110)   NOT NULL,
    [Descricao]     NVARCHAR (1000)  NULL,
    [Ativo]         BIT              NOT NULL,
    CONSTRAINT [PK_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeCategoria] ASC),
    UNIQUE NONCLUSTERED ([Codigo] ASC)
);


CREATE TABLE [dbo].[Produtos] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [CodigoBarras]      NVARCHAR (20)    NOT NULL,
    [NomeProduto]       NVARCHAR (100)   NULL,
    [DescricaoProduto]  NVARCHAR (1000)  NULL,
    [Ativo]             BIT              NOT NULL,
    [Valor]             DECIMAL (18)     NOT NULL,
    [FKCategoriaId]     UNIQUEIDENTIFIER NULL,
    [QuantidadeEstoque] INT              NULL,
    CONSTRAINT [PK_CodigoBarras] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeProduto] ASC),
    UNIQUE NONCLUSTERED ([CodigoBarras] ASC)
);


GO
CREATE NONCLUSTERED INDEX [FKProdutoId]
    ON [dbo].[Produtos]([Id] ASC); -- Criando INDEX



/*
CREATE TABLE [dbo].[Endereco] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [FKClienteId] UNIQUEIDENTIFIER NULL,
    [Rua]         NVARCHAR (100)   NOT NULL,
    [Numero]      INT              NOT NULL,
    [Bairro]      NVARCHAR (100)   NOT NULL,
    [Estado]      NVARCHAR (2)     NOT NULL,
    [Complemento] NVARCHAR (200)   NOT NULL,
    CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Cliente_Id] FOREIGN KEY ([FKClienteId]) REFERENCES [dbo].[Cliente] ([Id])
);


CREATE TABLE [dbo].[Produtos] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [CodigoBarras]      NVARCHAR (20)    NOT NULL,
    [NomeProduto]       NVARCHAR (100)   NULL,
    [DescricaoProduto]  NVARCHAR (1000)  NULL,
    [Ativo]             BIT              NOT NULL,
    [Valor]             DECIMAL (18)     NOT NULL,
    [FKCategoriaId]     UNIQUEIDENTIFIER NULL,
    [QuantidadeEstoque] INT              NULL,
    UNIQUE NONCLUSTERED ([NomeProduto] ASC),
    UNIQUE NONCLUSTERED ([CodigoBarras] ASC),
    CONSTRAINT [PK_CodigoBarras] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Categoria_Id] FOREIGN KEY ([FKCategoriaId]) REFERENCES [dbo].[Categorias] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [FKProdutoId]
    ON [dbo].[Produtos]([Id] ASC);




/*
CREATE TABLE [dbo].[Categorias] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Codigo]        INT              IDENTITY (1, 1) NOT NULL,
    [NomeCategoria] NVARCHAR (100)   NOT NULL,
    [Descricao]     NVARCHAR (1000)  NULL,
    [Ativo]         BIT              NOT NULL,
    CONSTRAINT [PK_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeCategoria] ASC),
    UNIQUE NONCLUSTERED ([Codigo] ASC)
);



*/
/*
CREATE TABLE [dbo].[Cliente] (
    [Id]     UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL,
    [Nome]   NVARCHAR (100)   NOT NULL,
    [Cpfcli] NVARCHAR (11)    NOT NULL,
    CONSTRAINT [CP_Cliente] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Cpfcli] ASC),
    UNIQUE NONCLUSTERED ([Id] ASC)
);

*/

/*
CREATE TABLE [dbo].[Produtos] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [CodigoBarras]      NVARCHAR (20)    NOT NULL,
    [NomeProduto]       NVARCHAR (100)   NULL,
    [DescricaoProduto]  NVARCHAR (1000)  NULL,
    [Ativo]             BIT              NOT NULL,
    [Valor]             DECIMAL (18)     NOT NULL,
    [FKCategoriaId]     UNIQUEIDENTIFIER NULL,
    [QuantidadeEstoque] INT              NULL,
    CONSTRAINT [PK_CodigoBarras] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeProduto] ASC),
    UNIQUE NONCLUSTERED ([CodigoBarras] ASC),
    CONSTRAINT [FK_Categoria_Id] FOREIGN KEY ([FKCategoriaId]) REFERENCES [dbo].[Categorias] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [FKProdutoId]
    ON [dbo].[Produtos]([Id] ASC);


*/

/*
CREATE TABLE [dbo].[Categorias] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Codigo]        INT              IDENTITY (1, 1) NOT NULL,
    [NomeCategoria] NVARCHAR (100)   NOT NULL,
    [Descricao]     NVARCHAR (1000)  NULL,
    [Ativo]         BIT              NOT NULL,
    CONSTRAINT [PK_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeCategoria] ASC),
    UNIQUE NONCLUSTERED ([Codigo] ASC)
);

*/


-- ALTER TABLE [Produtos] ADD  QuantidadeEstoque INT;
-- ALTER TABLE [Produtos] DROP COLUMn [FKEstoqueId];
-- select * from Produtos;
-- ALTER TABLE nome_tabela DROP COLUMN nome_coluna;
/*

/*
CREATE TABLE [Categorias](
	[Id] uniqueidentifier NOT NULL,
	[Codigo] INT IDENTITY(1,1) UNIQUE,
	[NomeCategoria] NVARCHAR(100) NOT NULL UNIQUE,
	[Descricao] NVARCHAR(1000),
	[Ativo] BIT NOT NULL 
	
	CONSTRAINT [PK_Id] PRIMARY KEY([Id])

);
GO
*/


/*
CREATE TABLE [Estoques](
	[Id] uniqueidentifier NOT NULL,
	[Ativo] BIT NOT NULL,
	[Quantidade] int,
	[FKProdutoId] UNIQUEIDENTIFIER NULL

	CONSTRAINT [PK_Estoque] PRIMARY KEY([Id])
);
GO
CREATE NONCLUSTERED INDEX [FKProdutoId] ON [Produtos]([Id]);


*/

/*

CREATE TABLE [Produtos](
	[Id] uniqueidentifier NOT NULL,
	[CodigoBarras] NVARCHAR(20) NOT NULL UNIQUE, --UNIQUE NÃO DEIXA REPETIR O DADO NA TABELA, POIS TORNA DADO UNICO
	[NomeProduto] NVARCHAR(100) UNIQUE,
	[DescricaoProduto] NVARCHAR(1000),
	[Ativo] BIT NOT NULL,
	[Valor] DECIMAL NOT NULL,
	[FKCategoriaId] UNIQUEIDENTIFIER NULL,
	[FKEstoqueId] UNIQUEIDENTIFIER  NULL

	CONSTRAINT [PK_CodigoBarras] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_Categoria_Id] FOREIGN KEY([FKCategoriaId]) REFERENCES [Categorias] ([Id]),
	CONSTRAINT [FK_Estoque_Id] FOREIGN KEY([FKEstoqueId]) REFERENCES [Estoques] ([Id])

);

CREATE NONCLUSTERED INDEX [FKCategoriaId] ON [Produtos]([FKCategoriaId]);
CREATE NONCLUSTERED INDEX [FKEstoqueId] ON [Estoques]([FKEstoqueId]);
GO

*/