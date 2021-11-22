CREATE TABLE [dbo].[Categorias] (
    [Id]            UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    [Codigo]        INT              IDENTITY (1, 1) NOT NULL,
    [NomeCategoria] NVARCHAR (100)   NOT NULL,
    [Descricao]     NVARCHAR (1000)  NULL,
    [Ativo]         BIT              NOT NULL,
    CONSTRAINT [PK_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([NomeCategoria] ASC),
    UNIQUE NONCLUSTERED ([Codigo] ASC)
);

