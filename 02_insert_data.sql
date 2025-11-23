---INSERIR VALORES NAS TABELAS--
---TABELA CLIENTE--
INSERT INTO cliente(nome,telefone,endereco)
VALUES
('Matheus Rodrigues','21 93245-4321','Rua coronel felix,23,Deodoro RJ'),
('Ana Maria','21 93465-8976','Rua Martins almeida,32,Bangu RJ'),
('Jhonatan Ferreira','11 93234-5677','Rua jatobá,2,Catarina SP'),
('Yuri Alberto','11 93432-1129','Rua josé bonifacil,1,barueri SP');
SELECT * FROM cliente; 

---TABELA FORNECEDOR---
INSERT INTO fornecedor(nome,cnpj,tipo_insumo,contato)
VALUES
('AuroraCoop','12.345.678/0001-90','Laticínios','contato@auroracoop.com'),
('EmbalaMais','45.987.321/0001-55','Embalagens','11 99888-3344'),
('HigienePotencia','87.654.321/0001-22','Produtos de limpeza','31 98877-6600'),
('Mão na Massa','30.111.222/0001-09','Farinha de trigo','21 99222-7744');
SELECT * FROM fornecedor;

---TABELA FUNCIONÁRIO---
INSERT INTO funcionario(nome,cpf,telefone,funcao)
VALUES
('Carlos','199.231.234-32','21 93421-3421','Padeiro'),
('Andressa','200.321.575-32','11 39453-2934','Balconista'),
('Pedro','233.423.214-56','21 93295-3453','Repositor'),
('Luiz','312.234.215-62','2193432-3424','Conferente');
SELECT * FROM funcionario;

---TABELA ITEMPEDIDO---
INSERT INTO itempedido(quantidade,preco_unitario,id_pedido,id_produto)
VALUES
(3,4.50,4,1),
(4,25.00,3,2),
(9,3.00,2,4),
(10,4.00,1,3);
SELECT * FROM itempedido;

---TABELA PAGAMENTO---
INSERT INTO pagamento(forma_pagamento,valor,id_pedido)
VALUES
('Dinheiro',30.00,1),
('Pix',50.40,2),
('Cartão de crédito',120.32,3),
('Cartão de Débito',56.32,4);
SELECT *FROM pagamento;

---TABELA PEDIDO---
INSERT INTO pedido(data,horario,status,id_cliente,id_funcionario)
VALUES
('2025-11-10','13:30','Concluído',39,1),
('2025-11-9','10:23','Concluído',40,2),
('2025-11-12','9:40','Cancelado',41,3),
('2025-11-23','19:32','Em andamento',42,4);
SELECT *FROM pedido;

---TABELA PRODUTO---
INSERT INTO produto(nome,categoria,preco,disponibilidade,id_fornecedor)
VALUES
('Farinha de trigo','Ingredientes',4.50,'Disponível',4),
('Detergente','Limpeza',25.00,'Disponível',3),
('Copo Descartável','Embalagens',3.00,'Disponível',2),
('Queijo Mussarela','Laticínios',4.00,'Indisponível',1);
SELECT *FROM produto;