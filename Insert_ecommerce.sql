-- select * From cliente;
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Gabrielly Silva Castro', '47305762849', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Marcos Pereira Correia', '39622405274', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Carolina Fernandes Rocha', '91530941765', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Marina Azevedo Martins', '68126494069', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Estevan Oliveira Gomes', '27759642000154', 'PJ');

-- select * from statuspedido;
INSERT INTO StatusPedido (Identificacao) VALUES ('ABERTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM PAUSA');
INSERT INTO StatusPedido (Identificacao) VALUES ('CONCLUIDO');
-- select * from TipoPagamento;
INSERT INTO TipoPagamento (Identificacao) VALUES ('Debito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Boleto');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Credito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('PIX');


-- select * from statusEntrega;
INSERT INTO StatusEntrega (Identificacao) VALUES ('Entregue');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Cancelado');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Retirado pela transportadora');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Aguardando separação');

-- select * from enderecoEntrega;
-- desc enderecoentrega;
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (1, '1000', '34517200', 'Rua Águas de São Pedro', '1', NULL);
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (2, '1001', '24761710', 'Rua Cláudio Bismara ', '521', NULL);
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (3, '1002', '78917045', 'Praça Guilherme Aralhe', '10', NULL);
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (4, '1003', '57518781', 'Rua Rufina Garcia Soares ', '51', NULL);

-- select * From estoque;
INSERT INTO Estoque (Identificacao,Quantidade) VALUES ('Setor Oeste',5410);
INSERT INTO Estoque (Identificacao,Quantidade) VALUES ('Setor Campinas',4718);
INSERT INTO Estoque (Identificacao,Quantidade) VALUES ('Setor Central',300);
INSERT INTO Estoque (Identificacao,Quantidade) VALUES ('Regiao Noroeste', 147);
INSERT INTO Estoque (Identificacao,Quantidade) VALUES ('Setor Sorocaba',740);

-- select * From vendedorTerceiro;
-- desc vendedorTerceiro;
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Kabum', '00014587942');
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Terabyte', '00045187942');

-- select * From Fornecedor;
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Logitech', '24531764810246');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Hyperx', '14802315548791');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Reddragon', '10214556789413');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Acer', '1021455674748');

-- Select * from Categoria ;
INSERT INTO Categoria (Identificacao) VALUES ('Perifercos'); -- 1
INSERT INTO Categoria (Identificacao) VALUES ('TV'); -- 2

-- select * from produto;
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (2, 'Monitor', 'Monitor 21 poleagada 60hz', 500.00);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'Teclado', 'Teclado HyperX PRO', 200.00);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'Headset', 'Headset HyperX Cloud', 199.99);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'MousePad', 'MousePad Speed Grande', 50.00);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'Mouse', 'Mouse Logitech G PRO', 650.00);

-- select * from ProdutoFornecedor;
-- select * from produto;
-- Select * from fornecedor;

INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (1, 2);
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (2, 3);
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (3, 1);

-- select * from ProdutoVendedorTerceiro;
-- select * from produto;
-- select * from vendedorTerceiro;

INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (1, 1);
INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (2, 2);

-- select * from produtoEstoque;
-- select * from produto;
-- select * From estoque;
INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (1, 1, 10);
INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (3, 2, 15);

-- desc pedido;
-- select * from pedido;
-- select * from EnderecoEntrega;
-- select * from cliente;
-- select * from statusPedido;
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(1, 2, 1, '1000', '2022-09-20', 0, 650, 650);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(2, 3, 2, '1001', '2022-09-21', 10, 300, 310);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(3, 4, 3, '1002', '2022-09-19', 10, 55, 65);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(4, 2, 4, '1003', '2022-09-18', 5, 50, 55);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(4, 2, 5, '1004', '2022-09-18', 7, 80, 87);
                 
-- desc pedidoproduto;
-- select * From pedidoproduto;
-- select * From pedido;
-- select * from produto;
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (1, 2);
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (3, 3);
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (4, 5);

-- select * from TipoPagamentoPedido;
-- select * from Pedido;
-- select * from tipopagamento;
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (1, 1, 650);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (3, 2, 310);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (4, 3, 55);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (5, 4, 65);