--INSERT INTO Categorias (Id,NomeCategoria, Descricao, Ativo) VALUES(NEWID(), 'DVD CD BLUERAY','MIDIAS DIGITAIS', 'TRUE');
--INSERT INTO Categorias (Id,NomeCategoria, Descricao, Ativo) VALUES(NEWID(), 'PAPELARIA & INSUMOS ESTCRITORIO','MATERIAL ESCOLAR E ESCRITORIOS', 'TRUE');
--INSERT INTO Categorias (Id,NomeCategoria, Descricao, Ativo) VALUES(NEWID(), 'SMARTPHONES E ACESSORIOS', 'DISPOSITIVOS CELULAR E ACESSORIOS', 'TRUE');
SELECT * FROM Categorias;

/*
INSERT INTO Produtos(Id,CodigoBarras,NomeProduto, DescricaoProduto, Ativo, Valor, FKCategoriaId) 
VALUES(NEWID(), '7897013523694', 'DVD VIRGEM ELGIN', 'DVD-R VIRGEM ELGIN', 'true', 6,'F11B447E-1A48-48B3-890D-28C56C149703');
*/
SELECT * FROM Produtos;

/*
INSERT INTO Produtos(Id,CodigoBarras, Descricao, Ativo, Valor, FKCategoriaId, FKEstoqueId) 
VALUES(NEWID(), '7892922100163', 'DVD VIRGEM ELL', 'DVD-R VIRGEM ELL', 'true', '', '');
SELECT * FROM Produtos;
*/
INSERT INTO Estoques(Id,  Ativo, Quantidade, FKProdutoId) VALUES
(NEWID(), 'TRUE', 3000, '433AE367-30EB-4733-8BAE-2ECE9EAC5CF1' )
SELECT * FROM Estoques;
