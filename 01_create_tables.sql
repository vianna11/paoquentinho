BEGIN TRANSACTION;

--TABELA CLIENTE--

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome  TEXT NOT NULL,
    telefone  TEXT(15),
    endereco  TEXT(60)
);
--TABELA FORNECEDOR--

CREATE TABLE fornecedor (
    id_fornecedor INTEGER PRIMARY KEY,
    nome TEXT(30) NOT NULL,
    cnpj TEXT(14) NOT NULL,
    tipo_insumo TEXT(14),
    contato TEXT(30)
);
--TABELA FUNCIONARIO--

CREATE TABLE funcionario (
    id_funcionario INTEGER PRIMARY KEY,
    nome TEXT(30) NOT NULL,
    cpf TEXT(11) NOT NULL,
    telefone TEXT(12),
    funcao TEXT(10)
);
--TABELA ITEMPEDIDO--

Create table itempedido(
id_itempedido INTEGER PRIMARY KEY,
quantidade INTEGER,
preco_unitario TEXT(10),

id_pedido INTEGER,
id_produto INTEGER,

FOREING KEY (id_pedido) REFERENCES pedido(id_pedido),
FOREING KEY (id_produto) REFERENCES produto(id_produto)
);
--TABELA PAGAMENTO--

CREATE TABLE pagamento(
    id_pagamento INTEGER PRIMARY KEY,
    forma_pagamento TEXT(10) NOT NULL,
    valor DECIMAL,

    id_pedido INTEGER,

    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);
--TABELA PEDIDO--

Create table pedido(
id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
data  DATE,
horario TIME,
status  TEXT(10) NOT NULL,

id_cliente INTEGER,
id_funcionario INTEGER,

FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);
--TABELA PRODUTO--

Create table produto(
id_produto INTEGER PRIMARY KEY,
nome TEXT(50) NOT NULL,
categoria TEXT(20),
preco TEXT(20),
disponibilidade TEXT(20),

id_fornecedor INTEGER,

FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);